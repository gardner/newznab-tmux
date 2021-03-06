<?php

require_once dirname(__DIR__, 3).DIRECTORY_SEPARATOR.'bootstrap/autoload.php';

use Blacklight\ConsoleTools;
use Blacklight\NZB;
use Illuminate\Support\Facades\DB;

if (! isset($argv[1]) || ! isset($argv[2])) {
    exit("ERROR: You must supply the level you want to reorganize it to, and the source directory  (You would use: 3 .../newznab/resources/nzb/ to move it to 3 levels deep)\n");
}

$pdo = DB::connection()->getPdo();
$nzb = new NZB();
$consoleTools = new ConsoleTools();

$newLevel = $argv[1];
$sourcePath = $argv[2];
$objects = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($sourcePath));

$filestoprocess = [];
$iFilesProcessed = $iFilesCounted = 0;
$time = time();

echo "\nReorganizing files to Level $newLevel from: $sourcePath This could take a while...\n";
//$consoleTools = new \ConsoleTools();
foreach ($objects as $filestoprocess => $nzbFile) {
    if ($nzbFile->getExtension() != 'gz') {
        continue;
    }

    $newFileName = $nzb->getNZBPath(
        str_replace('.nzb.gz', '', $nzbFile->getBasename()),
                                    $newLevel,
                                    true
    );
    if ($newFileName != $nzbFile) {
        rename($nzbFile, $newFileName);
        chmod($newFileName, 0777);
    }
    $iFilesProcessed++;
    if ($iFilesProcessed % 100 == 0) {
        $consoleTools->overWrite("Reorganized $iFilesProcessed");
    }
}

$pdo->exec(sprintf("UPDATE settings SET value = %s WHERE setting = 'nzbsplitlevel'", $argv[1]));
$consoleTools->overWrite("Processed $iFilesProcessed nzbs in ".relativeTime($time)."\n");

function relativeTime($_time)
{
    $d = [];
    $d[0] = [1, 'sec'];
    $d[1] = [60, 'min'];
    $d[2] = [3600, 'hr'];
    $d[3] = [86400, 'day'];
    $d[4] = [31104000, 'yr'];

    $w = [];

    $return = '';
    $now = time();
    $diff = ($now - $_time);
    $secondsLeft = $diff;

    for ($i = 4; $i > -1; $i--) {
        $w[$i] = (int) ($secondsLeft / $d[$i][0]);
        $secondsLeft -= ($w[$i] * $d[$i][0]);
        if ($w[$i] != 0) {
            $return .= $w[$i].' '.$d[$i][1].(($w[$i] > 1) ? 's' : '').' ';
        }
    }

    return $return;
}
