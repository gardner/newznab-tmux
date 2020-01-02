<?php

namespace App\Console\Commands;

use App\Models\Settings;
use App\Models\UsenetGroup;
use Blacklight\SphinxSearch;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class NntmuxResetDb extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'nntmux:resetdb';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command will reset your database to blank state (will retain settings)';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @throws \Exception
     */
    public function handle()
    {
        if ($this->confirm('This script removes all releases, nzb files, samples, previews , nfos, truncates all article tables and resets all groups. Are you sure you want reset the DB?')) {
            $timestart = now();

            DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

            UsenetGroup::query()->update([
                'first_record' => 0,
                'first_record_postdate' => null,
                'last_record' => 0,
                'last_record_postdate' => null,
                'last_updated' => null,
            ]);
            $this->info('Reseting all groups completed.');

            $arr = [
                'videos',
                'tv_episodes',
                'tv_info',
                'release_nfos',
                'release_comments',
                'sharing',
                'sharing_sites',
                'users_releases',
                'user_movies',
                'user_series',
                'movieinfo',
                'musicinfo',
                'release_files',
                'audio_data',
                'release_subtitles',
                'video_data',
                'releaseextrafull',
                'releases',
                'anidb_titles',
                'anidb_info',
                'anidb_episodes',
                'releases_groups',
            ];
            foreach ($arr as &$value) {
                DB::statement("TRUNCATE TABLE $value");
                $this->info('Truncating '.$value.' completed.');
            }
            unset($value);
            $this->info('Truncating binaries, collections, missed_parts and parts tables...');
            DB::statement("CALL loop_cbpm('truncate')");
            $this->info('Truncating completed.');

            if (config('nntmux.elasticsearch_enabled') === true) {
                if (Elasticsearch::indices()->exists(['index' => 'releases'])) {
                    Elasticsearch::indices()->delete(['index' => 'releases']);
                }
                $releases_index = [
                    'index' => 'releases',
                    'type' => 'releases',
                    'body'  => [
                        'settings' => [
                            'number_of_shards' => 2,
                            'number_of_replicas' => 0,
                        ],
                    ],
                ];

                Elasticsearch::indices()->create($releases_index);

                if (Elasticsearch::indices()->exists(['index' => 'predb'])) {
                    Elasticsearch::indices()->delete(['index' => 'predb']);
                }
                $predb_index = [
                    'index' => 'predb',
                    'type' => 'predb',
                    'body'  => [
                        'settings' => [
                            'number_of_shards' => 2,
                            'number_of_replicas' => 0,
                        ],
                    ],
                ];

                Elasticsearch::indices()->create($predb_index);

                $this->info('All done! ElasticSearch indexes are deleted and recreated.');
            } else {
                (new SphinxSearch())->truncateRTIndex(['releases_rt', 'predb_rt']);
            }

            $this->info('Deleting nzbfiles subfolders.');
            $files = File::allFiles(Settings::settingValue('..nzbpath'));
            File::delete($files);

            $this->info('Deleting all images, previews and samples that still remain.');

            $files = File::allFiles(NN_COVERS);
            foreach ($files as $file) {
                if (basename($file) !== '.gitignore' && basename($file) !== 'no-cover.jpg' && basename($file) !== 'no-backdrop.jpg') {
                    File::delete($file);
                }
            }

            $this->info('Deleted all releases, images, previews and samples. This script finished '.now()->diffForHumans($timestart).' start');
            DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
        } else {
            $this->info('Script execution stopped');
        }
    }
}
