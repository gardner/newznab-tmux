DELETE FROM release_naming_regexes
WHERE id IN (1, 2);
DELETE FROM release_naming_regexes
WHERE id BETWEEN 8 AND 1129;
INSERT IGNORE INTO release_naming_regexes (id, group_regex, regex, status, description, ordinal)
VALUES (
  1,
  '^alt\\.binaries\\.teevee$',
  '/\\[\\d+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>.+\\.S\\d\\dE\\d\\d\\..+?) \\][- ]\\[\d+\\/\\d+\\][ -]{0,3}"[\\w\\säöüÄÖÜß+¤¶!.,&_()\\[\\]\\\'\\{}-]{8,}?\\b.?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  'rename these teevee releases as the requestid is for the full season ::: [169018]-[FULL]-[a.b.teevee]-[ House.of.Lies.S01E01.720p.WEB-DL.DD5.1.H.264-BS ]-[04/32] - "House.of.Lies.S01E01.The.Gods.of.Dangerous.Financial.Instruments.720p.WEB-DL.DD5.1.H.264-BS.part03.rar" yEnc',
  5
), (
  2,
  '^alt\\.binaries\\.teevee$',
  '/\\[\\d+\\]-\\[.+?\\]-\\[.+?\\]-\\[ .+\\.S\\d\\d\\..+? \\][- ]\\[\\d+\\/\\d+\\][ -]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_()\[\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  'Season only in 4th block so take filename ::: [169019]-[FULL]-[a.b.teevee]-[ House.of.Lies.S02.720p.WEB-DL.DD5.1.H.264-BS ]-[24/32] - "House.of.Lies.S02E02.When.Dinosaurs.Ruled.the.Planet.720p.WEB-DL.DD5.1.H.264-BS.vol000+01.par2" yEnc',
  10
), (
  8,
  '^alt\\.binaries\\.0day\\.stuffz$',
  '/^(?P<match0>[a-zA-Z0-9].+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//ArcSoft.TotalMedia.Theatre.v5.0.1.87-Lz0 - [08/35] - "ArcSoft.TotalMedia.Theatre.v5.0.1.87-Lz0.vol43+09.par2" yEnc',
  5
), (
  9,
  '^alt\\.binaries\\.0day\\.stuffz$',
  '/^(?P<match0>[a-zA-Z0-9].+?) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//rld-tcavu1 [5/6] - "rld-tcavu1.rar" yEnc',
  10
), (
  10,
  '^alt\\.binaries\\.0day\\.stuffz$',
  '/^\\((?P<match0>.+?)\\) \\[\\d+(\\/\\d+] - ").+?" yEnc$/',
  1,
  '//(DVD Shrink.ss) [1/1] - "DVD Shrink.ss.rar" yEnc',
  15
), (
  11,
  '^alt\\.binaries\\.0day\\.stuffz$',
  '/^(?P<match0>[a-zA-Z0-9].+?)\\(\\d+\\/\\d+\\) - ".+?" yEnc$/',
  1,
  '//WinASO.Registry.Optimizer.4.8.0.0(1/4) - "WinASO_RO_v4.8.0.rar" yEnc',
  20
), (
  12,
  '^alt\\.binaries\\.3d$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(084/113) "The Little Mermaid - 3D HSBS (1989) 1080p BluRay - Multi - P3n6u1n.part082.rar" - 10.56 GB - yEnc',
  5
), (
  13,
  '^alt\\.binaries\\.3d$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"pandas.3d.back.to.the.wild.h-sbs.fs-3d.r22" - 1.55 GB - yEnc',
  10
), (
  14,
  '^alt\\.binaries\\.amazing$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(???) [1/1] - "Asimov, Isaac - [Foundation 01] - De Foundation_v2.rar" yEnc',
  5
), (
  15,
  '^alt\\.binaries\\.amazing$',
  '/^\\([\\w!.,&_ \\()\\[\\]\\\'\\-]{8,}\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Ass Backwards (2013) WEBrip XviD AC3 (english subs)) [18/35] - "Ass Backwards (2013) WEBrip XviD AC3 (english subs).part17.rar" yEnc',
  10
), (
  16,
  '^alt\\.binaries\\.amazing$',
  '/^\\(Angels4Always\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Angels4Always) [1/1] - "Vermeulen, John - De tweelingparadox.rar" yEnc',
  15
), (
  17,
  '^alt\\.binaries\\.amazing$',
  '/^[\\w!.,&_ \\()\\[\\]\\\'\\-]{8,}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Heaven_en_Fayth Presenteren Diana Gabaldon - Reiziger Cyclus 01 - De Reiziger[0/3] - "Diana Gabaldon - Reiziger Cyclus 01 - De Reiziger.nzb" yEnc',
  20
), (
  18,
  '^alt\\.binaries\\.amazing$',
  '/^www\\.wolfsteamers\\.info[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//www.wolfsteamers.info [1/6] - "Wohnen Bauen Leben - Sommer 2014.par2" - 16,46 MB yEnc',
  25
), (
  19,
  '^alt\\.binaries\\.amazing$',
  '/^\\w+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//096XZFUPQ0PxH4441H14fU8V - [34/99] - "096XZFUPQ0PxH4441H14fU8V.part033.rar" yEnc',
  30
), (
  20,
  '^alt\\.binaries\\.amazing$',
  '/^\\w+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")\\d+(\\/\\d+)[-_\\s]{0,3}yEnc$/',
  1,
  '//05VANmA80DckBho "05VANmA80DckBho.part07.rar"08/94 yEnc',
  35
), (
  21,
  '^alt\\.binaries\\.amazing$',
  '/^\\(.+the-ultimate-force\\.org\\.ua\\/\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Slaapkop post voor http://the-ultimate-force.org.ua/) [0/7] - "Wham - I\'m Your Man (1985).nzb" yEnc',
  40
), (
  22,
  '^alt\\.binaries\\.amazing$',
  '/^\\(\\d+\\/\\d+\\) - P2H - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}\\w+[-_\\s]{0,3}yEnc$/',
  1,
  '//(001/101) - P2H - "L62WD8P4U539A7.par2" - 4,66 GB - Z9F6KN7SXRCY845 yEnc',
  45
), (
  23,
  '^alt\\.binaries\\.amazing$',
  '/^\\(\\d+\\/\\d+\\)([-_ ]{0,4}(Description|FTTEAM\\.INFO))?[-_ ]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(001/101)  "654258ItB1418pBRDNS264159.par2" - 9,74 GB - yEnc ::: //(001/105) - Description - "oH291TB0bPxf3lqm1P7QQ.par2" - 4,56 GB - yEnc ::: //(03/43) - FTTEAM.INFO - "JDSJ2J4ENASJCKR-FTTEAM.INFO.part02.rar" - 2,04 GB - yEnc',
  50
), (
  24,
  '^alt\\.binaries\\.amazing$',
  '/^[-_ .]{0,4}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- - [001/242] - "C65JuogI92CwfMo2TiX59.par2" yEnc',
  55
), (
  25,
  '^alt\\.binaries\\.amazing$',
  '/^[-_ .]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- "5nivJ7V6Q2jqAR34bZ8m.part46.rar" yEnc',
  60
), (
  26,
  '^alt\\.binaries\\.amazing$',
  '/^[-_ .]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- "7UAF6LE2PDM38NB.par2" - 8,53 GB - yEnc',
  65
), (
  27,
  '^alt\\.binaries\\.amazing$',
  '/^[-_ ]{0,4}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+" yEnc[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- [01/10] - "file.xyz" yEnc - [001/107] - "86u1Qr8mm56jGiW7nUPTM.par2" yEnc',
  70
), (
  28,
  '^alt\\.binaries\\.anime$',
  '/^\\((?P<match0>\\[.+?\\] .+?)\\) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//([AST] One Piece Episode 301-350 [720p]) [007/340] - "One Piece episode 301-350.part006.rar" yEnc',
  5
), (
  29,
  '^alt\\.binaries\\.anime$',
  '/^\\[.+?\\]\\[ (?P<match0>.+?) \\] \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[REPOST][ New Doraemon 2013.05.03 Episode 328 (TV Asahi) 1080i HDTV MPEG2 AAC-DoraClub.org ] [35/61] - "doraclub.org-doraemon-20130503-b8de1f8e.r32" yEnc',
  10
), (
  30,
  '^alt\\.binaries\\.anime$',
  '/^\\[.+?\\] (?P<match0>.+?) \\[[A-F0-9]+\\] \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[De.us] Suzumiya Haruhi no Shoushitsu (1920x1080 h.264 Dual-Audio FLAC 10-bit) [017CB24D] [000/357] - "[De.us] Suzumiya Haruhi no Shoushitsu (1920x1080 h.264 Dual-Audio FLAC 10-bit) [017CB24D].nzb" yEnc',
  15
), (
  31,
  '^alt\\.binaries\\.anime$',
  '/^\\[.+?\\] (?P<match0>.+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[eraser] Ghost in the Shell ARISE - border_1 Ghost Pain (BD 720p Hi444PP LC-AAC Stereo) - [01/65] - "[eraser] Ghost in the Shell ARISE - border_1 Ghost Pain (BD 720p Hi444PP LC-AAC Stereo) .md5" yEnc',
  20
), (
  32,
  '^alt\\.binaries\\.anime$',
  '/^\\(\\d+\\/\\d+\\) - (?P<match0>.+?) - ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(01/27) - Maid.Sama.Jap.dubbed.german.english.subbed - "01 Misaki ist eine Maid!.divx" - 6,44 GB - yEnc',
  25
), (
  33,
  '^alt\\.binaries\\.anime$',
  '/^\\[ (?P<match0>.+?) \\] \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[ New Doraemon 2013.06.14 Episode 334 (TV Asahi) 1080i HDTV MPEG2 AAC-DoraClub.org ] [01/60] - "doraclub.org-doraemon-20130614-fae28cec.nfo" yEnc',
  30
), (
  34,
  '^alt\\.binaries\\.anime$',
  '/^(?P<match0>.+? \\[Dual [aA]udio, EngSub\\] .+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Overman King Gainer [Dual audio, EngSub] Exiled Destiny - [002/149] - "Overman King Gainer.part001.rar" yEnc',
  35
), (
  35,
  '^alt\\.binaries\\.anime$',
  '/^.+?-\\[\\s*ANIME\\s*\\] \\[\\d+\\/\\d+\\] - "(?P<match0>.*)" - \\d+[,.]\\d+ [mMkKgG][bB][\\s]*yEnc$/',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ]-[ ANIME ] [3/5] - "[HorribleSubs] Ai-Mai-Mi - Mousou Catastrophie - 04 [480p].part2.rar" - 26,44 MB yEnc',
  40
), (
  36,
  '^alt\\.binaries\\.ath$',
  '/^\\[\\d+\\/\\d+ (?P<match0>[a-zA-Z0-9]+ .+?)\\..+?" yEnc$/',
  1,
  '//[3/3 Karel Gott - Die Biene Maja Original MP3 Karel Gott - Die Biene Maja Original MP3.mp3.vol0+1.PAR2" yEnc',
  5
), (
  37,
  '^alt\\.binaries\\.ath$',
  '/^(?P<match0>[a-f0-9]{32}) - \\(\\d+\\/\\d+\\) - "[a-f0-9]{32}\\..+" yEnc$/',
  1,
  '//8b33bf5960714efbe6cfcf13dd0f618f - (01/55) - "8b33bf5960714efbe6cfcf13dd0f618f.par2" yEnc',
  10
), (
  38,
  '^alt\\.binaries\\.ath$',
  '/^.+Usejunkies.tk.+ \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//::: Usejunkies.tk ::: - [01/11] - "DJ Shog - DNA - HD 720p.par2" - 47,76 MB yEnc',
  15
), (
  39,
  '^alt\\.binaries\\.ath$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\(\\[]\\d+\\/\\d+[\\)\\]]".+" yEnc$/',
  1,
  '//Uploader.Presents-Mutter.und.Sohn.German.2013.DVDRiP.x264-XFi[01/27]"xf-mutterusohn.nfo" yEnc',
  20
), (
  40,
  '^alt\\.binaries\\.ath$',
  '/^.+http:\\/\\/you-need-all\\.tk.+\\[\\d+\\/\\d+\\][\\s-_]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<->http://you-need-all.tk<-> - [28/32] - "Dirty Minded W',
  25
), (
  41,
  '^alt\\.binaries\\.ath$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+? yEnc$/',
  1,
  '//[02/21] - "Staendig Feucht.part01.rar" - 493.38 MB ....::::UR-powered by SecretUsenet.com::::.... yEnc',
  30
), (
  42,
  '^alt\\.binaries\\.ath$',
  '/^>+ .+?\\.info [<>+]+ .+?\\.com <+ "(?P<match0>.+?)\\s+- .*?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - .+? yEnc$/',
  1,
  '//>>> usenet4ever.info <<<+>>> secretusenet.com <<< "Weltnaturerbe USA Grand Canyon Nationalpark 2012 3D Blu-ray untouched  - DarKneSS.part039.rar" - DarKneSS yEnc',
  35
), (
  43,
  '^alt\\.binaries\\.ath$',
  '/^(?P<match0>[a-z]+) - \\[\\d+\\/\\d+\\] - "[a-z]+\\..+?" yEnc$/',
  1,
  '//nmlsrgnb - [04/37] - "htwlngmrstdsntdnh.part03.rar" yEnc',
  40
), (
  44,
  '^alt\\.binaries\\.ath$',
  '/^>+Hell-of-Usenet(\\.org)?>+( -)? \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( - \\d+[.,]\\d+ [kKmMgG][bB])? yEnc$/',
  1,
  '//>>>>>Hell-of-Usenet>>>>> - [01/33] - "Cassadaga Hier lebt der Teufel 2011 German AC3 DVDRip XViD iNTERNAL-VhV.par2" yEnc',
  45
), (
  45,
  '^alt\\.binaries\\.ath$',
  '/^(?P<match0>[a-z0-9]{10,}) \\(\\d+\\/\\d+\\) "[a-z0-9]{10,}\\..+?" yEnc$/',
  1,
  '//1dbo1u5ce6182436yb2eo (001/105) "1dbo1u5ce6182436yb2eo.par2" yEnc',
  50
), (
  46,
  '^alt\\.binaries\\.ath$',
  '/^<<<>>>kosova-shqip\\.eu<<< (?P<match0>.+?) >>>kosova-shqip.eu<<<<<< - \\(\\d+\\/\\d+\\) - ".+?" yEnc$/',
  1,
  '//<<<>>>kosova-shqip.eu<<< Deep SWG - 90s Club Megamix 2011 >>>kosova-shqip.eu<<<<<< - (2/4) - "Deep SWG - 90s Club Megamix 2011.rar" yEnc',
  55
), (
  47,
  '^alt\\.binaries\\.ath$',
  '/^<Have Fun> "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](?P<match1>proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") SpongeBoZZ yEnc$/',
  1,
  '//<Have Fun> "Invader.German.2012.PAL.DVDR-MORTAL.nfo" SpongeBoZZ yEnc',
  60
), (
  48,
  '^alt\\.binaries\\.ath$',
  '/^([a-zA-Z0-9].+?\\s{2,}|Old Dad uppt\\s+)(?P<match0>.+?) \\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Old Dad uppt Taffe Mädels XivD LD HDTV Rip oben Kleine Einblendug German 01/43] - "Taffe Mädels.par2" yEnc',
  65
), (
  49,
  '^alt\\.binaries\\.ath$',
  '/^\\(\\?+\\) (?P<match0>.+) .+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})" yEnc$/i',
  1,
  '//(????) Rom.S02E09.Deus.Impeditio.Esuritori.Nullus Rom.S02E09.Deus.Impeditio.Esuritori.Nullus.avi.vol007+08.PAR2" yEnc',
  70
), (
  50,
  '^alt\\.binaries\\.ath$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"27MZ4CXQ3AN86D95KVHB.part06.rar" - 21,61 GB - yEnc',
  75
), (
  51,
  '^alt\\.binaries\\.ath$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"2EACM94X65NHZ37.par2" yEnc',
  80
), (
  52,
  '^alt\\.binaries\\.ath$',
  '/^(?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[- ]{0,3}yEnc$/u',
  1,
  '//A7Soft ExamXML v4.37.rar  yEnc',
  85
), (
  53,
  '^alt\\.binaries\\.audiobooks$',
  '/^(Re: )?(?P<match0>[\\w\\s]+ - )\\[\\d+\\/\\d+\\] - "(?P<match1>.+)[\\.-]([Pp]art|vol|jpg|sfv|mp3|nzb|nfo|rar).*" yEnc$/',
  1,
  '//WEB Griffin - [06/26] - "The Outlaws-Part06.mp3" yEnc ::: //Re: WEB Griffin - [18/26] - "The Outlaws.par2" yEnc',
  5
), (
  54,
  '^alt\\.binaries\\.audiobooks$',
  '/^(Re: )?(?P<match0>[\\w\\s]+ - )\\[\\d+\\/\\d+\\] - "(?P<match1>.+)[\\.-]([Pp]ar2).*" yEnc$/',
  1,
  '//WEB Griffin - [06/26] - "The Outlaws-Part06.mp3" yEnc ::: //Re: WEB Griffin - [18/26] - "The Outlaws.par2" yEnc',
  10
), (
  55,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>.+)-Part\\d+\\..+" yEnc$/',
  1,
  '//[05/13] - "Into the Fire-Part03.mp3" yEnc',
  15
), (
  56,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\[Repost.+\\]\\s+\\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(part|vol|jpg|sfv|mp3|nzb|nfo|rar).*" yEnc$/',
  1,
  '//[Repost - Original Damaged]  [35/86] - "Mark Twain - Personal Recollections of Joan of Arc Vol 1 and Vol 2 - 33 - 32 - Tinsel Trappings of Nobility.mp3" yEnc',
  20
), (
  57,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\[Repost.+\\]\\s+\\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(par2).*" yEnc$/',
  1,
  '//[Repost - Original Damaged]  [35/86] - "Mark Twain - Personal Recollections of Joan of Arc Vol 1 and Vol 2 - 33 - 32 - Tinsel Trappings of Nobility.mp3" yEnc',
  25
), (
  58,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(part|vol|jpg|sfv|mp3|nzb|nfo|rar).*" yEnc$/',
  1,
  '//(????) [12/19] - "Notorious Nineteen.part10.rar" yEnc',
  30
), (
  59,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(par2).*" yEnc$/',
  1,
  '//(????) [12/19] - "Notorious Nineteen.part10.rar" yEnc',
  35
), (
  60,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+)[\\.-](part|vol|jpg|sfv|mp3|nzb|nfo|rar).*" - \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//(08/10) "The Vampire Diaries - Kampen.vol63+15.par2" - 313,91 MB yEnc',
  40
), (
  61,
  '^alt\\.binaries\\.audiobooks$',
  '/^(Re: )?\\(\\d+\\/\\d+\\) "(?P<match0>.+)[\\.-](par2).*" - \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//(01/10) "The Vampire Diaries - Raseriet.par2" - 296,93 MB yEnc',
  45
), (
  62,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>.+) \\[Danish.+\\] \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//Margaret Weis - Dragonlance Kr?niker Bind 1-6 [Danish AudioBook] [02/18] - "DL-CRON.r00" yEnc',
  50
), (
  63,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>[\\w\\s\\d-]+) \\d+ kbps stereo \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//David Baldacci - The Forgotten 128 kbps stereo [03/24] - "The Forgotten 01.m4b" yEnc',
  55
), (
  64,
  '^alt\\.binaries\\.audiobooks$',
  '/(?P<match0>\\w{4}\\d{4}) [\\[\\(]\\d+\\/\\d+[\\]\\)][ -]+"\\w{4}\\..+" yEnc$/',
  1,
  '//ASOS0010 [03/40] - "ASOS.r01" yEnc ::: //FFTT0010 (01/22) "FFTT.r10" yEnc',
  60
), (
  65,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>.+) \\[New Post\\] \\[\\d+\\/\\d+\\] ".+" yEnc$/',
  1,
  '//Christopher Moore - Practrcal Demonkeeping (1992) [New Post] [04/15] "Christopher Moore - Practical Demonkeeping 01.mp3" yEnc',
  65
), (
  66,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>.+) NMR \\[\\d+\\/\\d+\\] ".+" yEnc$/',
  1,
  '//Christopher Moore - Coyote Blue (1994) NMR [04/17] "Christopher Moore - Coyote Blue  01.mp3" yEnc',
  70
), (
  67,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>.+\\(\\d{4}\\)) \\[\\d+\\/\\d+\\] ".+" yEnc$/',
  1,
  '//Christopher Moore - Island of the Sequined Love Nun (1997) [09/19] "Christopher Moore - Island of the Sequined Love Nun 06.mp3" yEnc',
  75
), (
  68,
  '^alt\\.binaries\\.audiobooks$',
  '/^NR - (?P<match0>.+) - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//NR - Jonathan Maberry - Extinction Machine - [26/98] - "Extinction Machine - 26-89.mp3" yEnc',
  80
), (
  69,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\[(?P<match0>.+)\\] - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[Seizing the Enigma - David Kahn (Unabridged)(NMR)] - [06/29] - "DKSTE.part03.rar" yEnc',
  85
), (
  70,
  '^alt\\.binaries\\.audiobooks$',
  '/\\[\\d+\\/\\d+\\] - "(?P<match0>.+) - \\d+ -.+-.+" yEnc$/',
  1,
  '//[116/194] - "David Baldacci - SK 03 Simple Genius - 21 - SK 03 Simple Genius - 021.mp3" yEnc',
  90
), (
  71,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>[\\s\\w\\d-]+) \\[\\d+\\/\\d+\\][ -]+".+" yEnc$/',
  1,
  '//Michael Moss - Salt Sugar Fat - How the Food Giants Hooked Us [03/20] "Salt Sugar Fat - How the Food Giants Hooked Us 01.mp3" yEnc',
  95
), (
  72,
  '^alt\\.binaries\\.audiobooks$',
  '/^\\((?P<match0>TTC Audio - .+)\\) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//(TTC Audio - Impossible - Physics Beyond the Edge) [01/34] - "TTC Audio - Impossible - Physics Beyond the Edge.sfv" yEnc',
  100
), (
  73,
  '^alt\\.binaries\\.audiobooks$',
  '/^(?P<match0>TTC Audio - .+)\\)\\s\\(.+\\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//TTC Audio - Impossible - Physics Beyond the Edge) (proper pars) [0/8] - "(proper par2s) TTC Audio - Impossible - Physics Beyond the Edge.nzb" yEnc',
  105
), (
  74,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^(Re: )?\\[.+?\\]-\\[\\d+\\]-\\[(?P<match0>.+?)\\]-\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[#nzbx.audio/EFnet]-[1681]-[MagicScore.Note.v7.084-UNION]-[02/12] - "u-msn7.r00" yEnc',
  5
), (
  75,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^(?P<match0>[\\w.-]+) ?\\[\\d+( of |\\/)\\d+\\] ".+?" yEnc$/',
  1,
  '//MacProVideo.com.Pro.Tools8.101.Core.Pro.Tools8.TUTORiAL-DYNAMiCS [2 of 50] "dyn-mpvprtls101.sfv" yEnc ::: //Native.Instruments.Komplete.7.VSTi.RTAS.AU.DVDR.D02-DYNAMiCS[01/13] - "dyn.par2" yEnc ::: //Native.Instruments.Komplete.7.VSTi.RTAS.AU.DVDR.DYNAMiCS.NZB.ONLY [02/13] - "dyn.vol0000+001.PAR2" yEnc',
  10
), (
  76,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^REQ : .+? ~ (?P<match0>.+?) \\[\\d+ of \\d+\\] ".+?" yEnc$/',
  1,
  '//REQ : VSL Stuff ~ Here\'s PreSonus Studio One 1.5.2 for OS X [16 of 22] "a-p152x.rar" yEnc',
  15
), (
  77,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^(?P<match0>[a-zA-Z0-9].+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Eminem - Recovery (2010) - [1/1] - "Eminem - Recovery (2010).rar" yEnc',
  20
), (
  78,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [1/1] - "Dust in the Wind - the Violin Solo.rar" yEnc',
  25
), (
  79,
  '^alt\\.binaries\\.audio\\.warez$',
  '/^(?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Native Instruments Battery 3 incl Library ( VST DX RTA )( windows ) Libraries [1/1] - "Native Instruments Battery 2 + 3 SERIAL KEY KEYGEN.nfo" yEnc',
  30
), (
  80,
  '^alt\\.binaries\\.b4e$',
  '/^"(?P<match0>B4E-vip\\d+)\\..+?" yEnc$/',
  1,
  '//"B4E-vip2851.r83" yEnc',
  5
), (
  81,
  '^alt\\.binaries\\.b4e$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>.+?) \\(.+?" yEnc$/',
  1,
  '//[02/12] - "The.Call.GERMAN.2013.DL.AC3.Dubbed.720p.BluRay.x264 (Avi-RiP ).rar" yEnc',
  10
), (
  82,
  '^alt\\.binaries\\.b4e$',
  '/^- "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- "as-jew3.vol03+3.PAR2" - yEnc',
  15
), (
  83,
  '^alt\\.binaries\\.barbarella$',
  '/^(?P<match0>[a-zA-Z0-9].+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//ACDSee.Video.Converter.Pro.v3.5.41.Incl.Keymaker-CORE - [1/7] - "ACDSee.Video.Converter.Pro.v3.5.41.Incl.Keymaker-CORE.par2" yEnc',
  5
), (
  84,
  '^alt\\.binaries\\.barbarella$',
  '/^(?P<match0>[\\w.-]+)\\s+-\\s+".+?" yEnc$/',
  1,
  '//Die.Nacht.Der.Creeps.THEATRICAL.GERMAN.1986.720p.BluRay.x264-GH - "gh-notcreepskf720.nfo" yEnc ::: //The.Fast.and.the.Furious.Tokyo.Dr',
  10
), (
  85,
  '^alt\\.binaries\\.barbarella$',
  '/^(\\[[A-Za-z]+\\]\\.|reup\\.)?(?P<match0>[a-zA-Z0-9].+?)([\\^<> ]+give-me-all\\.org[\\^<> ]+|[\\^<> ]+)DRM[\\^<> ]+.+? - \\(\\d+\\/\\d+\\)  ".+?" - .+? yEnc$/',
  1,
  '//CorelDRAW Technical Suite X6-16.3.0.1114 x32-x64<><>DRM<><> - (10/48)  "CorelDRAW Technical Suite X6-16.3.0.1114 x32-x64.part09.rar" - 2,01 GB - yEnc ::: //AnyDVD_7.1.9.3_-_HD-BR - Beta<>give-me-all.org<>DRM<><> - (1/3)  "AnyDVD_7.1.9.3_-_HD-BR - Beta.par2" - 14,53 MB - yEnc ::: //Android Softarchive.net Collection Pack 27^^give-me-all.org^^^^DRM^^^^ - (01/26)  "Android Softarchive.net Collection Pack 27.par2" - 1,01 GB - yEnc ::: //WIN7_ULT_SP1_x86_x64_IE10_19_05_13_TRIBAL <> give-me-all.org <> DRM <> <> PW <> - (154/155)  "WIN7_ULT_SP1_x86_x64_IE10_19_05_13_TRIBAL.vol57+11.par2" - 7,03 GB - yEnc ::: //[Android].Ultimate.iOS7.Apex.Nova.Theme.v1.45 <> DRM <> - (1/3)  "[Android].Ultimate.iOS7.Apex.Nova.Theme.v1.45.par2" - 21,14 MB - yEnc',
  15
), (
  86,
  '^alt\\.binaries\\.barbarella$',
  '/^\\(\\d+\\/\\d+\\) - .+? - "(?P<match0>.+?)( \\(\\d+\\))?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(004/114) - Description - "Pluralsight.net XAML Patterns (10).rar" - 532,92 MB - yEnc',
  20
), (
  87,
  '^alt\\.binaries\\.barbarella$',
  '/^\\(\\d+\\/\\d+\\)( -)? ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - (?P<match0>.+?) yEnc$/',
  1,
  '//(01/12) - "TransX - Living on a Video 1993.part01.rar" - 561,55 MB - TransX - Living on a Video 1993.[Lossless] Highh Quality yEnc ::: //(59/81) "1973 .Lee.Jun.Fan.DVD9.untouched.z46" - 7,29 GB - Lee.Jun.Fan.sein.Film.DVD9.untouched yEnc',
  25
), (
  88,
  '^alt\\.binaries\\.barbarella$',
  '/^>>> www\\.lords-of-usenet\\.org <<<.+? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") .+? \\[\\d+\\/\\d+\\] - .+? yEnc$/',
  1,
  '//>>> www.lords-of-usenet.org <<<  "Der Schuh Des Manitu.par2" DVD5  [001/158] - 4,29 GB yEnc',
  30
), (
  89,
  '^alt\\.binaries\\.barbarella$',
  '/^.+? (-|\\(PW\\))\\s+\\[.+? -\\] \\[\\d+[,.]\\d+ [mMkKgG][bB]\\] \\[\\d+\\/\\d+\\] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//NEUES 4y - [@ usenet-4all.info - powered by ssl.news -] [5,58 GB] [002/120] "DovakinPack.part002.rar" yEnc ::: //NEUES 4y (PW)  [@ usenet-4all.info - powered by ssl.news -] [7,05 GB] [014/152] "EngelsGleich.part014.rar" yEnc',
  35
), (
  90,
  '^alt\\.binaries\\.barbarella$',
  '/^([a-zA-Z0-9].+?\\s{2,}|Old Dad uppt\\s+)(?P<match0>.+?) \\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Old Dad uppt   Die Schatzinsel Teil 1+Teil2  AC3 DVD Rip German XviD Wp 01/33] - "upp11.par2" yEnc ::: //Old Dad uppt Scary Movie5 WEB RiP Line XviD German 01/24] - "Scary Movie 5.par2" yEnc',
  40
), (
  91,
  '^alt\\.binaries\\.barbarella$',
  '/^.+?\\s{2,}\\d+[,.]\\d+ [mMkKgG][bB]\\s{2,}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")\\s{2,}(\\d+ B|\\d+[,.]\\d+ [mMkKgG][bB]) yEnc$/',
  1,
  '//>>>  20,36 MB   "Winamp.Pro.v5.70.3392.Incl.Keygen-FFF.par2"   552 B yEnc ::: //..:[DoAsYouLike]:..    9,64 MB    "Snooper 1.39.5.par2"    468 B yEnc',
  45
), (
  92,
  '^alt\\.binaries\\.barbarella$',
  '/^\\(.+?\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(MKV - DVD - Rip - German - English - Italiano) - "CALIGULA (1982) UNCUT.sfv" yEnc',
  50
), (
  93,
  '^alt\\.binaries\\.barbarella$',
  '/^"(?P<match0>[a-z0-9]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"sre56565ztrtzuzi8inzufft.par2" yEnc',
  55
), (
  94,
  '^alt\\.binaries\\.big$',
  '/^(?P<match0>[\\w.-]+) - ".+?" yEnc$/',
  1,
  '//Girls.against.Boys.2012.German.720p.BluRay.x264-ENCOUNTERS - "encounters-giagbo_720p.nfo" yEnc',
  5
), (
  95,
  '^alt\\.binaries\\.big$',
  '/^(?P<match0>[a-z]{3,}) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//wtvrwschdhfthj - [001/246] - "dtstchhtmrrnvn.par2" yEnc ::: //oijhuiurfjvbklk - [01/18] - "tb5-3ioewr90f.par2" yEnc',
  10
), (
  96,
  '^alt\\.binaries\\.big$',
  '/^\\(\\d+\\/\\d+\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(08/22) - "538D7B021B362A4300D1C0D84DD17E6D.r06" yEnc',
  15
), (
  97,
  '^alt\\.binaries\\.big$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [02/71] - "Lasting Weep (1969-1971).part.par2" yEnc',
  20
), (
  98,
  '^alt\\.binaries\\.big$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] -(re)? yEnc$/',
  1,
  '//(01/59) "ThienSuChungQuy_II_E16.avi.001" - 1,49 GB - yEnc ::: //(058/183) "LS_HoangChui_2xdvd5.part057.rar" - 8,36 GB -re yEnc',
  25
), (
  99,
  '^alt\\.binaries\\.big$',
  '/^(?P<match0>\\[[a-zA-Z]+\\] .+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[AoU] Upload#00287 - [04/43] - "Upload-ZGT1-20130525.part03.rar" yEnc',
  30
), (
  100,
  '^alt\\.binaries\\.big$',
  '/^\\([a-z]+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(nate) [01/27] - "nate_light_13.05.23.par2" yEnc',
  35
), (
  101,
  '^alt\\.binaries\\.big$',
  '/^""(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")" yEnc$/',
  1,
  '//""Absolute Database Component for BCBuilder 4-6 MultiUser Edit 4.85.rar"" yEnc',
  40
), (
  102,
  '^alt\\.binaries\\.big$',
  '/^(?P<match0>[a-f0-9]{32}) - \\(\\d+\\/\\d+\\) - "[a-f0-9]{32}.+?" yEnc$/',
  1,
  '//781e1d8dccc641e8df6530edb7679a0e - (26/30) - "781e1d8dccc641e8df6530edb7679a0e.rar" yEnc',
  45
), (
  103,
  '^alt\\.binaries\\.bloaf$',
  '/^(?P<match0>[a-f0-9]{32}) - \\(\\d+\\/\\d+\\) - "[a-f0-9]{32}.+?" yEnc$/',
  1,
  '//36c1d5d4eaf558126c67f00be46f77b6 - (01/22) - "36c1d5d4eaf558126c67f00be46f77b6.par2" yEnc',
  5
), (
  104,
  '^alt\\.binaries\\.bloaf$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] .+? usenet-space.+?yEnc$/',
  1,
  '//[10/17] - "EGk13kQ1c8.part09.rar" - 372.48 MB <-> usenet-space-cowboys.info <-> powered by secretusenet.com <-> yEnc',
  10
), (
  105,
  '^alt\\.binaries\\.bloaf$',
  '/^\\((?P<match0>.+?)\\) - ".+?" yEnc$/',
  1,
  '//(Neu bei Bitfighter vom 23-07-2013) - "01 - Sido - Bilder Im Kopf.mp3" yEnc',
  15
), (
  106,
  '^alt\\.binaries\\.bloaf$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(2/8) "Mike.und.Molly.S01E22.Maennergespraeche.GERMAN.DL.DUBBED.720p.BluRay.x264-TVP.part1.rar" - 1023,92 MB - yEnc',
  20
), (
  107,
  '^alt\\.binaries\\.bloaf$',
  '/^.+? (?P<match0>-|\\(PW\\))\\s+\\[.+? -\\] \\[\\d+[,.]\\d+ [mMkKgG][bB]\\] \\[\\d+\\/\\d+\\] "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//4y (PW)   [@ usenet-4all.info - powered by ssl.news -] [27,35 GB] [001/118] "1f8867bb6f89491793d3.part001.rar" yEnc',
  25
), (
  108,
  '^alt\\.binaries\\.bloaf$',
  '/^(\\[[A-Za-z]+\\]\\.)?(?P<match0>[a-zA-Z0-9].+?)([\\^<> ]+give-me-all\\.org[\\^<> ]+|[\\^<> ]+)DRM[\\^<> ]+.+? - \\(\\d+\\/\\d+\\)\\s+".+?" - .+? yEnc$/',
  1,
  '//Bennos Special Tools DVD - Die Letzte <> DRM <><> PW <> - (002/183)  "Bennos Special Tools DVD - Die Letzte.nfo" - 8,28 GB - yEnc',
  30
), (
  109,
  '^alt\\.binaries\\.bloaf$',
  '/^\\(\\d+\\/\\d+\\) - (?P<match0>.+?) ?- ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(1/9) - CyberLink.PhotoDirector.4.Ultra.4.0.3306.Multilingual - "CyberLink.PhotoDirector.4.Ultra.4.0.3306.Multilingual.par2" - 154,07 MB - yEnc ::: //(1/5) - Mac.DVDRipper.Pro.4.0.8.Mac.OS.X- "Mac.DVDRipper.Pro.4.0.8.Mac.OS.X.rar" - 24,12 MB - yEnc',
  35
), (
  110,
  '^alt\\.binaries\\.bloaf$',
  '/^\\[\\d+\\/\\d+ (?P<match0>.+?)\\..+?" yEnc$/',
  1,
  '//[3/3 Helene Fischer - Die Biene Maja 2013 MP3 Helene Fischer - Die Biene Maja 2013 MP3.mp3.vol0+1.PAR2" yEnc',
  40
), (
  111,
  '^alt\\.binaries\\.bloaf$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\(\\[]\\d+\\/\\d+[\\)\\]]".+" yEnc$/',
  1,
  '//Uploader.Presents-Mutter.und.Sohn.German.2013.DVDRiP.x264-XFi[01/27]"xf-mutterusohn.nfo" yEnc',
  45
), (
  112,
  '^alt\\.binaries\\.blu-ray$',
  '/^"(?P<match0>\\d+\\.MK\\.[A-Z])\\..+?" yEnc$/',
  1,
  '//"786936833607.MK.A.part086.rar" yEnc',
  5
), (
  113,
  '^alt\\.binaries\\.blu-ray$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[a-z0-9]+)\\..+?" yEnc$/',
  1,
  '//(????) [001/107] - "260713thbldnstnsclw.par2" yEnc',
  10
), (
  114,
  '^alt\\.binaries\\.blu-ray$',
  '/^\\[www\\..+?\\]-\\[(?P<match0>.+?)\\]-\\[\\d+\\/\\d+\\] ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//[www.allyourbasearebelongtous.pw]-[The Place Beyond the Pines 2012 1080p US Blu-ray AVC DTS-HD MA 5.1-HDWinG]-[03/97] "tt1817273-us-hdwing-bd.r00" - 46.51 GB - yEnc',
  15
), (
  115,
  '^alt\\.binaries\\.blu-ray$',
  '/^\\(\\d+\\/\\d+\\)(\\s+ -)? "(?P<match0>[a-zA-Z0-9]+?)\\d*\\..+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(01/71)  - "EwRQCtU4BnaeXmT48hbg7bCn.par2" - 54,15 GB - yEnc ::: //(63/63) "dfbgfdgtghtghthgGPGEIBPBrwg34t05.rev" - 10.67 GB - yEnc',
  20
), (
  116,
  '^alt\\.binaries\\.blu-ray$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[a-zA-Z0-9]+)\\..+?" yEnc$/',
  1,
  '//[01/67] - "O3tk4u681gd767Y.par2" yEnc',
  25
), (
  117,
  '^alt\\.binaries\\.blu-ray$',
  '/^(?P<match0>[a-z0-9]+) \\[.+?\\] \\[.+?\\] \\[\\d+[,.]\\d+ [mMkKgG][bB]\\] \\[\\d+\\/\\d+\\] ".+?" yEnc$/',
  1,
  '//209a212675ba31ca24a8 [usenet-4all.info] [powered by ssl-news] [21,59 GB] [002/223] "209a212675ba31ca24a8.part001.rar" yEnc',
  30
), (
  118,
  '^alt\\.binaries\\.blu-ray$',
  '/^(?P<match0>[A-Z0-9]+) - "[a-z0-9]+\\..+?" yEnc$/',
  1,
  '//TIS97CC - "tis97cc.par2" yEnc',
  35
), (
  119,
  '^alt\\.binaries\\.blu-ray$',
  '/^AsianDVDClub\\.org - (?P<match0>.+) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//AsianDVDClub.org - Sengoku Basara: Season 2 (2010) AVC 1080p BD50+BD25 - Disc 1 of 2 [001/112] - "adc-71029a.nfo" yEnc',
  40
), (
  120,
  '^alt\\.binaries\\.blu-ray$',
  '/^AsianDVDClub\\.org - (?P<match0>.+) ".+" yEnc$/',
  1,
  '//AsianDVDClub.org - Laputa: Castle in the Sky (1986) AVC 1080p BD50 - File 001 of 113: "adc-laputa.nfo" yEnc',
  45
), (
  121,
  '^alt\\.binaries\\.blu-ray$',
  '/^[\\w-\\. ]+[ _-]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//THE_PAC',
  50
), (
  122,
  '^alt\\.binaries\\.blu-ray$',
  '/^[\\w-\\. ]+[ _-]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//LOST SEASON1 DISC4 REENCODED BD25 DJMASTURBEAT (151/154) "LOST SEASON1 DISC4 BD25 DJMASTURBEAT.vol3312+131.par2" - 26.91 GB - yEnc',
  55
), (
  123,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[a-zA-Z0-9]+)\\[\\d+\\/\\d+\\] - "[a-zA-Z0-9]+\\..+?" yEnc$/',
  1,
  '//4Etmo7uBeuTW[047/106] - "006dEbPcea29U6K.part046.rar" yEnc',
  5
), (
  124,
  '^alt\\.binaries\\.boneless$',
  '/^\\(PC-ISO\\)[-_\\s]{0,3}\\( (?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b) \\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(PC-ISO) ( Trials.Fusion.Riders.of.the.Rustlands-SKIDROW ) [10/40] - "sr-tfrotr.part01.rar" yEnc',
  10
), (
  125,
  '^alt\\.binaries\\.boneless$',
  '/^\\( (?P<match0>[\\w. -]{8,}) \\)[-_\\s]{0,3}\\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//( Overlord II RELOADED ) - [013/112] - "rld-olii.part001.rar" yEnc',
  15
), (
  126,
  '^alt\\.binaries\\.boneless$',
  '/^\\(\\d+\\/\\d+\\)\\s+(- )?"(?P<match0>[a-zA-Z0-9]+)\\..+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(68/89) "dz1R2wT8hH1iQEA28gRvm.part67.rar" - 7,91 GB - yEnc ::: //(01/14)  - "JrjCY4pUjQ9qUqQ7jx6k2VLF.par2" - 4,39 GB - yEnc',
  20
), (
  127,
  '^alt\\.binaries\\.boneless$',
  '/^\\((?P<match0>\\d+)\\) \\[\\d+\\/\\d+\\] - "\\d+\\..+?" yEnc$/',
  1,
  '//(110320152518519) [22/78] - "110320152518519.part21.rar" yEnc',
  25
), (
  128,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[a-zA-Z0-9]+) - \\[\\d+\\/\\d+\\] - "[a-zA-Z0-9]+\\..+?" yEnc$/',
  1,
  '//1VSXrAZPD - [123/177] - "1VSXrAZPD.part122.rar" yEnc',
  30
), (
  129,
  '^alt\\.binaries\\.boneless$',
  '/^\\( (?P<match0>.+?) \\)\\s+\\( .+?\\) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//( Peter Gabriel Albums 24x +17 Singles = 71x cd By Dready Niek )  ( ** By Dready Niek ** ) [113/178] - "Peter Gabriel Albums 24x +17 Singles = 71CDs By Dready Niek (1977-2010).part112.rar" yEnc',
  35
), (
  130,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[A-Za-z0-9].+? \\((19|20)\\d\\d\\)) "\\d{2}\\. .+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Tarja - Colours In The Dark (2013) "00. Tarja-Colours In The Dark.m3u" yEnc',
  40
), (
  131,
  '^alt\\.binaries\\.boneless$',
  '/^"(?P<match0>[a-zA-Z0-9]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\(\\d+\\/\\d+\\) - yEnc$/',
  1,
  '//"BB636.part14.rar" - (15/39) - yEnc',
  45
), (
  132,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[-a-zA-Z0-9 ]+) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Lutheria - FC Twente TV Special - Ze wilde op voetbal [16/49] - "Lutheria - FC Twente TV Special - Ze wilde op voetbal.part16.rar" yEnc',
  50
), (
  133,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[-a-zA-Z0-9 ]+) - ".+?" yEnc$/',
  1,
  '//Pee Mak Prakanong - 2013 - Thailand - ENG Subs - "Pee Mak Prakanong.2013.part22.rar" yEnc',
  55
), (
  134,
  '^alt\\.binaries\\.boneless$',
  '/^\\((\\?{4}|[a-zA-Z]+)\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [011/161] - "flynns-image-redux.part010.rar" yEnc ::: //(Dgpc) [000/110] - "Teen Wolf - Seizoen.3 - Dvd.2 (NLsub).nzb" yEnc',
  60
), (
  135,
  '^alt\\.binaries\\.boneless$',
  '/^\\("(?P<match0>[a-z0-9A-Z]+).+?" - \\d+[,.]\\d+ [mMkKgG][bB] -\\) ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//("Massaladvd5Kilusadisc4S1.par2" - 4,55 GB -) "Massaladvd5Kilusadisc4S1.par2" - 4,55 GB - yEnc',
  65
), (
  136,
  '^alt\\.binaries\\.boneless$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"par.4kW9beE.1.vol122+21.par2" yEnc',
  70
), (
  137,
  '^alt\\.binaries\\.boneless$',
  '/^.+?\\.(info|org)>+ - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info/.net <<<Partner von SSL-News.info>>> - [01/19] - "Age.of.Dinosaurs.German.AC3.HDRip.x264-FuN.par2" yEnc ::: //>>>>>Hell-of-Usenet.org>>>>> - [01/35] - "Female.Agents.German.2008.AC3.DVDRip.XviD.iNTERNAL-VideoStar.par2" yEnc',
  75
), (
  138,
  '^alt\\.binaries\\.boneless$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[010/101] - "Bf56a8aR-20743f8D-Vf7a11fD-d7c6c0.part09.rar" yEnc ::: //[1/9] - "fdbvgdfbdfb.part.par2" yEnc',
  80
), (
  139,
  '^alt\\.binaries\\.boneless$',
  '/^\\[[A-Z]+\\] - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[LB] - [063/112] - "RVL-GISSFBD.part063.rar" yEnc',
  85
), (
  140,
  '^alt\\.binaries\\.boneless$',
  '/^!!www\\.usenet4all\\.eu!![ _-]{0,3}(?P<match0>.+)\\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//!!www.usenet4all.eu!! - Acceptance.2009.COMPLETE.NTSC.DVDR-D0PE[001/100] - #34;d0pe-a.nfo#34; yEnc',
  90
), (
  141,
  '^alt\\.binaries\\.boneless$',
  '/^(?P<match0>[A-Za-z0-9][a-zA-Z0-9.-]{6,})\\s+- ".+" yEnc$/',
  1,
  '//NCIS.S11E03.HDTV.x264-LOL - "NCIS.S11E03.HDTV.x264-LOL.part.par2" yEnc',
  95
), (
  142,
  '^alt\\.binaries\\.boneless$',
  '/^place2home\\.net - (?P<match0>.*?) - (\\[\\d+\\/\\d+\\] - )?".+?" yEnc$/i',
  1,
  '//place2home.net - Call.of.Duty.Ghosts.XBOX360-iMARS - [095/101] - "imars-codghosts-360b.vol049+33.par2" yEnc ::: //Place2home.net - Diablo_III_USA_RF_XBOX360-PROTOCOL - "d3-ptc.r34" yEnc',
  100
), (
  143,
  '^alt\\.binaries\\.boneless$',
  '/^(REPOST: )?\\[scnzbefnet\\]\\[(\\d+)\\] (?P<match0>.+?) \\[\\d+\\/(\\d+\\]) - ".+?" yEnc$/',
  1,
  '//[scnzbefnet][500934] Super.Fun.Night.S01E09.720p.HDTV.X264-DIMENSION [1/19] - "bieber.109.720p-dimension.sfv" yEnc ::: //REPOST: [scnzbefnet][500025] Major.Crimes.S02E13.720p.HDTV.x264-IMMERSE [16/33] - "major.crimes.s02e13.720p.hdtv.x264-immerse.r24" yEnc',
  105
), (
  144,
  '^alt\\.binaries\\.boneless$',
  '/^\\[scnzbefnet\\] (?P<match0>.+?) \\[\\d+\\/(\\d+\\]) - ".+?" yEnc$/',
  1,
  '//[scnzbefnet] Murdoch.Mysteries.S07E09.HDTV.x264-KILLERS [1/20] - "murdoch.mysteries.s07e09.hdtv.x264-killers.r13" yEnc',
  110
), (
  145,
  '^alt\\.binaries\\.boneless$',
  '/^(\\((?P<match0>.+?)\\) \\[)\\d+(\\/\\d+] - ").+?" yEnc$/',
  1,
  '//(Ancient.Aliens.S03E05.Aliens.and.Mysterious.Rituals.720p.HDTV.x264.AC3.2Ch.REPOST) [41/42] - "Ancient.Aliens.S03E05.Aliens.and.Mysterious.Rituals.720p.HDTV.x264.AC3.2Ch.REPOST.vol071+66.PAR2" yEnc',
  115
), (
  146,
  '^alt\\.binaries\\.boneless$',
  '/^\\(\\d+\\/\\d+\\) - \\[Lords-of-Usenet\\] <<Partner of SSL-News.info>> presents (?P<match0>.+) -".+" - .+ yEnc$/i',
  1,
  '//(01/48) - [Lords-of-Usenet] <<Partner of SSL-News.info>> presents Sons.of.Anarchy.S02E03.Unten.am.Fluss.GERMAN.DUBBED.720p.BLURAY.x264-ZZGtv -"zzgtv-soa-s02e03.par2" - 1,84 GB',
  120
), (
  147,
  '^alt\\.binaries\\.boneless$',
  '/^Doobz (?P<match0>[a-zA-z-_]+) \\[\\d+\\/(\\d+\\]) - ".+([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Doobz Europa_Universalis_IV_Conquest_of_Paradise-FLT [10/54] - "flt-eucp.001" yEnc',
  125
), (
  148,
  '^alt\\.binaries\\.boneless$',
  '/^\\(aangemeld bij usenet collector\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(aangemeld bij usenet collector) [001/125] - "Northern_Exposure_Season_1_dvd_1.par2" yEnc',
  130
), (
  149,
  '^alt\\.binaries\\.boneless$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+usenet-space-cowboys\\.info.+ yEnc$/',
  1,
  '//[15/16] - "Person.of.Interest.S03E09.480p.HDTV.x264-mSD.vol0+1.par2" - 177,28 MB <-> usenet-space-cowboys.info <-> powered by secretusenet.com <-> yEnc',
  135
), (
  150,
  '^alt\\.binaries\\.boneless$',
  '/^brothers-of-usenet\\.info.+ - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info&net-empfehlen-ssl-news.info Black Mirror s01e01 - Der wille des volkes - [09/15] - "Black Mirror - S01E01 - Der Wille des Volkes.vol00+01.par2" yEnc',
  140
), (
  151,
  '^alt\\.binaries\\.boneless$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+yEnc$/',
  1,
  '//(024/264) "Enf.S04E02.G.D.H.X-M.vol51+46.PAR2" - 8,27 GB -Enf.S04.G.D.H.X yEnc',
  145
), (
  152,
  '^alt\\.binaries\\.boneless$',
  '/.*"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//- "Auction Hunters S04E04.HDTV.x264-StarryNights1.nzb" yEnc',
  150
), (
  153,
  '^alt\\.binaries\\.british\\.drama$',
  '/^(?P<match0>[a-zA-Z0-9].+? \\[XviD\\]) \\[\\d\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Coronation Street 03.05.2012 [XviD] [01/23] - "coronation.street.03.05.12.[ws.pdtv].par2" yEnc ::: //Coronation Street 04.05.2012 - Part 1 [XviD] [01/23] - "coronation.street.04.05.12.part.1.[ws.pdtv].par2" yEnc',
  5
), (
  154,
  '^alt\\.binaries\\.british\\.drama$',
  '/^(?P<match0>[a-zA-Z0-9]+ .+? (S\\d+)?E\\d+-\\d\\d) \\[\\d+\\/\\d+\\] - "\\d(\\d |\\.).+?" yEnc$/',
  1,
  '//The Prisoner E06-09 [001/152] - "06 The General.mkv.001" yEnc ::: //Danger Man S2E05-08 [075/149] - "7.The colonel\'s daughter.avi.001" yEnc',
  10
), (
  155,
  '^alt\\.binaries\\.british\\.drama$',
  '/^.+?[-_\\s]{0,3}\\d+[xX]\\d+[-_\\s]{0,3}.+?\\[\\d+\\/\\d+\\][-_\\s]{0,3}.+?"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Wizards Vs Aliens - 1x06 - Rebel Magic, Part Two [XviD][00/27] - "wizards.vs.aliens.106.rebel.magic.part.two.[ws.pdtv].nzb" yEnc',
  15
), (
  156,
  '^alt\\.binaries\\.british\\.drama$',
  '/^[a-zA-Z0-9-\\.]+ - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Vera.3x03.Young.Gods.720p.HDTV.x264-FoV - "vera.3x03.young_gods.720p_hdtv_x264-fov.r00" yEnc',
  20
), (
  157,
  '^alt\\.binaries\\.british\\.drama$',
  '/^(?P<match0>.+ \\d+x\\d+.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/',
  1,
  '//Heartbeat 9x23 Wise Guys.avi.015  yEnc',
  25
), (
  158,
  '^alt\\.binaries\\.british\\.drama$',
  '/^(?P<match0>.+ S\\d+E\\d+)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Minder S10E10 [00/52] - "S10E10.nzb" yEnc',
  30
), (
  159,
  '^alt\\.binaries\\.british\\.drama$',
  '/^.+File \\d+ of \\d+ - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Rosemary & Thyme.106..The Tree of Death....Read txt file for more info about this posting - File 03 of 51 - "Rosemary & Thyme.106.The Tree of Death.part01.rar" yEnc',
  35
), (
  160,
  '^alt\\.binaries\\.british\\.drama$',
  '/^.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The.Tudors.S01E04.2007.720p[33/57] - "The.Tudors.S01E04.2007.720p.part31.rar" yEnc',
  40
), (
  161,
  '^alt\\.binaries\\.british\\.drama$',
  '/^(?P<match0>[\\w. &\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/',
  1,
  '//Happy_Halloween_The Ice House (1978).par2  yEnc',
  45
), (
  162,
  '^alt\\.binaries\\.british\\.drama$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Rosemary & Thyme - 2x02 Orpheus In The Undergrowth.par2"  yEnc',
  50
), (
  163,
  '^alt\\.binaries\\.british\\.drama$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[01/45] - "Minder S01E08.sfv" yEnc',
  55
), (
  164,
  '^alt\\.binaries\\.bungabunga$',
  '/^[\\[(?P<match0>]\\d+\\/\\d+[\\])] - "([A-Z0-9].{2,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB]( -)? yEnc$/',
  1,
  '//[01/29] - "Bellflower.2011.German.AC3.BDRip.XviD-EPHEMERiD.par2" - 1,01 GB yEnc ::: //(3/9) - "Microsoft Frontpage 2003 - 4 Town-Up from Kraenk.rar.par2" - 181,98 MB - yEnc',
  5
), (
  165,
  '^alt\\.binaries\\.cavebox$',
  '/^\\(www\\.Thunder-News\\.org\\) ?\\)(?P<match0>.+)\\( \\(Sponsored.+\\)[ _-]{0,3}\\(\\d+\\/\\d+\\)[ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//(www.Thunder-News.org) )Panamericana.E02.Von.Alaska.nach.Feuerland.GERMAN.DOKU.WS.dTV.XViD-SiTiN( (Sponsored by AstiNews) - (05/34) - #34;sitin-panamericanae02-xvid.r00#34; yEnc',
  5
), (
  166,
  '^alt\\.binaries\\.cats$',
  '/^(?P<match0>[a-zA-Z0-9]{5,}) ?\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Pb7cvL3YiiOu06dsYPzEfpSvvTul[02/37] - "Fkq33mlTVyHHJLm0gJNU.par2" yEnc ::: //DLJorQ37rMDvc [01/16] - "DLJorQ37rMDvc.part1.rar" yEnc',
  5
), (
  167,
  '^alt\\.binaries\\.cbt$',
  '/^\\((?P<match0>[a-zA-Z0-9-\\.\\&_ ]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(WinEdt.v8.0.Build.20130513.Cracked-EAT) [01/10] - "eatwedt8.nfo" yEnc',
  5
), (
  168,
  '^alt\\.binaries\\.cbt$',
  '/^\\[ (?P<match0>[a-zA-Z0-9-\\.\\&\\\\(\\)\\,_ ]+) \\] [a-zA-Z0-9]{3,4}\\.[a-zA-Z0-9]{3,4} \\(\\d+\\/(\\d+\\)) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ ABCAsiaPac',
  10
), (
  169,
  '^alt\\.binaries\\.cbt$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") {1,2}yEnc$/',
  1,
  '//"MythBusters S10E02 720p HDTV x264-DHD.rar"  yEnc',
  15
), (
  170,
  '^alt\\.binaries\\.cbt$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) {1,2}yEnc$/',
  1,
  '//2nd Annual American CountryMusicAwards 2011 HDTV XviD 2HD.rar  yEnc',
  20
), (
  171,
  '^alt\\.binaries\\.cbt$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") Sayco  yEnc$/',
  1,
  '//(????) [005/358] - "WLAN - professionell absichern.rar" Sayco  yEnc',
  25
), (
  172,
  '^alt\\.binaries\\.cbts$',
  '/"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"softWoRx.Suite.2.0.0.25.x32-TFT.rar" yEnc',
  5
), (
  173,
  '^alt\\.binaries\\.cd\\.image$',
  '/^\\[www\\..+?\\]-\\[(?P<match0>.+?)\\]-\\[\\d+\\/\\d+\\] ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//[www.drlecter.tk]-[The_Night_of_the_Rabbit-FLT]-[01/67] "Dr.Lecter.nfo" - 5.61 GB - yEnc',
  5
), (
  174,
  '^alt\\.binaries\\.cd\\.image$',
  '/^(?P<match0>[a-zA-Z0-9.-]{10,}) -( PC GAME -| [A-Z0-9\\[\\]]+ -)? \\[\\d+\\/\\d+\\] - ".+?" - (.+? - (\\d+[,.]\\d+ [mMkKgG][bB] - )?)?yEnc$/',
  1,
  '//Slender.The.Arrival-WaLMaRT.PC - [01/26] - "wmt-stal.nfo" - yEnc ::: //The.Night.of.the.Rabbit-FLT - [03/66] - "flt-notr.r00" - FAiRLIGHT - 5,10 GB - yEnc ::: //Resident.Evil.Revelations-FLT - PC GAME - [03/97] - "Resident.Evil.Revelations-FLT.r00" - FAiRLIGHT - yEnc ::: //Afterfall.Insanity.Dirty.Arena.Edition-WaLMaRT - [MULTI6][PCDVD] - [02/45] - "wmt-adae.r00" - PC GAME - yEnc',
  10
), (
  175,
  '^alt\\.binaries\\.cd\\.image$',
  '/^(PC Game - )?\\[\\d+\\/\\d+\\] - (?P<match0>.+?) - ".+?" -( .+? -)? yEnc$/',
  1,
  '//[01/46] - Crashtime 5 Undercover RELOADED - "rld-ct5u.nfo" - PC - yEnc ::: //[01/76] - Of.Orcs.And.Men-SKIDROW - "sr-oforcsandmen.nfo" - yEnc ::: //PC Game - [01/71] - MotoGP 13-RELOADED Including NoDVD Fix - "MotoGP 13-RELOADED Including NoDVD Fix nfo" - yEnc',
  15
), (
  176,
  '^alt\\.binaries\\.cd\\.image$',
  '/^(?P<match0>[A-Za-z0-9][a-zA-Z0-9: ]{8,}(-[a-zA-Z]+)?)( \\(.+?\\)| - [\\[A-Z0-9\\]]+)? - \\[\\d+\\/\\d+\\] - ".+?" - .+? - yEnc$/',
  1,
  '//Magrunner Dark Pulse FLT (FAiRLIGHT) - [02/70] - "flt-madp par2" - PC - yEnc ::: //MotoGP 13 RELOADED - [01/71] - "rld-motogp13 nfo" - PC - yEnc ::: //Dracula 4: Shadow of the Dragon FAiRLIGHT - [01/36] - "flt-drc4 nfo" - PC - yEnc',
  20
), (
  177,
  '^alt\\.binaries\\.cd\\.image$',
  '/^(\\[[A-Z ]+\\] - )?(?P<match0>[a-zA-Z0-9.-]{10,}) - ".+?" - \\[\\d+\\/\\d+\\] - yEnc$/',
  1,
  '//[NEW PC GAME] - Lumber.island-WaLMaRT - "wmt-lisd.nfo" - [01/18] - yEnc ::: //Trine.2.Complete.Story-SKIDROW - "sr-trine2completestory.nfo" - [01/78] - yEnc',
  25
), (
  178,
  '^alt\\.binaries\\.cd\\.image$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\(\\[]\\d+\\/\\d+\\]".+" yEnc$/',
  1,
  '//Uploader.Presents-Metal.Gear.Rising.Revengeance-RELOADED(51/65]"rld-megerire.r48" yEnc',
  30
), (
  179,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^Flac Flood( -)? (?P<match0>.+?) - ".+?" \\(\\d+\\/\\d+\\) .+? yEnc$/',
  1,
  '//Flac Flood - Modern Talking - China In Her Eyes (CDM) - "1 - Modern Talking - China In Her Eyes (feat. Eric Singleton) (Video Version).flac" (01/14) (23,64 MB)   136,66 MB yEnc ::: ////Flac Flood Modern Talking - America - "1 - Modern Talking - Win The Race.flac" (01/18) (29,12 MB) 549,35 MB yEnc',
  5
), (
  180,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^(?P<match0>[a-zA-Z0-9].+?) \\[\\d+\\/\\d+\\]( -)? "\\d{2,} - .+?" yEnc$/',
  1,
  '//Cannonball Adderley - Nippon Soul [01/17] "00 - Cannonball Adderley - Nippon Soul.nfo" yEnc ::: //Black Tie White Noise [01/24] - "00 - David Bowie - Black Tie White Noise.nfo" yEnc',
  10
), (
  181,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^(?P<match0>(\\[\\d{4}\\] )?[a-zA-Z0-9].+?) - File \\d+ of \\d+: .+? yEnc$/',
  1,
  '//The Allman Brothers Band - Statesboro Blues [Swingin\' Pig - Bootleg] [1970 April 4] - File 09 of 19: Statesboro Blues.cue yEnc ::: //[1977] Joan Armatrading - Show Some Emotion - File 15 of 20: 06 Joan Armatrading - Opportunity.flac yEnc',
  15
), (
  182,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^(?P<match0>[A-Z0-9].+? - [A-Z0-9].+? \\[\\d{4}\\]) - \\d{2,} .+? yEnc$/',
  1,
  '//The Allman Brothers Band - The Fillmore Concerts [1971] - 06 The Allman Brothers Band - Done Somebody Wrong.flac yEnc',
  20
), (
  183,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^(?P<match0>[A-Z0-9].+? - [A-Z0-9].+? Disc \\d+ of \\d+) - [A-Z0-9].+?\\..+? yEnc$/',
  1,
  '//The Velvet Underground - Peel Slow And See (Box Set) Disc 5 of 5 - 13 The Velvet Underground - Oh Gin.flac yEnc',
  25
), (
  184,
  '^alt\\.binaries\\.cd\\.lossless$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(28/55) "Ivan Neville -',
  30
), (
  185,
  '^alt\\.binaries\\.chello$',
  '/^(?P<match0>[A-Za-z0-9]{5,}) ?\\[\\d+\\/\\d+\\] - "[A-Za-z0-9]{3,}.+?" yEnc$/',
  1,
  '//0F623Uv71RHKt0jzA7inbGZLk00[2/5] - "l2iOkRvy80bgLrZm1xxw.par2" yEnc ::: //GMC2G8KixJKy [01/15] - "GMC2G8KixJKy.part1.rar" yEnc',
  5
), (
  186,
  '^alt\\.binaries\\.chello$',
  '/^(?P<match0>[a-zA-Z0-9][a-zA-Z0-9.-]+) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Imactools.Cefipx.v3.20.MacOSX.Incl.Keyfilemaker-NOY [03/10] - "parfile.vol000+01.par2" yEnc',
  10
), (
  187,
  '^alt\\.binaries\\.chello$',
  '/^(?P<match0>[A-Za-z0-9-]+ .+?)[. ]\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Siberian Mouses LS, BD models and special... [150/152] - "Xlola - Luba, Sasha & Vika.avi.jpg" yEnc',
  15
), (
  188,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^Re: REQ: (?P<match0>.+? - ".+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Re: REQ: All In The Family - "Archie Bunkers Place 1x01 Archies New Partner part 1.nzb" yEnc',
  5
), (
  189,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^Per REQ - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") .+? \\[\\d+\\/\\d+\\] yEnc$/',
  1,
  '//Per REQ - "The.Wild.Wild.West.S03E11.The.Night.of.the.Cut-Throats.DVDRip.XVID-tz.par2" 512x384 [01/40] yEnc',
  10
), (
  190,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^By req: "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//By req: "Dennis The Menace - 4x25 - Dennis and the Homing Pigeons.part05.rar" yEnc',
  15
), (
  191,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^[a-zA-Z ]+HQ DVDRips "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\[\\d+\\/\\d+\\] yEnc$/',
  1,
  '//I Spy HQ DVDRips "I Spy - 3x26 Pinwheel.part10.rar" [13/22] yEnc',
  20
), (
  192,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(?P<match0>[a-zA-Z0-9].+? (S\\d+D\\d+|- Season \\d+))( -)? \\[\\d+\\/\\d+\\] - ".+?"? yEnc$/',
  1,
  '//Sledge Hammer! S2D2 [016/138] - "SH! S2 D2.ISO.016" yEnc ::: //Sledge Hammer! S2D2 [113/138] - "SH! S2 D2.ISO.1132 yEnc ::: //Lost In Space - Season 1 - [13/40] - "S1E02 - The Derelict.avi" yEnc',
  25
), (
  193,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(?P<match0>[a-zA-Z0-9].+? \\d{4}-\\d\\d-\\d\\d)( \\[.+?\\])? \\(\\d+\\/\\d+\\) - ".+?" yEnc$/',
  1,
  '//Night Flight TV Show rec 1991-01-12 (02/54) - "night flight rec 1991-01-12.nfo" yEnc ::: //Night Flight TV Show rec 1991-05-05 [NEW PAR SET] (1/9) - "night flight rec 1991-05-05.par2" yEnc',
  30
), (
  194,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^[a-zA-Z0-9][a-zA-Z0-9.-]+S\\d+E\\d+([a-zA-Z0-9.]+)? \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The.Love.Boat.S05E08 [01/31] - "The.Love.Boat.S05E08.Chefs.Special.Kleinschmidt.New.Beginnings.par2" yEnc ::: //Barney.Miller.S08E05.Stress.Analyzer [01/18] - "Barney.Miller.S08E05.Stress.Analyzer.VHSTVRip.DivX.par2" yEnc',
  35
), (
  195,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(Re: )?"(?P<match0>.+?)(\\.avi|\\.mkv)?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( HQ DVDRip\\[\\d+\\/\\d+\\])? yEnc$/',
  1,
  '//"Batman - S1E13-The Thirteenth Hat.par2" yEnc ::: //"The Munsters - 1x01 Munster Masquerade.part.par" HQ DVDRip[02/16] yEnc',
  40
), (
  196,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(Re: )?[a-zA-Z0-9]+.+? (series|Season) \\d+ (- )?\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Re: Outside Edge series 1 - [01/20] - "Outside Edge S01.nfo" yEnc ::: //Green Acres Season 1 [01/87] - "Green Acres Season 1.par2" yEnc ::: //MASH Season 1 - [01/54] - "MASH - Season 01.par2" yEnc',
  45
), (
  197,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(REQ - )?[A-Z0-9a-z][A-Z0-9a-z.]+ - \\d+x\\d+ (- [A-Z0-9a-z.]+ )?- \\[\\d+\\/\\d+\\] - "(?P<match0>.+?)(\\.avi|\\.mkv)?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Rich.Little.Show - 1x12 - Season.and.Series.Finale - [02/33] - "Rich Little Show - 1x12 - Bill Bixby.avi.002" yEnc ::: //Rich.Little.Show - 1x11 - [01/33] - "Rich Little Show - 1x11 - Jessica Walter.avi.001" yEnc ::: //REQ - Banacek - 2x07 - [02/61] - "Banacek - 2x07 - Fly Me -',
  50
), (
  198,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^Handyman Shows-(?P<match0>.+) - File \\d+ of \\d+ - yEnc$/',
  1,
  '//Handyman Shows-TOH-S32E10 - File 01 of 32 - yEnc',
  55
), (
  199,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\.:]+) - \\d+( of \\d+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") (\\(\\d+\\/\\d+\\) )?(yEnc)?$/',
  1,
  '//\'Mission: Impossible\' - 1x09 - NTSC - DivX - 28 of 48 - "MI-S01E09.r23" yEnc ::: //\'Mission: Impossible\' - 1x09 - NTSC - DivX - 01 of 48 - "MI-S01E09.nfo" (1/1)',
  60
), (
  200,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")(yEnc)?( )?$/',
  1,
  '//"Batman - S2E58-Ice Spy.par2"yEnc ::: //"Black Sheep Squadron 1x03 Best Three Out of Five.par2"',
  65
), (
  201,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\(Not My Rip\\).+ \\d+ (- \\d+) .+ yEnc$/',
  1,
  '//"Guns of Will Sonnett - 1x04.mp4" (Not My Rip)Guns Of Will Sonnett Season 1 1 - 26 Mp4 With Pars yEnc',
  70
), (
  202,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/',
  1,
  '//(01/10) "Watch_With_Mother-Bill_And_Ben-1953_02_12-Scarecrow-VHSRip-XviD.avi" - 162.20 MB - yEnc',
  75
), (
  203,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^\\(.+\\)  "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\[\\d+\\/(\\d+\\]) (Last One I Have! )?yEnc$/',
  1,
  '//(Our Gang - Little Rascals  DVDRips)  "Our Gang -  The Lucky Corner (1936).part0.sfv" [01/19] yEnc ::: //(Our Gang - Little Rascals  DVDRips)  "Our Gang -  Wild Poses (1933).part.par" [02/20] Last One I Have! yEnc',
  80
), (
  204,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^.+ Usenet Past .+\\[\\d+\\/(\\d+\\]) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[EnJoY] =>A Blast from Usenet Past (1/3)<= [00/14] - "Mcdonalds Training Film - 1972 (Vhs-Mpg).part.nzb" yEnc',
  85
), (
  205,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^<OPA_TV> \\[\\d+\\/(\\d+\\]) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<OPA_TV> [01/12] - "Yancy Derringer - 03 - Geheime Fracht.par2" yEnc',
  90
), (
  206,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^.+ [\\[\\(]\\d+( of |\\/)(\\d+[\\]\\)])[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//77 Sunset Strip 409 [1 of 23] "77 Sunset Strip 409 The Missing Daddy Caper.avi.vol63+34.par2" yEnc ::: //Barney.Miller.NZBs [001/170] - "Barney.Miller.S01E01.Ramon.nzb" yEnc',
  95
), (
  207,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^.+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") [\\[\\(]\\d+\\/(\\d+[\\]\\)]) yEnc$/',
  1,
  '//All in the Family - missing eps - DVDRips  "All in the Family - 6x23 Gloria & Mike\'s House Guests.part5.rar" [08/16] yEnc ::: //Amos \'n\' Andy - more shows---read info.txt  "Amos \'n\' Andy S01E00 Introduction of the Cast.mkv.001" (002/773) yEnc',
  100
), (
  208,
  '^alt\\.binaries\\.classic\\.tv\\.shows$',
  '/^(?P<match0>.+\\d+x\\d+.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})( yEnc)?( (Series|Season) Finale)?$/',
  1,
  '//Andy Gr',
  105
), (
  209,
  '^alt\\.binaries\\.comics$',
  '/^\\((?P<match0>.+)\\)[ -]+\\[\\d+\\/\\d+\\][ -]+".+"[ -]+yEnc$/',
  1,
  '//(The Walking Dead Comics Volume 1) [10/18] - "walking dead 002.cbr" yEnc',
  5
), (
  210,
  '^alt\\.binaries\\.comics$',
  '/^(?P<match0>.+)[ -]+\\[COMIC\\][ -]+\\[\\d+\\/\\d+\\][ -]+".+"[ -]+yEnc$/i',
  1,
  '//The Strain -1-9 [Comic] [1/2] - "TSC.nfo" yEnc',
  10
), (
  211,
  '^alt\\.binaries\\.comics$',
  '/.*"(?P<match0>.{7,}?)(\\.part\\d*|\\.rar)?(\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '// Return anything between the quotes.',
  15
), (
  212,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/\\d{4}\\.(\\d{2}\\.){2} - "(?P<match0>.+?)\\.cb[rz]" yEnc$/i',
  1,
  '//New Releases 2014.3.20 - "The Silver Surfer 012 (1970-01) (digital) (milton19-Empire).cbr" yEnc',
  5
), (
  213,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/(Req?: )+(?P<match0>.+?) - File \\d+ of \\d+ - yEnc$/i',
  1,
  '//Re: Req: Dark Tower - The Battle of Jericho Hill 05 (of 05) TIA - File 1 of 1 - yEnc',
  10
), (
  214,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/\\|\\| \\d{4} \\|\\| - "(?P<match0>.+?)\\.cb[rz]" \\[\\d+\\/\\d+\\] yEnc$/i',
  1,
  '//Amazing Spider-man 306 || FB-DCP scan || 1988 || - "Amazing Spider-man 306 (1988)(FB-DCP)(C2C).CBR" [3/7] yEnc',
  15
), (
  215,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/\\s+\\[\\d+\\/\\d+\\]\\s+(-\\s+)?(?P<match0>[A-Z0-9].+?)(\\[.*?(starv|RexTyler).*?\\])?\\.cb[rz](\\.par2)?\\s+yEnc$/i',
  1,
  '//All-Star Squadron Preview 00 (1981) [HQ rescan] [1/5] - All-Star Squadron Preview 00 (Aug 1981) [HQ rescan] [RexTyler].cbr yEnc ::: //Mad Color Classics (1st time as true CBR) - [1/1] Mad Color Classics 04 {FIXED} (c2c) [True CBR by RexTyler].cbr yEnc ::: //Comico Christmas Special (1988) - [1/5] Comico Christmas Special (1988) [starv].cbr.par2 yEnc',
  20
), (
  216,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/\\s+-\\s+File \\d+ of \\d+\\s+-\\s+(?P<match0>[A-Z0-9].+?)\\.(cb[rz]|rar)\\s+yEnc$/i',
  1,
  '//0-Day 2013.8.28 - "Ultimate Comics Spider-Man 026 (2013) complete/unbroken - File 1 of 1 - Ultimate Comics Spider-Man 026 (2013) (Digital) (Zone-Empire).cbr yEnc ::: //Ultimate Comics Spider-Man 026 - File 1 of 1 - Ultimate Comics Spider-Man 026 (2013) (Digital) (Zone-Empire).rar yEnc',
  25
), (
  217,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/^(?P<match0>[a-z0-9].+?)\\s+-\\s+File \\d+ of \\d+\\s+-\\s+yEnc$/i',
  1,
  '//Grimm Fairy Tales Myths & Legends 12 - File 1 of 1 - yEnc',
  30
), (
  218,
  '^alt\\.binaries\\.comics\\.dcp$',
  '/.*"(?P<match0>{7,}+?)(\\.part\\d*|\\.rar)?(\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '// Return anything between the quotes.',
  35
), (
  219,
  '^alt\\.binaries\\.comp$',
  '/^\\(\\d+\\/\\d+\\) .+? post (?P<match0>.+?) ".+?" yEnc$/',
  1,
  '//(45/74) NikJosuf post Magento tutorials "43 - Theming Magento 19 - Adding a Responsive Slideshow.mp4" yEnc',
  5
), (
  220,
  '^alt\\.binaries\\.comp$',
  '/^(?P<match0>.{5,}?) \\(\\d+\\/\\d+\\) ".+?" - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//Photo Mechanic 5.0 build 13915 (1/6) "Photo Mechanic 5.0 build 13915 (1).par2" - 32,97 MB - yEnc',
  10
), (
  221,
  '^alt\\.binaries\\.comp$',
  '/^\\((?P<match0>[a-zA-Z0-9. ]{10,}?)\\) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//(Advanced SystemCare Pro 6.3.0.269 Final ML Incl Serial) [01/10] - "Advanced SystemCare Pro 6.3.0.269 Final ML Incl Serial.nfo" yEnc',
  15
), (
  222,
  '^alt\\.binaries\\.comp$',
  '/^\\[\\d+\\/\\d+ (?P<match1>.+?)(\\.(part\\d*|rar|avi|iso|mp4|mkv|mpg))?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//[01/21 Geroellheimer - S01E03 - Swimming Pool Geroellheimer - S01E03 - Swimming Pool.mp4.001" yEnc',
  20
), (
  223,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^(?P<match0>[\\w.]+?-?PS3-[a-zA-Z0-9]+) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Railfan_JPN_JB_PS3-Caravan [02/88] - "cvn-railfjb.par2" yEnc ::: //Madagascar.Kartz.German.JB.PS3-ATAX [01/40] - "atax-mkgjp.nfo" ::: //Saints_Row_The_Third_The_Full_Package_EUR-PS3-SPLiT [61/87] - "split-sr3fullpps3.r58" yEnc',
  5
), (
  224,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^\\(\\d+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w.]{10,}?PS3-[A-Za-z0-9]+?)\\..+?" yEnc$/',
  1,
  '//(4168) [00/24] - "Legend.Of.The.Guardians.Owls.GaHoole.USA.JB.PS3-PSFR33.nzb" yEnc',
  10
), (
  225,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^\\[\\d+\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\] \\(\\d+\\/\\d+\\) ".+?" yEnc$/',
  1,
  '//[4230]-[ABGX.net]-[ Air_Conflicts_Pac',
  15
), (
  226,
  '^alt\\.binaries\\.console\\.ps3$',
  '/\\.: (?P<match0>.+):. - .:www\\.thunder-news\\.org:. - .:sponsored by secretusenet\\.com:\\. - ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//.: Birds_of_Steel_PS3-ABSTRAKT :. - .:www.thunder-news.org:. - .:sponsored by secretusenet.com:. - "as-bos.r39" yEnc',
  20
), (
  227,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^"(?P<match0>.+)__www.realmom.info__.+" \\(\\d+\\/(\\d+\\)) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//"Armored_Core_V_PS3-ANTiDOTE__www.realmom.info__.r00" (03/78) 3,32 GB yEnc',
  25
), (
  228,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^"(?P<match0>.+)__www.realmom.info__.+"  (\\d+[.,]\\d+ [kKmMgG][bB]) yEnc$/',
  1,
  '//"Ace.Combat.Assault.Horizon.PS3-DUPLEX__www.realmom.info__.nfo"  7,14 GB yEnc',
  30
), (
  229,
  '^alt\\.binaries\\.console\\.ps3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Angry Birds USA PSN PSP-NRP.exe" yEnc',
  35
), (
  230,
  '^alt\\.binaries\\.cores$',
  '/^Film - (\\[\\d+\\/\\d+\\] - )?"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Film - [13/59] - "Jerry Maguire (1996) 1080p DTS multisub HUN HighCode-PHD.part13.rar" yEnc ::: //Film - "Phone.booth.2003.RERIP.Bluray.1080p.DTS-HD.x264-Grym.part001.rar" yEnc',
  5
), (
  231,
  '^alt\\.binaries\\.cores$',
  '/^\\[Art-Of-Use\\.Net\\] :: \\[.+?\\] :: - \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Art-Of-Use.Net] :: [AUTO] :: - [34/36] - "ImmoralLive.13.11.10.Immoral.Orgies.Rikki.Six.Carmen.Callaway.And.Amanda.Tate.XXX.1080p.MP4-KTR.vol15+16.par2" yEnc',
  10
), (
  232,
  '^alt\\.binaries\\.cores$',
  '/^brothers-of-usenet\\.info\\.net.+SSL-News\\.info-----(?P<match0>.+) - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info.net Partner von---- SSL-News.info-----  brothers-of-usenet.info.net Partner von---- SSL-News.info-----AVG.Internet.Security.2014.Build.4335.x86.x64 - "AVG.Internet.Security.2014.Build.4335.vol00+01.PAR2" - 315,68 MB - yEnc',
  15
), (
  233,
  '^alt\\.binaries\\.cores$',
  '/^>+GOU<+ (?P<match0>.+?) >+www\\..+?<+ - \\(\\d+\\/\\d+\\) - ".+?" yEnc$/',
  1,
  '//>GOU<< ZDF.History.Das.Geiseldrama.von.Gladbeck.GERMAN.DOKU.720p.HDTV.x264-TVP >>www.SSL-News.info< - (02/35) - "tvp-gladbeck-720p.nfo" yEnc',
  20
), (
  234,
  '^alt\\.binaries\\.cores$',
  '/^<<<usenet-space-cowboys\\.info.+secretusenet\\.com>>> \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<<<usenet-space-cowboys.info>>> USC <<<Powered by https://secretusenet.com>>> [22/26] - "Zombie.Tycoon.2.Brainhovs.Revenge-SKIDROW.vol00+1.par2" - 1,85 GB yEnc',
  25
), (
  235,
  '^alt\\.binaries\\.cores$',
  '/^.+Usejunkies.tk.+ \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//::: Usejunkies.tk ::: - [01/11] - "DJ Shog - DNA - HD 720p.par2" - 47,76 MB yEnc',
  30
), (
  236,
  '^alt\\.binaries\\.cores$',
  '/^\\(\\d+\\/\\d+\\).+Usejunkies.tk.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(5/9) :...Usejunkies.tk...:----"Leawo.Blu-ray.Ripper.v4.4.0.rar.vol003+04.par2" - 30.94 MB - yEnc',
  35
), (
  237,
  '^alt\\.binaries\\.cores$',
  '/^\\(.+s\\d+e\\d+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(Grimms03e10) [6/9] - "Grimm_S03E10_Eyes_of_the_Beholder.avi.vol007+08.PAR2"Grimm S03E10  yEnc',
  40
), (
  238,
  '^alt\\.binaries\\.cores$',
  '/^[a-zA-Z0-9]+ post voor u op www\\..+? - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Jipejans post voor u op www.Dreamplace.biz - [010/568] - "Alien-Antology-DC-Special-Edition-1979-1997-1080p-GER-HUN-HighCode.part009.rar" yEnc ::: //Egbert47 post voor u op www.nzbworld.me - [01/21] - "100 Hits - Lady Sings The Blues 2006 (5cd\'s).par2" yEnc',
  45
), (
  239,
  '^alt\\.binaries\\.cores$',
  '/^>+ .+?\\.info [<>+]+ .+?\\.com <+ "(?P<match0>.+?)\\s+- .*?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - .+? yEnc$/',
  1,
  '//>>> usenet4ever.info <<<+>>> secretusenet.com <<< "Weltnaturerbe USA Grand Canyon Nationalpark 2012 3D Blu-ray untouched  - DarKneSS.part039.rar" - DarKneSS yEnc',
  50
), (
  240,
  '^alt\\.binaries\\.cores$',
  '/^Old\\s+Dad\\s+uppt?\\s*?(?P<match0>.+?)( mp4| )?\\[?\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Old Dad uppt   Der gro?e Gatsby   BD Rip AC3 Line XvidD German  01/57] - "Der gro?e Gatsby.par2" yEnc',
  55
), (
  241,
  '^alt\\.binaries\\.cores$',
  '/^[A-Za-z]+ - \\[\\d+\\/\\d+\\] - "\\d+-(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//panter - [46/60] - "68645-Busty Beauties Car Wash XXX 3D BD26.part45.rar" yEnc ::: //Wildrose - [01/57] - "49567-Kleine Rode Tractor Buitenpret.par2" yEnc',
  60
), (
  242,
  '^alt\\.binaries\\.cores$',
  '/^<kere\\.ws>[ _-]{0,3}\\w+(-\\w+)?[ _-]{0,3}\\d+[ _-]{0,3}(?P<match0>.+) - \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+?("|#34;) yEnc$/i',
  1,
  '//<kere.ws> - FLAC - 1330543524 - Keziah_Jones-Femiliarise-PROMO_CDS-FLAC-2003-oNePiEcE - [01/11] - "00-keziah_jones-femiliarise-promo_cds-flac-2003-1.jpg" yEnc',
  65
), (
  243,
  '^alt\\.binaries\\.cores$',
  '/^Doobz (?P<match0>[a-zA-z-_]+) \\[\\d+\\/(\\d+\\]) - ".+([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Doobz Europa_Universalis_IV_Conquest_of_Paradise-FLT [10/54] - "flt-eucp.001" yEnc',
  70
), (
  244,
  '^alt\\.binaries\\.cores$',
  '/^\\(aangemeld bij usenet collector\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(aangemeld bij usenet collector) [001/125] - "Northern_Exposure_Season_1_dvd_1.par2" yEnc',
  75
), (
  245,
  '^alt\\.binaries\\.cores$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+usenet-space-cowboys\\.info.+ yEnc$/',
  1,
  '//[15/16] - "Person.of.Interest.S03E09.480p.HDTV.x264-mSD.vol0+1.par2" - 177,28 MB <-> usenet-space-cowboys.info <-> powered by secretusenet.com <-> yEnc',
  80
), (
  246,
  '^alt\\.binaries\\.cores$',
  '/^brothers-of-usenet\\.info.+ - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info&net-empfehlen-ssl-news.info Black Mirror s01e01 - Der wille des volkes - [09/15] - "Black Mirror - S01E01 - Der Wille des Volkes.vol00+01.par2" yEnc',
  85
), (
  247,
  '^alt\\.binaries\\.cores$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+yEnc$/',
  1,
  '//(024/264) "Enf.S04E02.G.D.H.X-M.vol51+46.PAR2" - 8,27 GB -Enf.S04.G.D.H.X yEnc',
  90
), (
  248,
  '^alt\\.binaries\\.cores$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/i',
  1,
  '//[01/10] - "Wondershare.Video.Converter.Ultimate.v6.7.1.0.Multilanguage.par2" - 45,44 MB yEnc',
  95
), (
  249,
  '^alt\\.binaries\\.cores$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//"8 Wenn ich einmal gross bin .mp3" Koelschefetz postet.Die Filue -Immer Wigger  yEnc',
  100
), (
  250,
  '^alt\\.binaries\\.cores$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) {0,3}yEnc$/',
  1,
  '//Adobe Photoshop Lightroom v5.2 - FiNaL - Multilingual [WIN].vol037+32.PAR2  yEnc',
  105
), (
  251,
  '^alt\\.binaries\\.dc$',
  '/^brothers-of-usenet.+? \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] yEnc$/',
  1,
  '//brothers-of-usenet.info&net-empfehlen-ssl-news.info (02/51) "Paul.Panzer.-.Hart.Backbord.2012.German.PAL.DVDR-icq4711.part01.rar" - 4,33 GB yEnc',
  5
), (
  252,
  '^alt\\.binaries\\.dc$',
  '/^"(?P<match0>[\\w.]{10,}-[a-zA-Z0-9]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"The.Crow.1994.German.DL.PAL.HD2DVD.DVDR-Braunbaer.par2" yEnc',
  10
), (
  253,
  '^alt\\.binaries\\.dc$',
  '/^[A-Z0-9].+? postet\\s+.+?\\s+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w.-]{10,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Eragon postet  The Secret of Crickley Hall  S01E02  german Sub hardcodet      [02/28] - "the_secret_of_crickley_hall.1x02.hdtv_x264-fov_arc.par2" yEnc',
  15
), (
  254,
  '^alt\\.binaries\\.dc$',
  '/^[A-Z0-9].+? postet\\s+(?P<match0>.+?)\\.?\\s+\\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Eragon postet Hart of Dixie S02E13 german Sub hardcodet. [02/21] - "hart of dixie S02E13.par2" yEnc',
  20
), (
  255,
  '^alt\\.binaries\\.dc$',
  '/^>GOU<< - "(?P<match0>.+?)\\.rar" yEnc$/',
  1,
  '//>GOU<< - "Internet Download Manager 6.15 Build 1.rar" yEnc',
  25
), (
  256,
  '^alt\\.binaries\\.dc$',
  '/^(?P<match0>[\\w.]{8,}-[a-zA-Z0-9]+) - ".+?" yEnc$/',
  1,
  '//Die.wahren.Faelle.des.NCIS.S01E06.Mord.ohne.Skrupel.GERMAN.DOKU.WS.BDRip.XviD-MiSFiTS - "misfits-therealnciss01e06-xvid.par2" yEnc',
  30
), (
  257,
  '^alt\\.binaries\\.dc$',
  '/^(?P<match0>[\\w.]{10,})".+?" yEnc$/',
  1,
  '//Double.Team.1997.German.FSK18.AC3.DVDRiP.XViD"team-xvid.oppo.par2" yEnc',
  35
), (
  258,
  '^alt\\.binaries\\.divx\\.french$',
  '/^\\.oO "(?P<match0>.+)__www.realmom.info__.+" Oo. \\[\\d+\\/\\d+\\] \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//.oO "20.Years.After.German.2008.AC3.BDRip.XviD.INTERNAL-ARC__www.realmom.info__.nfo" Oo. [02/39] 1,43 GB yEnc',
  5
), (
  259,
  '^alt\\.binaries\\.documentaries$',
  '/^#sterntuary - (?P<match0>.+? - ".+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//#sterntuary - Alex Jones Radio Show - "05-03-2009_INFO_BAK_ALJ.nfo" yEnc',
  5
), (
  260,
  '^alt\\.binaries\\.documentaries$',
  '/^\\(\\d+\\/(\\d+\\)) "((BBC|ITV) )?(?P<match0>.+?)(\\.part\\d+)?(\\.(par2|(vol.+?))"|\\.[a-z0-9]{3}"|") - \\d.+? - (\\d.+? -)? yEnc$/',
  1,
  '//(08/25) "Wild Russia 5 of 6 The Secret Forest 2009.part06.rar" - 47.68 MB - 771.18 MB - yEnc ::: //(01/24) "ITV Wild Britain With Ray Mears 1 of 6 Deciduous Forest 2011.nfo" - 4.34 kB - 770.97 MB - yEnc ::: //(24/24) "BBC Great British Garden Revival 03 of 10 Cottage Gardens And House Plants 2013.vol27+22.PAR2" - 48.39 MB - 808.88 MB - yEnc',
  10
), (
  261,
  '^alt\\.binaries\\.documentaries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\(\\d+\\/\\d+\\).+yEnc$/',
  1,
  '//"Fat Head 2009 Tom Naughton (why we get fat documentary) XVID.par2" (01/66) Paleo Low Carb Gluten-Free Diet yEnc',
  15
), (
  262,
  '^alt\\.binaries\\.documentaries$',
  '/^\\[(?P<match0>.+?MVGroup)\\]-\\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[David.Attenboroughs.Natural.Curiosities.2013.5of5.Seeing.the.Pattern.720p.HDTV.x264.AAC-MVGroup]-[03/21] - "danc-e05.r00" yEnc',
  20
), (
  263,
  '^alt\\.binaries\\.documentaries$',
  '/^Battlefield S\\d S\\d+E\\d+ "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Battlefield S1 S01E04 "Battlefield.104.The.Battle.of.Stalingrad.nfo" yEnc',
  25
), (
  264,
  '^alt\\.binaries\\.documentaries$',
  '/^(?P<match0>.+?) <docu-drama> - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//BBC The Space Race 1to4of4 (2005) <docu-drama> - "BBC.SR01.par2" yEnc',
  30
), (
  265,
  '^alt\\.binaries\\.documentaries$',
  '/^\\[ (?P<match0>.+?) \\] \\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ BBC.Time.Machine.Part.1.of.3.2004.DVDRip.x264.AAC.Cht-Eng-Sub.D5799E84-GFC ] [01/17] - "gfc-tm1.sfv" yEnc ::: //[ Discovery.Channel.Discovery.Atlantis.1996.DVDRip.X264.AC3-xslidian ] [01/12] - "d-da.sfv" yEnc ::: //[ Mount.Fuji.2008.blu-ray.x264.720p.AC3-CHD ] [01/48] - "chd-mfj.sfv" yEnc',
  35
), (
  266,
  '^alt\\.binaries\\.documentaries$',
  '/.*[\\(\\[]\\d+-(\\d+[\\)\\]])[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}("|#34;)).+?yEnc$/',
  1,
  '//Rough Cut - Woodworking with Tommy Mac - Pilgrim Blanket Chest (1600s) DVDrip DivX - (02-17) "Rough.Cut-Woodworking.with.Tommy.Mac-Pilgrim.Blanket.Chest.1600s-DVDrip.DivX.2010.par2" - yEnc yEnc',
  40
), (
  267,
  '^alt\\.binaries\\.documentaries$',
  '/(?P<match0>Asia.+) - [\\(\\[]\\d+(\\|\\d+[\\)\\]])[-_\\s]{0,3}("|#34;).+?(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}("|#34;)).+?yEnc$/',
  1,
  '//Asia This Week (NHK World, 19 & 20 July 2013) - \'Malala\'s movement for girls\' education + Japan seeks imports from Southeast Asia - soccer players\' - (02|14) - "ATW-2013-07-20.par2" yEnc ::: //Asia Biz Forecast (NHK World, 6 & 7 July 2013) - \'China: limits of growth + Japan: remote access\' - (05|14) - "ABF-2013-07-07.part3.rar" yEnc',
  45
), (
  268,
  '^alt\\.binaries\\.documentaries$',
  '/(?P<match0>Asia.+) - File \\d+ of (\\d+)[-_\\s]{0,3}.+?(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}).+?yEnc$/',
  1,
  '//Asia Biz Forecast (NHK World, 16-17 June 2012) - "Japan seeks energy options" - File 01 of 14  - ABF-2012-06-16.nfo  (yEnc',
  50
), (
  269,
  '^alt\\.binaries\\.documentaries$',
  '/^.+? S\\d+E\\d+ - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  (\\d+[,.]\\d+ [kKmMgG][bB]ytes) yEnc$/',
  1,
  '//Dark MatterDark Energy S02E06 - "Dark Matter_Dark Energy S02E06 - The Universe - History Channel.part1.rar"  51.0 MBytes yEnc',
  55
), (
  270,
  '^alt\\.binaries\\.documentaries$',
  '/^.+Doc2011.+ \\d+\\/\\d+ - (?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) yEnc$/',
  1,
  '//-\'- Doc2011 -\'- 01/16 - Glorious.Accidents.2011.par2 yEnc',
  60
), (
  271,
  '^alt\\.binaries\\.documentaries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") {1,2}yEnc$/',
  1,
  '//"BBC.The.Treasures.of.Ancient.Rome.1of3.Warts.n.All.720p.HDTV.x264.AAC.MVGroup.org.mkv.025" yEnc',
  65
), (
  272,
  '^alt\\.binaries\\.documentaries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") -  \\[\\d+ of \\d+ - \\d+([,.]\\d+)? [kKmMgG][bB]\\] yEnc$/',
  1,
  '//"Time Team - 2012 - 05 - Beadnell, Northumbria.par2" -  [01 of 84 - 64 kb] yEnc',
  70
), (
  273,
  '^alt\\.binaries\\.documentaries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}yEnc$/',
  1,
  '//"Lang Lang - Mendelssohn.m4v"  [2/9]  yEnc',
  75
), (
  274,
  '^alt\\.binaries\\.documentaries$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+yEnc$/',
  1,
  '//(06/24) "BBC Upgrade Me 2009.part04.rar" - 47.68 MB - 807.79 MB - yEnc',
  80
), (
  275,
  '^alt\\.binaries\\.documentaries$',
  '/\\(\\d+\\/(\\d+\\) - .+) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/',
  1,
  '//(35/45) - Keating Pt4 - "Keating Pt4.part34.rar" - 1.77 GB - yEnc',
  85
), (
  276,
  '^alt\\.binaries\\.documentaries$',
  '/^\\(.+?\\)\\[\\d+\\/(\\d+\\][-_\\s]{0,3}.+?)[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//(World Air Routes - WESTJET - B737-700) [028/109] - "World Air Routes - WESTJET - B737-700.part027.rar" yEnc',
  90
), (
  277,
  '^alt\\.binaries\\.documentaries$',
  '/(?P<match0>.+?) - [\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}("|#34;).+?(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//Beyond Vanilla (2010) Documentary DVDrip XviD-Uncut - (02/22) "Beyond.Vanilla.2010.Documentary.DVDrip.XviD-Uncut.par2" - yenc yEnc',
  95
), (
  278,
  '^alt\\.binaries\\.documentaries$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) - \\[\\d+\\/\\d+\\] yEnc$/',
  1,
  '//Michael Woods, The Story Of India - Beginnings 1of6.avi.013 - [14/62] yEnc',
  100
), (
  279,
  '^alt\\.binaries\\.documentaries$',
  '/^PBS.+\\(\\d+\\/\\d+\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//PBS Nature The Private L',
  105
), (
  280,
  '^alt\\.binaries\\.documentaries$',
  '/^PBS.+\\[\\d+ of \\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//PBS - Inside Nature\'s Giants - Big Cats [100 of 101] "PBS - Inside Nature\'s Giants - Big Cats.m4v.vol970+143.par2" yEnc',
  110
), (
  281,
  '^alt\\.binaries\\.documentaries$',
  '/^\\d+\\/\\d+ "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//59/63 "Gates Of Heaven.vol023+19.PAR2" yEnc',
  115
), (
  282,
  '^alt\\.binaries\\.documentaries$',
  '/^(?P<match0>.+?) \\(\\d+\\|\\d+\\) - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Asia Biz Forecast (NHK World, 9 & 10 November 2013) - \'Mizuho: Shadow banking\' (01|14) - "ABF-2013-11-09.nfo" yEnc',
  120
), (
  283,
  '^alt\\.binaries\\.documentaries$',
  '/^[\\w ]+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")(.+[\\(\\[]\\d+\\/\\d+[\\)\\]])?[-_\\s]{0,3}yEnc$/',
  1,
  '//TG1 "Top.gear.the.perfect.road.trip.2013.vol0000+128.PAR2" :: [01/10] yEnc',
  125
), (
  284,
  '^alt\\.binaries\\.documentaries$',
  '/^\\[(?P<match0>[\\w- ]+)\\]-\\[\\d+\\/\\d+\\] - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Walmart - The High Cost of Low Prices]-[28/59] - "wthcolp.part26.rar" yEnc',
  130
), (
  285,
  '^alt\\.binaries\\.documentaries$',
  '/^\\[[\\w- ]+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[SR09-0013] - "America Revealed E02 Nation On The Move (2012) x264 720p AC3 5.1.nfo" yEnc',
  135
), (
  286,
  '^alt\\.binaries\\.documentaries$',
  '/^(?P<match0>[\\w- ]+.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Panzer III - Medium Tank The German War Files - Panzer III - Germany\'s WWII Medium Tank.part05.rar" yEnc',
  140
), (
  287,
  '^alt\\.binaries\\.documentaries$',
  '/^\\(World Air Routes.+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(World Air Routes - Turkish Airlines B777-300ER) [001/114] - "World Air Routes - Turkish Airlines B777-300ER.par2" yEnc',
  145
), (
  288,
  '^alt\\.binaries\\.documentaries$',
  '/\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>.+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [001/137] - "BBC.Attenborough.Zoo.Quest.Assorted.WebRips.par2" yEnc',
  150
), (
  289,
  '^alt\\.binaries\\.documentaries$',
  '/^dokus4alle presents \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//dokus4alle presents (01/52) "BBC.Tweed.1of3.Trouble.Looms.H264.AAC.nfo" - 603.24 MB - yEnc',
  155
), (
  290,
  '^alt\\.binaries\\.documentaries$',
  '/^\\[U4A\\]-\\[(?P<match0>.+)\\]-\\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[U4A]-[After Porn Ends DOCU WEBRip X264 AAC]-[01/65] - "after.porn.ends.par2" yEnc',
  160
), (
  291,
  '^alt\\.binaries\\.dvd$',
  '/^thnx to original poster \\[\\d+(?P<match0>\\/\\d+\\] - ".+?)(\\.part\\d*|\\.rar)?(\\.vol.+?|\\.[A-Za-z0-9]{2,4})("| ).+? yEnc$/',
  1,
  '//thnx to original poster [00/98] - "2669DFKKFD2008.nzb  2669DFKKFD2008 " yEnc',
  5
), (
  292,
  '^alt\\.binaries\\.dvd\\.movies$',
  '/^Skata - (?P<match0>.+) \\(\\d+ \\/ \\d+\\) - ".+" yEnc$/',
  1,
  '//Skata - Clouzot - Messa Da Requiem (49 / 79) - "Skata - Clouzot - MDR.part47.rar" yEnc',
  5
), (
  293,
  '^alt\\.binaries\\.dvd\\.movies$',
  '/\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(????) [02361/43619] - "18j  Amy-superlange Beine.exe" yEnc',
  10
), (
  294,
  '^alt\\.binaries\\.dvd\\.movies$',
  '/.*"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//Mutant.Chronicles.German.2008.AC3.DVDRip.XviD.(01/40) "Mutant.Chronicles.German.2008.AC3.DVDRip.XviD.nfo" yEnc',
  15
), (
  295,
  '^alt\\.binaries\\.dvdr$',
  '/^(?P<match0>[a-zA-Z].+) \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//Golem.The.Petr',
  5
), (
  296,
  '^alt\\.binaries\\.dvd-german$',
  '/^\\.oO "(?P<match0>.+)__www.realmom.info__.+" Oo. \\[\\d+\\/\\d+\\] \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//.oO "20.Years.After.German.2008.AC3.BDRip.XviD.INTERNAL-ARC__www.realmom.info__.nfo" Oo. [02/39] 1,43 GB yEnc',
  5
), (
  297,
  '^alt\\.binaries\\.dvd-r$',
  '/^katanxya "(?P<match0>katanxya\\d+)/',
  1,
  '//katanxya "katanxya7221.par2" yEnc',
  5
), (
  298,
  '^alt\\.binaries\\.dvd-r$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[A-Z0-9](19|20)\\d\\d[01]\\d[123]\\d_\\d+\\.).+?" - \\d+[,.]\\d+ [mMkKgG][bB] yEnc$/',
  1,
  '//[01/52] - "H1F3E_20130715_005.par2" - 4.59 GB yEnc',
  10
), (
  299,
  '^alt\\.binaries\\.ebook$',
  '/^New eBooks.+[ _-]{0,3}("|#34;)(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(par|vol|rar|nfo).*?("|#34;)/i',
  1,
  '//New eBooks 8 June 2013 - "Melody Carlson - [Carter House Girls 08] - Last Dance (mobi).rar"',
  5
), (
  300,
  '^alt\\.binaries\\.ebook$',
  '/www.nzbworld.me - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc/',
  1,
  '//Rowwendees post voor u op www.nzbworld.me - [0/6] - "Animaniacs - Lights, Camera, Action!.nzb" yEnc (1/1)',
  10
), (
  301,
  '^alt\\.binaries\\.ebook$',
  '/^Re:(Req:)? [\\w:\\()\\?\\\' -]+ - (?P<match0>[\\w ,.\\()\\[\\]-]{8,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/i',
  1,
  '//Re: Tune In: The Beatles: All These Years (Mark Lewisohn) - Lewisohn, Mark - Tune In- the Beatles- All These Years, Volume 01 -  [epub].rar  yEnc ::: //Re: REQ: Robert Edsel The Monuments Men - Edsel, Robert M - The Monuments Men- Allied Heroes, Nazi Thieves, and the Greatest Treasure Hunt in History (Retail) [epub].rar  yEnc',
  15
), (
  302,
  '^alt\\.binaries\\.ebook$',
  '/\\((.+works)\\) \\[\\d+\\/(\\d+\\]) - (?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(mobi|pdf|epub|html|azw)" yEnc$/',
  1,
  '//(Zelazny works) [36/39] - "Roger Zelazny - The Furies.mobi" yEnc',
  20
), (
  303,
  '^alt\\.binaries\\.ebook$',
  '/^\\([a-zA-Z ]+ sampler\\) \\[\\d+(\\/\\d+\\]) - "(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//(Joan D Vinge sampler) [17/17] - "Joan D Vinge - World\'s End.txt" yEnc',
  25
), (
  304,
  '^alt\\.binaries\\.ebook$',
  '/^New - Retail -( Juvenile Fiction -)? "(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//New - Retail - Juvenile Fiction - "Magic Tree House #47_ Abe Lincoln at Last! - Mary Pope Osborne & Sal Murdocca.epub" yEnc ::: //New - Retail - "Linda Howard - Cover of Night.epub" yEnc ::: //New - Retail - "Kylie Logan_Button Box Mystery 01 - Button Holed.epub" yEnc',
  30
), (
  305,
  '^alt\\.binaries\\.ebook$',
  '/^\\(No\\. 1 Ladies Detective Agency\\) \\[\\d+(\\/\\d+\\]) - "(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//(No. 1 Ladies Detective Agency) [04/13] - "Alexander McCall Smith - No 1-12 - The Saturday Big Tent Wedding Party.mobi" yEnc',
  35
), (
  306,
  '^alt\\.binaries\\.ebook$',
  '/^\\[\\d+\\/(\\d+\\]) (?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)\\.(txt|pdf|mobi|epub|azw)/',
  1,
  '//[25/33] Philip Jose Farmer - Toward the Beloved City [ss].mobi ::: //[2/4] Graham Masterton - Descendant.mobi',
  40
), (
  307,
  '^alt\\.binaries\\.ebook$',
  '/(.+)[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")([-_\\s]{0,3}yEnc){1,2}$/i',
  1,
  '//(NordicAlbino) [01/10] - "SWHQ_NA_675qe0033102suSmzSE.sfv" yEnc ::: //365 Sex Positions A New Way Every Day for a Steamy Erotic Year [eBook] - (1/5) "365.Sex.Positions.A.New.Way.Every.Day.for.a.Steamy.Erotic.Year.eBook.nfo" - yenc yEnc',
  45
), (
  308,
  '^alt\\.binaries\\.ebook$',
  '/^\\[\\d+\\/\\d+\\] .+? - "(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") yEnc$/',
  1,
  '//[001/125] (NL Epub Wierook Set 49) - "Abulhawa, Susan - Litteken van David_Ochtend in Jenin.epub" yEnc',
  50
), (
  309,
  '^alt\\.binaries\\.ebook$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(1/1) "Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW.pdf" - 162,82 MB - (Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW) yEnc',
  55
), (
  310,
  '^alt\\.binaries\\.ebook$',
  '/^\\(\\d+\\/\\d+\\) ".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])?[-_\\s]{0,3}"(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)" yEnc$/',
  1,
  '//(1/7) "0865779767.epub" - 88,93 MB - "Anatomic Basis of Neurologic Diagnosis - epub" yEnc',
  60
), (
  311,
  '^alt\\.binaries\\.ebook$',
  '/^(Attn:|Re: REQ:|New Scan).+?[-_\\s]{0,3}"(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}(\\d+[.,]\\d+ [kKmMgG][bB](ytes)?)? yEnc$/i',
  1,
  '//Re: REQ: Jay Lake\'s Mainspring series/trilogy (see titles inside) - "Lake, Jay - Clockwork Earth 03 - Pinion [epub].rar"  405.6 kBytes yEnc ::: //Attn: Brownian - "del Rey, Maria - Paradise Bay (FBS).rar" yEnc ::: //New Scan "Herbert, James - Sepulchre (html).rar" yEnc',
  65
), (
  312,
  '^alt\\.binaries\\.ebook$',
  '/.*"(?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"Gabaldon, Diana - Outlander [5] The Fiery Cross.epub" yEnc ::: //Kiny Friedman "Friedman, Kinky - Prisoner of Vandam Street_ A Novel, The.epub" yEnc',
  70
), (
  313,
  '^alt\\.binaries\\.ebook$',
  '/(.+?)[-_ ]{0,4}\\d+\\/\\d+[-_\\s]{0,3}(?P<match0>[\\w. &\\\'\\()\\[\\]-]{8,}?\\b.?)\\.(txt|pdf|mobi|epub|azw)"( \\(\\d+\\/\\d+\\))?( )?$/',
  1,
  '//Patterson flood - Mobi -  15/45  "James Patterson - AC 13 - Double Cross.mobi"',
  75
), (
  314,
  '^alt\\.binaries\\.ebook$',
  '/^--- (?P<match0>[\\w., &\\\'\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//--- Michael Dobbs - House of Cards.mobi  yEnc',
  80
), (
  315,
  '^alt\\.binaries\\.ebook$',
  '/^\\\'(?P<match0>[\\w. &\\\'\\()\\[\\]-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})\\\'[-_\\s]{0,3}yEnc$/',
  1,
  '//\'Steel\'s Edge - Ilona Andrews.epub\'  yEnc',
  85
), (
  316,
  '^alt\\.binaries\\.ebook$',
  '/^\\[\\d+ of \\d+\\][-_\\s]{0,3}(?P<match0>[\\w. &\\\'\\()\\[\\]-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//[1 of 1] - Howard Gordon - Gideon\'s War & Hard Target.epub  yEnc',
  90
), (
  317,
  '^alt\\.binaries\\.ebook$',
  '/^(?P<match0>[\\w. &\\\'\\[\\]-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//1 Playboy-Ausgabe vom Jnner 1953 [RARITT].rar  yEnc',
  95
), (
  318,
  '^alt\\.binaries\\.ebook$',
  '/^.+ - (?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4}[-_\\s]{0,3}yEnc$/',
  1,
  '//Re: Req: Please, does anyone have Scott Berg\'s Wilson biography? MTIA... - A. Scott Berg - Wilson.epub  yEnc',
  100
), (
  319,
  '^alt\\.binaries\\.ebook$',
  '/.*"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)\\.[A-Za-z0-9]{2,4}"[-_\\s]{0,3}yEnc$/',
  1,
  '//REQ: "Keep it Pithy" by Bill O\'Reilly "Keep It Pithy - Bill O\'Reilly.epub"yEnc',
  105
), (
  320,
  '^alt\\.binaries\\.ebook$',
  '/^(?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4}.+[-_\\s]{0,3}yEnc$/',
  1,
  '//For Your Eyes Only - Ian Fleming.epub - answering my own request  yEnc',
  110
), (
  321,
  '^alt\\.binaries\\.e-book$',
  '/^New eBooks.+[ _-]{0,3}("|#34;)(?P<match0>.+?.+)\\.(par|vol|rar|nfo).*?("|#34;)/i',
  1,
  '//New eBooks 8 June 2013 - "Melody Carlson - [Carter House Girls 08] - Last Dance (mobi).rar"',
  5
), (
  322,
  '^alt\\.binaries\\.e-book$',
  '/^Doctor Who - Target Books \\[\\d+\\/(\\d+\\]) - "DW[0-9]{0,3}[-_\\s]{0,3}(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//Doctor Who - Target Books [128/175] - "DW125_ Terror of the Vervoids - Pip Baker.mobi" yEnc',
  10
), (
  323,
  '^alt\\.binaries\\.e-book$',
  '/^\\((?P<match0>[a-zA-Z0-9 -]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(American Curves - Summer 2012) [01/10] - "AMECURSUM12.par2" yEnc',
  15
), (
  324,
  '^alt\\.binaries\\.e-book$',
  '/(.+)[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(NordicAlbino) [01/10] - "SWHQ_NA_675qe0033102suSmzSE.sfv" yEnc ::: //365 Sex Positions A New Way Every Day for a Steamy Erotic Year [eBook] - (1/5) "365.Sex.Positions.A.New.Way.Every.Day.for.a.Steamy.Erotic.Year.eBook.nfo" - yenc yEnc',
  20
), (
  325,
  '^alt\\.binaries\\.e-book$',
  '/^[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}")([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])?[-_\\s]{0,3}yEnc$/',
  1,
  '//[1/8] - "Robin Lane Fox - Travelling heroes.epub" yEnc ::: //(1/1) "Unintended Consequences - John Ross.nzb" - 8.67 kB - yEnc',
  25
), (
  326,
  '^alt\\.binaries\\.e-book$',
  '/^[\\(\\[] .+? [\\)\\][-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}yEnc$/',
  1,
  '//[ Mega Dating and Sex Advice Ebooks - Tips and Tricks for Men PDF ] - "Vatsyayana - The Kama Sutra.pdf.rar" - (54/58) yEnc',
  30
), (
  327,
  '^alt\\.binaries\\.e-book$',
  '/^(WWII in Photos)[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}yEnc$/',
  1,
  '//WWII in Photos - "WWII in Photos_05_Conflict Spreads Around the Globe - The Atlantic.epub" yEnc',
  35
), (
  328,
  '^alt\\.binaries\\.e-book$',
  '/^.+?"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}\\[\\d+ of (\\d+\\])[-_\\s]{0,3}yEnc$/',
  1,
  '//Various ebooks on History pdf format  "Chelsea House Publishing Discovering U.S. History Vol. 8, World War I and the Roaring Twenties - 1914-1928 (2010).pdf"  [1 of 1] yEnc',
  40
), (
  329,
  '^alt\\.binaries\\.e-book$',
  '/.+[\\(\\[]\\d+ of \\d+[\\)\\]] "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//A few things -  [4 of 13] "Man From U.N.C.L.E. 08 - The Monster Wheel Affair - David McDaniel.epub" yEnc',
  45
), (
  330,
  '^alt\\.binaries\\.e-book$',
  '/.+[\\(\\[]\\d+\\/\\d+[\\)\\]] - "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") toby\\d+$/',
  1,
  '//DDR Kochbuch 1968-wir kochen gut [1/1] - "DDR Kochbuch 1968-wir kochen gut.pdf" toby042002',
  50
), (
  331,
  '^alt\\.binaries\\.e-book$',
  '/^.+?[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") [\\(\\[]\\d+\\/\\d+[\\)\\]] ([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])?[-_\\s]{0,3}yEnc$/',
  1,
  '//Pottermore UK retail - "Harry Potter and the Goblet of Fire - J.K. Rowling.epub" (05/14) - 907.57 kB - yEnc',
  55
), (
  332,
  '^alt\\.binaries\\.e-book$',
  '/^\\[\\d+\\/\\d+\\] .+? - "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") yEnc$/',
  1,
  '//[001/125] (NL Epub Wierook Set 49) - "Abulhawa, Susan - Litteken van David_Ochtend in Jenin.epub" yEnc',
  60
), (
  333,
  '^alt\\.binaries\\.e-book$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(1/1) "Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW.pdf" - 162,82 MB - (Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW) yEnc',
  65
), (
  334,
  '^alt\\.binaries\\.e-book$',
  '/^\\(\\d+\\/\\d+\\) ".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])?[-_\\s]{0,3}"(?P<match0>.+?)" yEnc$/',
  1,
  '//(1/7) "0865779767.epub" - 88,93 MB - "Anatomic Basis of Neurologic Diagnosis - epub" yEnc',
  70
), (
  335,
  '^alt\\.binaries\\.e-book$',
  '/^(Attn:|Re: REQ:|New Scan).+?[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}(\\d+[.,]\\d+ [kKmMgG][bB](ytes)?)? yEnc$/i',
  1,
  '//Re: REQ: Jay Lake\'s Mainspring series/trilogy (see titles inside) - "Lake, Jay - Clockwork Earth 03 - Pinion [epub].rar"  405.6 kBytes yEnc ::: //Attn: Brownian - "del Rey, Maria - Paradise Bay (FBS).rar" yEnc ::: //New Scan "Herbert, James - Sepulchre (html).rar" yEnc',
  75
), (
  336,
  '^alt\\.binaries\\.e-book$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"Gabaldon, Diana - Outlander [5] The Fiery Cross.epub" yEnc ::: //Kiny Friedman "Friedman, Kinky - Prisoner of Vandam Street_ A Novel, The.epub" yEnc',
  80
), (
  337,
  '^alt\\.binaries\\.e-book$',
  '/(.+?)[-_\\s]{0,3}\\d+\\/(?P<match0>\\d+[-_\\s]{0,3}".+?)\\.(txt|pdf|mobi|epub|azw)"( \\(\\d+\\/\\d+\\))?( )?$/',
  1,
  '//Patterson flood - Mobi -  15/45  "James Patterson - AC 13 - Double Cross.mobi"',
  85
), (
  338,
  '^alt\\.binaries\\.e-book$',
  '/\\d+\\/\\d+[-_\\s]{0,3}(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//04/63  Brave New World Revisited - Aldous Huxley.mobi  yEnc',
  90
), (
  339,
  '^alt\\.binaries\\.e-book$',
  '/^- (?P<match0>.+?)\\.(par|vol|rar|nfo)[-_\\s]{0,3}(.+)/',
  1,
  '//- Campbell, F.E. - Susan - HIT 125.rar  BDSM Themed Adult Erotica - M/F F/F - Rtf & Pdf',
  95
), (
  340,
  '^alt\\.binaries\\.e-book$',
  '/^"(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" \\(\\d+\\/(\\d+\\))/',
  1,
  '//"D. F. Jones - 03 - Colossus and The Crab.epub" (1/3)',
  100
), (
  341,
  '^alt\\.binaries\\.e-book$',
  '/^"(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw|lit|rar|nfo|par)" $/',
  1,
  '//"D. F. Jones - 01 - Colossus.epub" (note the space on the end)',
  105
), (
  342,
  '^alt\\.binaries\\.e-book$',
  '/^\\[\\d*+\\/(\\d+\\]) - "(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4} "|") yEnc$/',
  1,
  '//[01/19] - "13_X_Panzer_Tracts_EBook.nfo " yEnc',
  110
), (
  343,
  '^alt\\.binaries\\.e-book$',
  '/^\\[\\d+\\/(\\d+\\]) (?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw|lit|rar|nfo|par).+?(yEnc)?$/',
  1,
  '//[09/14] Sven Hassel - Legion of the Damned 09, Reign of Hell.mobi  sven hassel as requested (1/7) yEnc ::: //[1/1] Alex Berenson - John Wells 05, The Secret Soldier.mobi (space at end)',
  115
), (
  344,
  '^alt\\.binaries\\.e-book$',
  '/^\\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw|lit|rar|nfo|par)"(  \\d+K)?( )?$/',
  1,
  '//[1/1] - "Die Kunst der Fotografie Lehrbuch und Bildband f  r ambitionierte Fotografen.rar" ::: //[1/1] - "Demonic_ How the Liberal Mob Is Endanger - Coulter, Ann.mobi" (note space at end) ::: //[1/1] - "Paris in Love_ A Memoir - Eloisa James.mobi"  1861K',
  120
), (
  345,
  '^alt\\.binaries\\.e-book$',
  '/^\\d+\\/(\\d+)[-_\\s]{0,3}(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw|lit|rar|nfo|par)$/',
  1,
  '//002/240  Swordships.of.Scorpio.(Dray.Prescot).-.Alan.Burt.Akers.epub',
  125
), (
  346,
  '^alt\\.binaries\\.e-book$',
  '/^(?P<match0>[a-zA-Z0-9. ].+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|) yEnc$/',
  1,
  '//Akers Alan Burt - Dray Prescot Saga 14 - Krozair von Kregen.rar yEnc',
  130
), (
  347,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^New eBooks.+[ _-]{0,3}("|#34;)(?P<match0>.+?.+)\\.(par|vol|rar|nfo).*?("|#34;)/i',
  1,
  '//New eBooks 8 June 2013 - "Melody Carlson - [Carter House Girls 08] - Last Dance (mobi).rar"',
  5
), (
  348,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^[A-Za-z ]+[-_\\s]{0,3}"(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)"[-_\\s]{0,3}yEnc$/',
  1,
  '//World War II History - "Spies of the Balkans - Alan Furst.mobi" yEnc ::: //True Crime  "T. J. English - Havana Nocturne (v5.0).mobi" yEnc ::: //E C Tubb Flood - "E C Tubb - Dumarest 31 The Temple of Truth.epub" - yEnc',
  10
), (
  349,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^SFF Dump - "(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" \\(\\d+\\/\\d+\\) - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/',
  1,
  '//SFF Dump - "Thomas M. Disch - Camp Concentration.epub" (1033/1217) - 226.47 kB - yEnc',
  15
), (
  350,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\((?P<match0>[a-zA-Z0-9 -]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(American Curves - Summer 2012) [01/10] - "AMECURSUM12.par2" yEnc',
  20
), (
  351,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/(.+?)[-_\\s]{0,3}\\d+\\/(?P<match0>\\d+[-_\\s]{0,3}".+?)\\.(txt|pdf|mobi|epub|azw)"( \\(\\d+\\/\\d+\\))?( )?$/',
  1,
  '//Patterson flood - Mobi -  15/45  "James Patterson - AC 13 - Double Cross.mobi"',
  25
), (
  352,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(Attn:|Re: REQ:|New Scan).+?[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}(\\d+[.,]\\d+ [kKmMgG][bB](ytes)?)? yEnc$/i',
  1,
  '//Re: REQ: Jay Lake\'s Mainspring series/trilogy (see titles inside) - "Lake, Jay - Clockwork Earth 03 - Pinion [epub].rar"  405.6 kBytes yEnc ::: //Attn: Brownian - "del Rey, Maria - Paradise Bay (FBS).rar" yEnc ::: //New Scan "Herbert, James - Sepulchre (html).rar" yEnc',
  30
), (
  353,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"Gabaldon, Diana - Outlander [5] The Fiery Cross.epub" yEnc ::: //Kiny Friedman "Friedman, Kinky - Prisoner of Vandam Street_ A Novel, The.epub" yEnc',
  35
), (
  354,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\[\\d+\\/\\d+\\] .+? - "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") yEnc$/',
  1,
  '//[001/125] (NL Epub Wierook Set 49) - "Abulhawa, Susan - Litteken van David_Ochtend in Jenin.epub" yEnc',
  40
), (
  355,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(1/1) "Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW.pdf" - 162,82 MB - (Radiological Imaging of the Kidney - E. Quaia (Springer, 2011) WW) yEnc',
  45
), (
  356,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\(\\d+\\/\\d+\\) ".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])?[-_\\s]{0,3}"(?P<match0>.+?)" yEnc$/',
  1,
  '//(1/7) "0865779767.epub" - 88,93 MB - "Anatomic Basis of Neurologic Diagnosis - epub" yEnc',
  50
), (
  357,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(Attn:|Re: REQ:|New Scan).+?[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}(\\d+[.,]\\d+ [kKmMgG][bB](ytes)?)? yEnc$/i',
  1,
  '//Re: REQ: Jay Lake\'s Mainspring series/trilogy (see titles inside) - "Lake, Jay - Clockwork Earth 03 - Pinion [epub].rar"  405.6 kBytes yEnc ::: //Attn: Brownian - "del Rey, Maria - Paradise Bay (FBS).rar" yEnc ::: //New Scan "Herbert, James - Sepulchre (html).rar" yEnc',
  55
), (
  358,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\*(FULL )?REPOST\\* New eBooks.+[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}")$/',
  1,
  '//*FULL REPOST* New eBooks 26 Nov 2012 & 20% PAR2 Set -  "Elisabeth Kyle - The Captain\'s House (siPDF).rar" ::: //*REPOST* New eBooks 23 Nov 2012 -  "Charles Culver - [The 11th Floor 02] - Awakening (mobi).rar"',
  60
), (
  359,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^.+?Search (for|4) (number|Numeric String) at end of (title|Subject)[-_\\s]{0,3}(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4})[-\\=_ ]{0,3}\\d+[-_\\s]{0,3}.+?yEnc$/i',
  1,
  '//1 - 5 July 2013 - Search for number at end of title - Bevin Alexander - How Hitler Could Have Won World War II- The Fatal Errors That Lead to Nazi Defeat (epub).rar - 14418-25255-6053.rar.txt yEnc ::: //10 July 2013 - Search 4 Numeric String at End of Subject - Andew Hodges - Alan Turing- The Enigma (Centenary Edition) (kf8 mobi).rar = 21317-25234-21710.rar.txt yEnc',
  65
), (
  360,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}\\d+[kKmMgG]$/',
  1,
  '//"Back to Pakistan_ A F',
  70
), (
  361,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}(?P<match0>.+)\\.(txt|pdf|mobi|epub|azw)[-_\\s]{0,3}.+flood( )?$/',
  1,
  '//[002/182] A. E. Van Vogt - The Anarchistic Colossus.mobi  mobi flood ::: //[002/115] Alan Dean Foster - Alien.mobi  sf single author flood',
  75
), (
  362,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\[\\d+\\/(\\d+\\]) (?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)/',
  1,
  '//[2/4] Graham Masterton - Descendant.mobi',
  80
), (
  363,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\d+\\. {0,1}(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})As Req.+yEnc$/i',
  1,
  '//14. Alexander Kent - [Bolitho 12] - Signal Close Action (v2.0) (epub).epubAs Req Alexander Kent  yEnc ::: //22.The Darkening Sea - Alexander Kent.epubAs Req Alexander Kent  yEnc',
  85
), (
  364,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^reposting \\d+-\\d+-\\d+ new ebooks.+ pars[-_\\s]{0,3}(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/i',
  1,
  '//reposting 2012-10-31 new ebooks with 35.74 pars - AD&D - [Tomes] - The Rod of Seven Parts - Douglas Niles (mobi).rar  yEnc',
  90
), (
  365,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\d+ - (?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/i',
  1,
  '//15 - Men at Arms.pdf  yEnc',
  95
), (
  366,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Filling Req(uest)?( for \\w+)?[-_\\s]{0,3}(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) \\[\\d+\\/\\d+\\] -  yEnc$/i',
  1,
  '//Filling Req for Delderfield- To Serve Them All My Days - R F Delderfield.mobi [6/6] -  yEnc ::: //Filling Request - Armistead Maupin - 1 - Tales of the City.mobi [1/8] -  yEnc',
  100
), (
  367,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^ATTN:Fozz E Bear (?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/i',
  1,
  '//ATTN:Fozz E Bear Rogue - Danielle Steel.epub  yEnc',
  105
), (
  368,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^As Requested - (?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) \\[\\d+\\/\\d+\\] -  yEnc$/i',
  1,
  '//As Requested - Silent Spring - Rachel Carson.epub [1/2] -  yEnc',
  110
), (
  369,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Attn: fastpiety - your requests[-_\\s]{0,3}(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) \\[\\d+\\/\\d+\\] -  yEnc$/i',
  1,
  '//Attn: fastpiety - your requests - Countess of Carnarvon - Lady Almina and the Real Downton Abbey- The Lost Legacy of Highclere Castle (epub).epub [1/1] -  yEnc',
  115
), (
  370,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/i',
  1,
  '//Amanda Ashley - [Night 02] - Night\'s Touch (v5.0) (epub).epub  yEnc',
  120
), (
  371,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4}_as found[-_\\s]{0,3}yEnc$/',
  1,
  '//A Game of Thrones 01- George R. R. Martin.mobi_as found  yEnc',
  125
), (
  372,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4}[-_\\s]{0,3}File \\d+ of \\d+[-_\\s]{0,3}yEnc$/',
  1,
  '//Ben Carson - America the Beaut',
  130
), (
  373,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Re: Attn Reg143- (?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4}[-_\\s]{0,3}\\[\\d+\\/\\d+\\][- ]{0,4}yEnc$/',
  1,
  '//Re: Attn Reg143- (Morse 7) The Secret of Annexe 3 - Colin Dexter.mobi [11/14] -  yEnc',
  135
), (
  374,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}File \\d+ of \\d+[-_\\s]{0,3}yEnc$/',
  1,
  '//New eBooks 20 Aug 2012 - File 001 of 409 - yEnc',
  140
), (
  375,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Re: Request[- ]{0,4}\\d+[-_\\s]{0,3}(?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}\\[\\d+\\/\\d+\\][- ]{0,4}yEnc$/',
  1,
  '//Re: Request  - 05 L. E. Modesitt - Princeps.mobi [5/7] -  yEnc',
  145
), (
  376,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Bighathi) [4/4] - "Letters to Penthouse XXiLetters to Penthouse XXI - The Editors of Penthouse Magazine.epub" yEnc',
  150
), (
  377,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+REPOST.+[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(HUMAN BIO & MED 207) [02/39] - "Organic Chemistry 6th ed - L. Wade {SOLUTIONS MANUAL - J. Simek] (Pearson, 2006) WW.pdf" *REPOST* yEnc',
  155
), (
  378,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\d+[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//01 - The Colour of Magic.pdf yEnc',
  160
), (
  379,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^\\(.+\\)[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Esperanto novel) - H.A. Luyken - Pro ICtar.epub yEnc',
  165
), (
  380,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^All I have - not checked[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//All I have - not checked John D MacDonald - April Evil.epub yEnc',
  170
), (
  381,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^As req[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc.+$/ui',
  1,
  '//As req  "Aftermath - Peter Robinson.mobi" yEnc Peter Robinson - Inspector Banks 12',
  175
), (
  382,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Attn.+\\[\\d+-\\d+\\][-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//As req  "Aftermath - Peter Robinson.mobi" yEnc Peter Robinson - Inspector Banks 12',
  180
), (
  383,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Attn:[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//ATTN: Robert A. Ely - Wilde, Lori - Zero Control [html].rar yEnc',
  185
), (
  384,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^Attn:.+\\.com[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//ATTN: Drake@Darkest air.com - Kurtz, Katherine - Heirs of Saint Camber 03 - The Bastard Prince [txt].zip yEnc',
  190
), (
  385,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^reposting.+pars[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//reposting 2012-10-27 new ebooks with 35.74 pars - M William Phelps - Sleep In Heavenly Peace (mobi).rar yEnc',
  195
), (
  386,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/^(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/ui',
  1,
  '//A Tradition of Victory - Alexander Kent.epub yEnc',
  200
), (
  387,
  '^alt\\.binaries\\.e-book\\.flood$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"Gabaldon, Diana - Outlander [5] The Fiery Cross.epub" yEnc ::: //Kiny Friedman "Friedman, Kinky - Prisoner of Vandam Street_ A Novel, The.epub" yEnc',
  205
), (
  388,
  '^alt\\.binaries\\.e-book\\.german$',
  '/^.+\\(eBook\\).+?\\[\\d+\\/\\d+\\] - "(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//.::::(eBook)::::. [01/10] - "Althaus modernisieren Magazin 08 09 2013.par2" - 65,71 MB yEnc',
  5
), (
  389,
  '^alt\\.binaries\\.e-book\\.german$',
  '/^.+?\\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//ATTN: fals',
  10
), (
  390,
  '^alt\\.binaries\\.e-book\\.german$',
  '/^"(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//"Abe, Shana - Der trÃ¤umende Diamant 2 - Erdmagie.epub" yEnc',
  15
), (
  391,
  '^alt\\.binaries\\.e-book\\.german$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)"[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/1) "B  rse Online - No 30 2013.pdf" - 4,03 MB - yEnc',
  20
), (
  392,
  '^alt\\.binaries\\.e-book\\.rpg$',
  '/^.+?\\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)\\.(txt|pdf|mobi|epub|azw)" yEnc$/',
  1,
  '//ATTN: fals',
  5
), (
  393,
  '^alt\\.binaries\\.e-book\\.magazines$',
  '/^\\[(?P<match0>.+?)\\] - ".+?" yEnc$/',
  1,
  '// [Top.Gear.South.Africa-February.2014] - "Top.Gear.South.Africa-February.2014.pdf.vol00+1.par2" yEnc  - 809.32 KB',
  5
), (
  394,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/ASST (NEW|OLD) MTLS.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//ASST NEW MTLS 13 MAR 2012 A  -  [106/116] - "The Elements of Style, Illus. - W. Strunk Jr., E. White, M. Kalman (Penguin, 2005) WW.pdf" yEnc',
  5
), (
  395,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}yEnc$/ui',
  1,
  '//"ASTG TRANSMISSON REBUILD MANUALS FOR BMW.rar.par2" [07/73] yEnc',
  10
), (
  396,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(???) [1/1] - "Asimov, Isaac - [Foundation 01] - De Foundation_v2.rar" yEnc',
  15
), (
  397,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(07/14) "NS120107 07Jan12.pdf" - 238.80 MB - yEnc',
  20
), (
  398,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(103 eBooks On Music Production) [071/111] - "Pro Enginner School Vol. 1 + 2 By Record-Producer.com PDF.rar" yEnc',
  25
), (
  399,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+REPOST.+[-_\\s]{0,3}yEnc$/ui',
  1,
  '//((BIO & MED 008) [29/64] - "Acupuncture Therapy for Neurological Diseases - Y. Xia, et al., (Springer, 2010) WW.pdf" *REPOST* yEnc',
  30
), (
  400,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Bighathi) [4/4] - "Letters to Penthouse XXiLetters to Penthouse XXI - The Editors of Penthouse Magazine.epub" yEnc',
  35
), (
  401,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\(.+\\)[-_\\s]{0,3}[\\w]+[-_\\s]{0,3}\\(.+\\)[-_\\s]{0,3}\\[\\d+ of \\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Repost) Computing (Recent) [32 of 44] "Professional XMPP Programming (Wrox, 2010).pdf" yEnc',
  40
), (
  402,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^\\d+.+E-books[-_\\s]{0,3}.+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//48 Unsorted E-books (03-12-2010) [49/52] - "Zend Framework 1.8 Web Application Development.pdf" yEnc',
  45
), (
  403,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^A large collection of programming ebooks [-_\\s]{0,3}\\[\\d+ of \\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//A large collection of programming ebooks [128 of 527] "Eckel - Thinking in C++ - Volume II - 2e (Prentice, 2000).pdf" yEnc',
  50
), (
  404,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Make Magazine - Volume 03.pdf" yEnc',
  55
), (
  405,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//ADVANCES in CHEMICAL ENGINEERING 22aug11 [8 of 30] "Advances in Chemical Engineering Vol 20 Kwauk (AP 1994).pdf" yEnc',
  60
), (
  406,
  '^alt\\.binaries\\.e-book\\.technical$',
  '/"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Arduino Books by Request  [9/9] - "iOS Sensor Apps with Arduino - A. Allan (O\'Reilly, 2011) WW.pdf" (1/114) yEnc',
  65
), (
  407,
  '^alt\\.binaries\\.erotica$',
  '/\\[#+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/\\d+\\] - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[######]-[FULL]-[#a.b.teevee@EFNet]-[ Misfits.S01.SUBPACK.DVDRip.XviD-P0W4DVD ] [1/5] - "Misfits.S01.SUBPACK.DVDRip.XviD-P0W4DVD.nfo" yEnc',
  5
), (
  408,
  '^alt\\.binaries\\.erotica$',
  '/^NihilCumsteR \\[\\d+\\/\\d+\\] - "(?P<match0>.+?)NihilCumsteR\\./',
  1,
  '//NihilCumsteR [1/8] - "Conysgirls.cumpilation.xxx.NihilCumsteR.par2" yEnc',
  10
), (
  409,
  '^alt\\.binaries\\.erotica$',
  '/^\\[\\s?\\d+\\/\\d+\\s?\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[01/13] - "Mahina.Zaltana.14.01.17.720p.x264-DFury.7z.001" yEnc',
  15
), (
  410,
  '^alt\\.binaries\\.erotica$',
  '/^[><]+Hell-of-Usenet\\.org[<>]+ - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//>>>>>Hell-of-Usenet.org>>>>> - [01/23] - "Cum Hunters 3 XXX.par2" yEnc',
  20
), (
  411,
  '^alt\\.binaries\\.erotica$',
  '/^[A-Z0-9][a-zA-Z0-9 -]{8,}? - \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - yenc yEnc$/',
  1,
  '//Lesbian Crush Diaries 5 XXX DVDRip x264-Pr0nStarS - (01/26) "Lesbian.Crush.Diaries.5.XXX.DVDRip.x264-Pr0nStarS.nfo" - yenc',
  25
), (
  412,
  '^alt\\.binaries\\.erotica$',
  '/^(?P<match0>[A-Z0-9][a-zA-Z0-9 ]{8,}?) - File \\d+ of \\d+ - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Megan Coxxx Takes Out Her Favourite Strap On Dildos And Plays With Her Girlfriend Re - File 01 of 67 - "Toy_Stories.r00.par2" yEnc',
  30
), (
  413,
  '^alt\\.binaries\\.erotica$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+? yEnc$/',
  1,
  '//[02/21] - "Staendig Feucht.part01.rar" - 493.38 MB ....::::UR-powered by SecretUsenet.com::::.... yEnc',
  35
), (
  414,
  '^alt\\.binaries\\.erotica$',
  '/^[A-Z0-9].{8,}? - \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - yenc yEnc$/',
  1,
  '//Big Tits in Sport 12 (2013) XXX DVDRip x264-CHiKANi - (03/39) "Big.Tits.in.Sport.12.XXX.DVDRip.x264-CHiKANi.part01.rar" - yenc yEnc',
  40
), (
  415,
  '^alt\\.binaries\\.erotica$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß¤¶!.,&;_\\()\\[\\]\\\'\\-]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")_SpotBots yEnc$/',
  1,
  '//"Babysitters_a_Slut_4_Scene_4.part01.rar"_SpotBots yEnc',
  45
), (
  416,
  '^alt\\.binaries\\.erotica$',
  '/^.+?usenet-space.+?Powered by.+? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+? \\d+\\/(\\d+.+?)$/',
  1,
  '//<<<>>CowboyUp2012 XXX><<<Is.Not.Force.It.My.Younger.SOE-806.Jav.Censored.DVDRip.XviD-MotTto>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "Is.Not.Force.It.My.Younger.SOE-806.Jav.Censored.DVDRip.XviD-MotTto.part01.rar" >< 01/15 (1,39',
  50
), (
  417,
  '^alt\\.binaries\\.erotica$',
  '/^(?P<match0>Fake Taxi E\\d+.+?)\\[\\d+\\/\\d+\\] - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Fake Taxi E58 - Taylor[01/23] - "faket.e58.taylor.part01.rar" yEnc',
  55
), (
  418,
  '^alt\\.binaries\\.erotica$',
  '/^Flapdrol mp4 - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Flapdrol mp4 - "HotKinkyJo - 2013-12-28 - Pink Leopard toys sex movie.part5.rar" yEnc',
  60
), (
  419,
  '^alt\\.binaries\\.erotica$',
  '/^\\[U4A\\]\\[.+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[U4A][-always take the post from the first and original poster!-] - "VIDEOOT-10VSN01.vol27+23.PAR2" yEnc',
  65
), (
  420,
  '^alt\\.binaries\\.erotica$',
  '/^VolSpuitenMetBud - - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//VolSpuitenMetBud - - [14/26] - "SexuallyBroken - 2013-12-30 - Stunning Cherie DeVille turned into blowjob device, hardcore deepthroating, relentless pounding! Cherie DeVille & Matt Williams.part13.rar" yEnc',
  70
), (
  421,
  '^alt\\.binaries\\.erotica$',
  '/^.+[Kk]leverig\\.eu.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//..::kleverig.eu::.. [01/18] - "CQVNAj4WLDW_7Bm8Ax6J.par2" - 686,38 MB yEnc',
  75
), (
  422,
  '^alt\\.binaries\\.erotica$',
  '/^(?P<match0>[\\w\\säöüÄÖÜß¤¶!.,&;_\\()\\[\\]\\\'\\-]{8,})[-_\\s]{0,3}[\\(\\[]\\d+ of (\\d+[\\)\\]])[-_\\s]{0,3}"([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Brazilian.Transsexuals.SR.UD.12.28.13.HD.720p.HDL [19 of 24] "JhoanyWilkerXmasLD_1_hdmp4.mp4.vol00+1.par2" yEnc',
  80
), (
  423,
  '^alt\\.binaries\\.erotica$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [01/18] - "Blonde Cutie Seduces Her Step Dad Black Market.rar" yEnc',
  85
), (
  424,
  '^alt\\.binaries\\.erotica$',
  '/^[-_\\s]{0,4}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- - [001/202] - "epAgY717nUChOeWswZR4.par2" yEnc',
  90
), (
  425,
  '^alt\\.binaries\\.erotica$',
  '/^[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- "ADJG3HG2H1U9YHDGHD5GA8H.par2" yEnc',
  95
), (
  426,
  '^alt\\.binaries\\.erotica$',
  '/^[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/u',
  1,
  '//- "dvd_10-96CEA81F.part1.rar" - [3/9] - 1,21 GB - yEnc',
  100
), (
  427,
  '^alt\\.binaries\\.erotica$',
  '/^[-_\\s]{0,3}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- (01/74) - "50.Shades.Of.Dylan.Ryan.DVDRip.AVC.par2" yEnc',
  105
), (
  428,
  '^alt\\.binaries\\.erotica$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")_SpotBots[-_\\s]{0,3}yEnc$/u',
  1,
  '//"HD_1110.part01.rar"_SpotBots yEnc',
  110
), (
  429,
  '^alt\\.binaries\\.erotica$',
  '/^\\(\\s*.+\\s*\\)\\s*.+By Dready Niek.+\\s*\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"Dreadys(?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//( DreadysCEMPenetrationshumides(1977) )  ** By Dready Niek** ) [11/25] - "DreadysCEMPenetrationshumides(1977).part10.rar" yEnc',
  115
), (
  430,
  '^alt\\.binaries\\.erotica$',
  '/^\\(\\s*\\[\\s*[Mm]agma classic[-_\\s]{0,3}(?P<match0>[\\w\\säöüÄÖÜß¤¶!.,&;_\\()\\[\\]\\\'\\-]{8,})\\s*\\]\\s*\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(  [  Magma classic - Tyra Misoux-Schwere Jungs Und Leichte Madchen  ]   ) [01/16] - ".par2" yEnc',
  120
), (
  431,
  '^alt\\.binaries\\.erotica$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}New\\.Nippi.+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/21) - New.Nippi.Video.The.Artist - "Next.Door.Nikki.Sims.2013-05-03_the_artist.jpeg" - 574.84 MB - yEnc',
  125
), (
  432,
  '^alt\\.binaries\\.erotica$',
  '/^VolSpuitenMetBud[-_\\s]{0,5}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//VolSpuitenMetBud - - [42/59] - "SexuallyBroken - 2012-11-19 - Apartment 345; A Feature Presentation of Real l',
  130
), (
  433,
  '^alt\\.binaries\\.erotica$',
  '/^[\\w]+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//PNG170514XW042SOE9[01/35] - "PNG170514XW042SOE9.jpg" yEnc',
  135
), (
  434,
  '^alt\\.binaries\\.erotica$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}.+yEnc$/i',
  1,
  '//(31/31) "Sex And Submission 2009 - 08.vol134+128.PAR2" - 2,05 GB -==UR-powered by SecretUsenet.com==- yEnc',
  140
), (
  435,
  '^alt\\.binaries\\.erotica$',
  '/^\\[http:\\/\\/www\\.hillysex\\.nl\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[http://www.hillysex.nl] - "H9DR3647K8V2Z5CG.par2" yEnc',
  145
), (
  436,
  '^alt\\.binaries\\.erotica$',
  '/\\w+\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//klokhuis(????) [01/28] - "Klokhuis-Hello-Titty-06.par2" yEnc',
  150
), (
  437,
  '^alt\\.binaries\\.erotica$',
  '/\\(\\d+\\/\\d+\\)[-_\\s]{0,3}v(2v)?[-_\\s]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(011/107) - v2v  - "0203114movie-eng-a.part10.rar" - 1,26 GB - yEnc',
  155
), (
  438,
  '^alt\\.binaries\\.erotica$',
  '/\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [01/15] - "MRGVGoVNJ3_hc.par2" yEnc',
  160
), (
  439,
  '^alt\\.binaries\\.erotica$',
  '/\\((?P<match0>[\\w\\s-]{8,})\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Czech Amateurs 01) [30/43] - "CZEAMA01.part29.rar" yEnc',
  165
), (
  440,
  '^alt\\.binaries\\.erotica$',
  '/\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc $/iu',
  1,
  '//(????) [01/15] - "PMRJDNN.par2" yEnc ::: // *Note space after yEnc',
  170
), (
  441,
  '^alt\\.binaries\\.erotica$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Cuties 6.part.vol551+106.par2" yEnc',
  175
), (
  442,
  '^alt\\.binaries\\.erotica\\.divx$',
  '/^\\w+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '// BBC190215XPLPU31SW[02/28] - "BBC190215XPLPU31SW.par2" yEnc',
  5
), (
  443,
  '^alt\\.binaries\\.etc$',
  '/^\\[scnzbefnet\\] (?P<match0>.+?) \\[\\d+\\/(\\d+\\]) - ".+?" yEnc$/',
  1,
  '//[scnzbefnet] Were.the.Millers.2013.EXTENDED.720p.BluRay.x264-SPARKS [01/61] - "were.the.millers.2013.extended.720p.bluray.x264-sparks.nfo" yEnc',
  5
), (
  444,
  '^alt\\.binaries\\.etc$',
  '/^.+\\[DoAsYouLike\\].+\\d+[.,]\\d+ [kKmMgG][bB].+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")    (\\d+[.,])?\\d+ ([kKmMgG])?[bB][-_\\s]{0,3}yEnc$/',
  1,
  '//..:[DoAsYouLike]:..    116,12 MB    "Graphite v8.9.17 SP4R4.nfo"    3,00 kB yEnc',
  10
), (
  445,
  '^alt\\.binaries\\.etc$',
  '/^[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(047/550) "Enf.S02E02.G.D.D.W.7.H.x2-e.vol105+99.PAR2" - 36,13 GB -Enf.S02.G.D.D.W.7.H.x2-e yEnc ::: //[3/3] - "Mayle Peter - Der Coup von Marseille.epub.vol0+1.par2" - 956,83 kB {UR} yEnc',
  15
), (
  446,
  '^alt\\.binaries\\.etc$',
  '/^.+Old but Sold.+>< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\).+ yEnc$/',
  1,
  '//<<<Old but Sold>>>  <<< >< >< "German Top 50 ODC - 12.08.2013.nfo" >< 02/33 (541,61 MB) >< 10,93 kB > yEnc',
  20
), (
  447,
  '^alt\\.binaries\\.etc$',
  '/^.+Usenet-Space-Cowboys.+> - (?P<match0>[A-Z0-9][a-zA-Z0-9\\. ]{6,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}).+ yEnc$/',
  1,
  '//<<<THOR for Usenet-Space-Cowboys>>> - 1Password V1.0.9.236 Setup Key.PAR2  yEnc',
  25
), (
  448,
  '^alt\\.binaries\\.etc$',
  '/^\\d+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//704900999555666777123978 - [398/415] - "Jormungand Complete [720p] mHD.part31.rar" yEnc',
  30
), (
  449,
  '^alt\\.binaries\\.etc$',
  '/^[\\w. -]+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w.\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE - [02/38] - "Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE.part01.rar" yEnc',
  35
), (
  450,
  '^alt\\.binaries\\.etc$',
  '/^.+old but sold.+(?P<match0>[\\w. \\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")>\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}yEnc$/',
  1,
  '//<<<< old but sold >>>> < USC> <"K11 - Kommissare im Einsatz (DE) NDS.part3.rar">[04/11] 74,54 MB yEnc',
  40
), (
  451,
  '^alt\\.binaries\\.etc$',
  '/^Uploader\\.Presents-(?P<match0>[\\w. \\()-]{8,}?\\b)[\\(\\[]\\d+\\/\\d+\\]".+?" yEnc$/',
  1,
  '//Uploader.Presents-ACDC.Let.There.Be.Rock.1980.720p.BluRay.DD5.1.x264-DON(00/47]"rock.ac3.720p.nzb" yEnc',
  45
), (
  452,
  '^alt\\.binaries\\.etc$',
  '/^(?P<match0>[\\w.\\()-]{8,})[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Bitsum.Technologies.Process.Lasso.Pro.v6.5.00.Cracked-EAT - [3/4] - "eat.vol0+1.par2" yEnc',
  50
), (
  453,
  '^alt\\.binaries\\.etc$',
  '/^.+?usenet-space.+?Powered by.+? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+? \\d+\\/(\\d+.+?)$/',
  1,
  '//<<<usenet-space-cowboys.info>>> USC <<<Powered by https://secretusenet.com><Medieval Wii Pal>< "Medieval Wii Pal.vol108+29.par2" >< 60/60 (4,82 GB) >< 95,77 MB > yEnc',
  55
), (
  454,
  '^alt\\.binaries\\.etc$',
  '/^Uploader\\.Presents-(?P<match0>[\\w. \\()-]{8,}?\\b)[\\(\\[]\\d+\\/\\d+\\]".+?" yEnc$/',
  1,
  '//Uploader.Presents-ACDC.Let.There.Be.Rock.1980.720p.BluRay.DD5.1.x264-DON(00/47]"rock.ac3.720p.nzb" yEnc',
  60
), (
  455,
  '^alt\\.binaries\\.etc$',
  '/^(?P<match0>[\\w.\\()-]{8,})[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Bitsum.Technologies.Process.Lasso.Pro.v6.5.00.Cracked-EAT - [3/4] - "eat.vol0+1.par2" yEnc',
  65
), (
  456,
  '^alt\\.binaries\\.etc$',
  '/^.+?usenet-space.+?Powered by.+? (?P<match0>[\\w. \\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+? \\d+\\/(\\d+.+?)$/',
  1,
  '//<<<usenet-space-cowboys.info>>> USC <<<Powered by https://secretusenet.com><Medieval Wii Pal>< "Medieval Wii Pal.vol108+29.par2" >< 60/60 (4,82 GB) >< 95,77 MB > yEnc',
  70
), (
  457,
  '^alt\\.binaries\\.etc$',
  '/^[\\w. -]+[-_\\s]{0,3}"(?P<match0>[\\w.\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//W33d5.S01.720p.BluRay.x264 - "W33d5.S01.720p.BluRay.x264.part63.rar" yEnc',
  75
), (
  458,
  '^alt\\.binaries\\.etc$',
  '/^[\\w. -]+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w.\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE - [02/38] - "Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE.part01.rar" yEnc',
  80
), (
  459,
  '^alt\\.binaries\\.etc$',
  '/^>GOU<< (?P<match0>[\\w.\\[\\]\\() -]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rarr|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}).+www\\.SSL-News\\.info<[-_\\s]{0,3}yEnc$/',
  1,
  '//>GOU<< XUS Clock Plus v1.5.0 with Key [TorDigger].PAR2 >>www.SSL-News.info<  yEnc',
  85
), (
  460,
  '^alt\\.binaries\\.etc$',
  '/^[\\w. -]+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w.\\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE - [02/38] - "Man.Of.Steel.2013.BRRip.x264.AC3-UNiQUE.part01.rar" yEnc',
  90
), (
  461,
  '^alt\\.binaries\\.etc$',
  '/^>GOU<< (?P<match0>[\\w.\\[\\]\\() -]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rarr|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}).+www\\.SSL-News\\.info<[-_\\s]{0,3}yEnc$/',
  1,
  '//>GOU<< XUS Clock Plus v1.5.0 with Key [TorDigger].PAR2 >>www.SSL-News.info<  yEnc',
  95
), (
  462,
  '^alt\\.binaries\\.etc$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Drains_READNFO-VACE.nfo" yEnc',
  100
), (
  463,
  '^alt\\.binaries\\.frogs$',
  '/\\[\\.in\\][-_\\s]{0,3}.*[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[.in] X-Art.13.03.08.Angelica.Spilled.Milk.XXX.540p-WMV [02/23] - "X-Art.13.03.08.Angelica.Spilled.Milk.XXX.540p-WMV.r00" yEnc',
  5
), (
  464,
  '^alt\\.binaries\\.frogs$',
  '/\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Beachbody.ShaunT.Focus.T25 [01/39] - "Beachbody.ShaunT.Focus.T25.DVD3.Ab.Intervals.par2" yEnc',
  10
), (
  465,
  '^alt\\.binaries\\.ftn$',
  '/^(Usenet collector)?\\(aangemeld.+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(aangemeld bij usenet collector) [181/190] - "Ally_McBeal_Season_3_Dvd_4.vol0176+176.par2" yEnc ::: //Usenet collector(aangemeld bij usenet collector) [001/124] - "Northern_Exposure_Season_4_dvd_2.par2" yEnc',
  5
), (
  466,
  '^alt\\.binaries\\.ftn$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Family Games-OUTLAWS.nfo" yEnc',
  10
), (
  467,
  '^alt\\.binaries\\.ftn$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) {0,3}yEnc$/',
  1,
  '//Adobe Photoshop Lightroom v5.2 - FiNaL - Multilingual [WIN].vol037+32.PAR2  yEnc',
  15
), (
  468,
  '^alt\\.binaries\\.ftn$',
  '/^\\((?P<match0>[\\w+ .\\()-]{8,})\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Wondershare AllMyTube 3.8.0.4 + Patch) [01/12] - "Wondershare AllMyTube 3.8.0.4 + Patch.nfo" yEnc',
  20
), (
  469,
  '^alt\\.binaries\\.ftn$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - ".+?(?P<match0>[-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [10/26] - "The.Young.Riders.S01E02.480pWEB-DL.AAC2.0.H.264-AJP69.part09.rar" yEnc',
  25
), (
  470,
  '^alt\\.binaries\\.fz$',
  '/^>ghost-of-usenet\\.org>(?P<match0>.+?)<.+?> ".+?" yEnc$/',
  1,
  '//>ghost-of-usenet.org>Monte.Cristo.GERMAN.2002.AC3.DVDRiP.XviD.iNTERNAL-HACO<HAVE FUN> "haco-montecristo-xvid-a.par2" yEnc',
  5
), (
  471,
  '^alt\\.binaries\\.game$',
  '/(\\[[\\d#]+\\]-\\[.+?\\]-\\[.+?\\]-)\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/\\d+\\] - "(.+?)" yEnc$/',
  1,
  '//[192474]-[MP3]-[a.b.inner-sanctumEFNET]-[ Newbie_Nerdz_-_I_Cant_Forget_that_Girl_EP-(IM005)-WEB-2012-YOU ] [17/17] - "newbie_nerdz_-_i_cant_forget_that_girl_ep-(im005)-web-2012-you.nfo" yEnc',
  5
), (
  472,
  '^alt\\.binaries\\.games$',
  '/^>ghost-of-usenet\\.org>(?P<match0>.+?)<.+?> ".+?" yEnc$/',
  1,
  '//>ghost-of-usenet.org>Monte.Cristo.GERMAN.2002.AC3.DVDRiP.XviD.iNTERNAL-HACO<HAVE FUN> "haco-montecristo-xvid-a.par2" yEnc',
  5
), (
  473,
  '^alt\\.binaries\\.games$',
  '/^<ghost-of-usenet\\.org>(?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" .+? yEnc$/',
  1,
  '//<ghost-of-usenet.org>XCOM.Enemy.Unknown.Deutsch.Patch.TokZic [0/9] - "XCOM Deutsch.nzb" ein CrazyUpp yEnc',
  10
), (
  474,
  '^alt\\.binaries\\.games$',
  '/^\\[ (?P<match0>[-.a-zA-Z0-9]+) \\] - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[ Dawn.of.Fantasy.Kingdom.Wars-PROPHET ] - [12/52] - "ppt-dfkw.part04.rar" yEnc',
  15
), (
  475,
  '^alt\\.binaries\\.games$',
  '/\\.net <<<Partner von SSL-News\\.info>>> - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info/.net <<<Partner von SSL-News.info>>> - [11/17] - "Reload.Outdoor.Action.Target.Down.GERMAN-0x0007.vol003+004.PAR2" yEnc',
  20
), (
  476,
  '^alt\\.binaries\\.games$',
  '/\\[[\\d#]+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}("|#34;).+?/',
  1,
  '//[162198]-[FULL]-[a.b.teevee]-[ MasterChef.Junior.S01E07.720p.HDTV.X264-DIMENSION ]-[09/54] - "masterchef.junior.107.720p-dimension.nfo" yEnc',
  25
), (
  477,
  '^alt\\.binaries\\.games$',
  '/^"(?P<match0>.+)__www.realmom.info__.+" \\(\\d+\\/\\d+\\) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//"A.Stroke.of.Fate.Operation.Valkyrie-SKIDROW__www.realmom.info__.nfo" (02/38) 1,34 GB yEnc',
  30
), (
  478,
  '^alt\\.binaries\\.games$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Mad.Men.S06E11.HDTV.x264-2HD.par2" yEnc',
  35
), (
  479,
  '^alt\\.binaries\\.games$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\[\\d+\\/(\\d+\\])[ _-]{0,3}yEnc$/',
  1,
  '//"Marvels.Agents.of.S.H.I.E.L.D.S01E07.HDTV.XviD-FUM.avi.nfo" [09/16] yEnc',
  40
), (
  480,
  '^alt\\.binaries\\.games$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [03/20] - "Weblinger - The.Haunted.House.Mysteries.v1.0-ZEKE.part01.rar" yEnc',
  45
), (
  481,
  '^alt\\.binaries\\.games$',
  '/^\\(\\d+\\/\\d+\\)( - Description)?[-_ ]{0,5}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( - \\d+([.,]\\d+ [kKmMgG])?[bB])? - \\d+([.,]\\d+ [kKmMgG])?[bB][-_\\s]{0,3}(\\[REPOST\\] )?yEnc$/',
  1,
  '//(001/132) "Harry.Potter.And.The.Goblet.Of.Fire.2005.810p.BluRay.x264.DTS.PRoDJi.nfo" - 8,71 GB - yEnc ::: //(01/11) - Description - "ba588f108dbd068dc93e4b0182de652d.par2" - 696,63 MB - yEnc ::: //(01/11) "Microsoft Games for Windows 8 v1.2.par2" - 189,87 MB - [REPOST] yEnc ::: //(01/24) "ExBrULlNjyRPMdxqSlJKEtAYSncStZs3.nfo" - 3.96 kB - 404.55 MB - yEnc ::: //(01/44) - - "Wii_2688_R_Knorloading.par2" - 1,81 GB - yEnc',
  50
), (
  482,
  '^alt\\.binaries\\.games$',
  '/^\\(\\d+\\/\\d+\\) - \\[Lords-of-Usenet\\] presents (?P<match0>.+?)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - yEnc$/',
  1,
  '//(01/59) - [Lords-of-Usenet] presents Sins.of.a.Solar.Empire.Rebellion.Forbidden.Worlds-RELOADED - "rld-soaserfw.nfo" - yEnc',
  55
), (
  483,
  '^alt\\.binaries\\.games$',
  '/^\\(\\d+\\/(\\d+\\))[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+([.,]\\d+ [kKmMgG])?[bB] -(?P<match0>[a-zA-Z0-9-_\\.]+) yEnc$/',
  1,
  '//(19/28) "sr-joedanger.rar" - 816,05 MB -Joe.Danger-SKIDROW yEnc ::: //(39/40) "flt-ts31554.vol061+57.PAR2" - 1,43 GB -The_Sims_3_v1.55.4-FLTDOX yEnc',
  60
), (
  484,
  '^alt\\.binaries\\.games$',
  '/^[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[02/17] - "Castle.Of.Illusion.Starring.Mickey.Mouse.PSN.PS3-DUPLEX.nfo" yEnc',
  65
), (
  485,
  '^alt\\.binaries\\.games$',
  '/^\\[PROPER\\] (?P<match0>[a-zA-Z0-9-_\\.]+) [\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[PROPER] F',
  70
), (
  486,
  '^alt\\.binaries\\.games$',
  '/^<<<< (?P<match0>[a-zA-Z0-9-_ ]+) >>>> < USC> <".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")>\\[\\d+\\/(\\d+\\]) \\d+([.,]\\d+ [kKmMgG])?[bB] yEnc$/',
  1,
  '//<<<< Alien Zombie Death v2 EUR PSN PSP-PLAYASiA >>>> < USC> <"Alien Zombie Death v2 EUR PSN PSP-PLAYASiA.part4.rar">[06/16] 153,78 MB yEnc',
  75
), (
  487,
  '^alt\\.binaries\\.games$',
  '/^<<<.+\\.info>>> fuzzy <<<Powered by .+secretusenet\\.com><(?P<match0>[a-zA-Z0-9-_ ]+)>< ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/(\\d+) \\(\\d+([.,]\\d+ [kKmMgG])?[bB]\\) >< \\d+([.,]\\d+ [kKmMgG])?[bB] > yEnc$/',
  1,
  '//<<<usenet-space-cowboys.info>>> fuzzy <<<Powered by https://secretusenet.com><Adventures To Go EUR PSP-ZER0>< "Adventures To Go EUR PSP-ZER0.nfo" >< 2/6 (195,70 MB) >< 10,70 kB > yEnc',
  80
), (
  488,
  '^alt\\.binaries\\.games$',
  '/^FTDWORLD\\.NET\\| (?P<match0>[a-zA-Z0-9 -_\\.]+) \\[\\d+\\/(\\d+\\])- ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//FTDWORLD.NET| Grand.Theft.Auto.V.XBOX360-QUACK [020/195]- "gtavdisc1.r17" yEnc',
  85
), (
  489,
  '^alt\\.binaries\\.games$',
  '/^\\((?P<match0>[a-zA-Z0-9 -_\\.]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(F',
  90
), (
  490,
  '^alt\\.binaries\\.games$',
  '/^\\[\\d+\\/(\\d+\\])  \\((?P<match0>[a-zA-Z0-9 -_\\.]+)\\) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[16/62]  (CastleStorm.XBLA.XBOX360-MoNGoLS) - "mgl-cast.part15.rar" yEnc',
  95
), (
  491,
  '^alt\\.binaries\\.games$',
  '/^GOGDump (?P<match0>.+) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//GOGDump Wing Commander - Privateer (1993) [GOG] [03/14] - "Wing Commander - Privateer (1993) [GOG].part2.rar" yEnc',
  100
), (
  492,
  '^alt\\.binaries\\.games$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\(\\[]\\d+\\/\\d+\\]".+" yEnc$/',
  1,
  '//Uploader.Presents-Metal.Gear.Rising.Revengeance-RELOADED(51/65]"rld-megerire.r48" yEnc',
  105
), (
  493,
  '^alt\\.binaries\\.games$',
  '/^Uploader\\.Presents-(?P<match0>.+?) \\(\\?+\\) \\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Uploader.Presents-LEGO.The.Hobbit-RELOADED (????) [01/90] - "rld-legoho.nfo" yEnc',
  110
), (
  494,
  '^alt\\.binaries\\.games$',
  '/^\\( (?P<match0>[\\w. -]{8,}) \\)[-_\\s]{0,3}\\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//( Overlord II RELOADED ) - [013/112] - "rld-olii.part001.rar" yEnc',
  115
), (
  495,
  '^alt\\.binaries\\.games$',
  '/^(?P<match0>[a-zA-Z0-9 -\\._]+) - \\[\\d+\\/(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Baku.No.JAP.Working.PSP-PaL - [1/7] - "Baku.No.JAP.Working.PSP-PaL.rar" yEnc',
  120
), (
  496,
  '^alt\\.binaries\\.games$',
  '/^.+old but sold.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+[-_\\s]{0,3}\\(\\d+[.,]\\d+ [kKmMgG][bB]\\) >< \\d+[.,]\\d+ [kKmMgG][bB] >[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<Old but Sold> <<<usenet-space-cowboys.info>>> USC <<<Powered by secretusenet.com><Flatout WII Format WBFS>< "Flatout WII Format WBFS.part20.rar" >< 21/35 (1,39 GB) >< 47,68 MB > yEnc',
  125
), (
  497,
  '^alt\\.binaries\\.games$',
  '/^(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?)[-_\\s]{4,10}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Tiny Toon Adventures Buster & The Beanstalk PSX2PSP         - "EBOOT.nzb" yEnc',
  130
), (
  498,
  '^alt\\.binaries\\.games$',
  '/^>>> www\\.lords-of-usenet\\.org <<< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")(?P<match1> \\(PS2 Game\\)) \\[\\d+\\/\\d+\\] - \\[\\d+([.,]\\d+ [kKmMgG])?[bB]\\] yEnc$/ui',
  1,
  '//>>> www.lords-of-usenet.org <<< "SpongeBob & Freunde - Schlacht um die Vulkaninsel.part21.rar" (PS2 Game) [22/33] - [1,15 GB] yEnc',
  135
), (
  499,
  '^alt\\.binaries\\.games\\.dox$',
  '/(\\[[\\d#]+\\]-\\[.+?\\]-\\[.+?\\]-)\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/\\d+\\] - "(.+?)" yEnc$/',
  1,
  '//[142961]-[MP3]-[a.b.inner-sanctumEFNET]-[ Pascal_and_Pearce-Passport-CDJUST477-2CD-2011-1REAL ] [28/36] - "Pascal_and_Pearce-Passport-CDJUST477-2CD-2011-1REAL.par2" yEnc',
  5
), (
  500,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[NEW DOX\\][ _-]{0,3}(?P<match0>.+?)[ _-]{0,3}\\[\\d+\\/\\d+\\][ _-]{0,3}"([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[NEW DOX] The.King.of.Fighters.XIII.Update.v1.1c-RELOADED [1/6] - "The.King.of.Fighters.XIII.Update.v1.1c-RELOADED.par2" yEnc ::: //[NEW DOX] Crysis.3.Crackfix.3.INTERNAL-RELOADED [00/12] ".nzb"  yEnc',
  10
), (
  501,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[NEW DOX\\][ _-]{0,3}(?P<match0>.+?)[ _-]{0,3}"([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[NEW DOX] Minecraft.1.6.2.Installer.Updated.Server.List  - "Minecraft 1 6 2 Cracked Installer Updater Serverlist.nfo" - yEnc',
  15
), (
  502,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[ (?P<match0>[a-zA-Z0-9-\\._ ]+)  \\d+\\/(\\d+ \\]) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ Assassins.Creed.3.UPDATE 1.01.CRACK.READNFO-P2P  00/17 ] "Assassins.Creed.3.UPDATE 1.01.nzb" yEnc',
  20
), (
  503,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[\\d+\\/(\\d+\\]) - (?P<match0>[a-zA-Z0-9-\\.\\&_ ]+) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( - PC)? - yEnc$/',
  1,
  '//[01/16] - GRID.2.Update.v1.0.83.1050.Incl.DLC-RELOADED - "reloaded.nfo" - yEnc ::: //[12/17] - Call.of.Juarez.Gunslinger.Update.v1.03-FTS - "fts-cojgsu103.vol00+01.PAR2" - PC - yEnc',
  25
), (
  504,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[\\d+\\/(\\d+\\]) (?P<match0>[a-zA-Z0-9-\\._ ]+) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[36/48] NASCAR.The.Game.2013.Update.2-SKIDROW - "sr-nascarthegame2013u2.r33" yEnc',
  30
), (
  505,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[(?P<match0>[a-zA-Z0-9-\\._ ]+)\\]- ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Grand_Theft_Auto_Vice_City_1.1_Blood_NoCD_Patch-gimpsRus]- "grugtavc11bcd.nfo" yEnc',
  35
), (
  506,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\[OLD DOX\\][ _-]{0,3}\\(\\d+\\/\\d+\\)[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[,.]\\d+ [mMkKgG][bB][-_\\s]{0,3}yEnc$/',
  1,
  '//[OLD DOX] (0001/2018) - "18.Wheels.of.Steel.American.Long.Haul.CHEAT.CODES-RETARDS.7z" - 1,44 GB - yEnc',
  40
), (
  507,
  '^alt\\.binaries\\.games\\.dox$',
  '/^(?P<match0>[a-zA-Z0-9-\\._ ]+) - \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|"){0,3}yEnc$/',
  1,
  '//Endless.Space.Disharmony.v1.1.1.Update-SKIDROW - [1/6] - "Endless.Space.Disharmony.v1.1.1.Update-SKIDROW.nfo" - yEnc',
  45
), (
  508,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\((?P<match0>[a-zA-Z0-9-\\._ ]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|"){0,3}yEnc$/',
  1,
  '//(F.E.A.R.3.Update.1-SKIDROW) [01/12] - "F.E.A.R.3.Update.1-SKIDROW.par2" yEnc',
  50
), (
  509,
  '^alt\\.binaries\\.games\\.dox$',
  '/^\\((?P<match0>[a-zA-Z0-9-\\._ ]+)\\) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Company.of.Heroes.2.Update.v3.0.0.9704.Incl.DLC.GERMAN-0x0007) - "0x0007.nfo" yEnc',
  55
), (
  510,
  '^alt\\.binaries\\.games\\.wii$',
  '/^"(?P<match0>.+)__www.realmom.info__.+" \\(\\d+\\/\\d+\\) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//"National.Geographic.Challenge.USA.WII-dumpTruck__www.realmom.info__.jpg" (003/111) 4,81 GB yEnc',
  5
), (
  511,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[(?P<match0>.+)\\]-\\[#a.b.g.w@efnet\\]-\\[www.abgx.net\\]-\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[Cabelas_North_American_Adventure_USA_WII-ZRY-Scrubbed-xeroxmalf]-[#a.b.g.w@efnet]-[www.abgx.net]-[01/27] - "Cabelas_North_American_Adventure_USA_WII-ZRY-Scrubbed-xeroxmalf.par2" yEnc',
  10
), (
  512,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\d+ (\\d+\\.)?(?P<match0>.+-OneUp).+ \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//4300 World.Sports.Competition.USA.VC.Wii-OneUp....... AmigaOS4.1 RULEZ [0/9] - "4300.nzb" yEnc ::: //4300 1695.World.Sports.Competition.USA.VC.Wii-OneUp....... AmigaOS4.1 RULEZ [0/9] - "4300.nzb" yEnc',
  15
), (
  513,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\d+ - (?P<match0>.+-OneUp).+ \\d+\\/\\d+ - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//6717 - Baseball.Stars.2.PAL.VC.NG.Wii-OneUp - 01/11 - "1u-baseball-stars-2-pal.nfo" yEnc',
  20
), (
  514,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\]-\\[abgx.net\\] (?P<match0>.+) \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[2103]-[abgx.net] Harvey_Birdman_Attorney_At_Law-USA-WII [000/104] - "Harvey_Birdman_Attorney_At_Law-USA-WII.nzb" yEnc',
  25
), (
  515,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\(\\d+\\)-\\[abgx.net\\]-(?P<match0>.+)-\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//(3790)-[abgx.net]-[Samurai_Warriors_Katana_USA-WII]-[000/105] - "3790.nzb" yEnc',
  30
), (
  516,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[REQ# \\d+\\] Full \\d+ (?P<match0>.+) PAL ("|#34;).+("|#34;) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//[REQ# 7134] Full 105 Cocoto_Magic_Circus_PAL_Wii-OE PAL "oe-magic.r00" 4.57 GB yEnc',
  35
), (
  517,
  '^alt\\.binaries\\.games\\.wii$',
  '/\\[[\\d#]+\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?" yEnc$/',
  1,
  '//[11614]-[#a.b.g.wii@efnet]-[ EA.Sports.Active.NFL.Training.Camp.USA.WII-ProCiSiON ]-[01/95] - "xxx-nflt.nfo" yEnc',
  40
), (
  518,
  '^alt\\.binaries\\.games\\.wii$',
  '/\\[[\\d#]+\\]-\\[.+?\\]-\\[.+?\\]-\\[(?P<match0>.+?)\\][- ]\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?" yEnc$/',
  1,
  '//[8524]-[#a.b.g.wii@EFNet]-[FULL]-[Fantastic_Four_Rise_Of_The_Silver_Surfer_NTSC_Wii-VORTEX]-[001/104] - "vortex-ffrotss.wii.nfo" yEnc',
  45
), (
  519,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+]-\\[abgx\\]-\\[FULL\\]-\\[(?P<match0>.+)-PLAYME\\]-po0p.+-\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[13118]-[abgx]-[FULL]-[Doods_Big_Adventure_PAL_WII-PLAYME]-po0p?!-[000/103] - "13118.nzb" yEnc',
  50
), (
  520,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+]-\\[#ab@EFNet\\]-\\[FULL\\]-\\[(?P<match0>.+)-WiiERD\\]-po0p.+-\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[13208]-[#ab@EFNet]-[FULL]-[Calvin_Tuckers_Farm_Animal_Racing_PAL_Wii-WiiERD]-po0p!-[072/112] - "w-ctfar.r68" yEnc',
  55
), (
  521,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\(www\\.Thunder-News\\.org\\) ?>(?P<match0>.+)< ?<Sponsored.+>[ _-]{0,3}(\\(\\d+\\/\\d+\\)|\\[\\d+\\/\\d+\\])?[ _-]{0,5}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//(www.Thunder-News.org) >Winter.Stars.USA.WII-dumpTruck< <Sponsored by AstiNews> - (001/112) - "dumptruck-winterstars.par2" yEnc',
  60
), (
  522,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+]-\\[#a\\.b\\.g\\.wii@efnet\\]-\\[ ?(?P<match0>.+) ?\\]-\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[9987]-[#a.b.g.wii@efnet]-[ Tales.of.Elastic.Boy.Mission.1.USA.WiiWare.Wii-OneUp ]-[01/12] - #34;1u-tales-of-elastic-boy-mission-1.nfo#34; yEnc',
  65
), (
  523,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\] (?P<match0>.+) NTSC-J DVD5 \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[2207] Swing_Golf_Pangya_JPN_Wii-Caravan NTSC-J DVD5 [001/102] - "cvn-sgp.nfo" yEnc',
  70
), (
  524,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\] (?P<match0>.+) <>\\d+\\/\\d+<> ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[3867] FaceBreaker.K.O.Party.PAL.Wii-RANT <>000/110<> "3867.nzb" yEnc',
  75
), (
  525,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[COMPRESSED\\] (?P<match0>.+) \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//[COMPRESSED] Family_Feud_2010_Edition_USA_Wii-Qwi',
  80
), (
  526,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[COMPRESSED\\] (?P<match0>.+) - .+ \\[\\d+\\/\\d+\\] .+ yEnc$/',
  1,
  '//[COMPRESSED] Rooms.The.Main.Building.USA.WII-SUSHi - su-rousa.par2 [01/18] (1/1) (1/1) yEnc',
  85
), (
  527,
  '^alt\\.binaries\\.games\\.wii$',
  '/^WII4U - (?P<match0>.+) - \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//WII4U - thinkSMART.Family.USA.WII-dumpTruck - [01/15] - "dumptruck-tf.par2" yEnc',
  90
), (
  528,
  '^alt\\.binaries\\.games\\.wii$',
  '/^<<<Old but Sold>>> <<< >< >< ("|#34;)(?P<match0>.+)("|#34;) >< \\d+\\/\\d+ \\(\\) >< > yEnc$/',
  1,
  '//<<<Old but Sold>>> <<< >< >< "Rogue Trooper The Quartz Zone Massacre (2009)PAL Wii" >< 037/131 () >< > yEnc',
  95
), (
  529,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\]-\\[abgx@Efnet\\]-\\[(?P<match0>.+)\\] - \\(\\d+\\/\\d+\\) ".+".+yEnc$/',
  1,
  '//[6840]-[abgx@Efnet]-[My.Fitness.Coach.NTSC-WII-ProCiSiON] - (001/110) "xxx-mfc.par2" - 4.76 GB yEnc',
  100
), (
  530,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\]-\\[abgx@Efnet\\]-\\[Full\\]-\\[(?P<match0>.+)\\][ -]+\\[\\d+\\/\\d+\\] .+ yEnc$/',
  1,
  '//[6820]-[abgx@Efnet]-[Full]-[Cotton_Fantastic_Night_Dreams_NTSC_RF_TG16-CD.iNJECT_iNTERNAL_VC_Wii-0RANGECHiCKEN]- [01/16] - 0c-cotton-rf.nfo (1/1) (1/1) yEnc',
  105
), (
  531,
  '^alt\\.binaries\\.games\\.wii$',
  '/^\\[\\d+\\] \\[#alt\\.binaries\\.games\\.wii@efnet\\] \\[(?P<match0>.+)\\] \\[\\d+\\/\\d+\\].+yEnc$/',
  1,
  '//[3488] [#alt.binaries.games.wii@efnet] [Blades.Of.Steel.USA.VC.Wii-DiPLODOCUS] [0/8] 3488.nzb (1/1) (1/1) yEnc',
  110
), (
  532,
  '^alt\\.binaries\\.games\\.wii$',
  '/^<(?P<match0>.+)> \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//<Little.League.World.Series.Double.Play.USA.WII-dumpTruck> [001/110] - "Little.League.World.Series.Double.Play.USA.WII-dumpTruck.par2" yEnc',
  115
), (
  533,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^Uploader.Presents-(?P<match0>.+?)[\\(\\[]\\d+\\/\\d+\\]".+?" yEnc$/',
  1,
  '//Uploader.Presents-Injustice.Gods.Among.Us.Ultimate.Edition.XBOX360-COMPLEX(02/92]"complex-injustice.ultimate.nfo" yEnc ::: //Uploader.Presents-Need.For.Speed.Rivals.XBOX360-PROTOCOL[10/94]"nfs.r-ptc.r07" yEnc',
  5
), (
  534,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^place2home\\.net - (?P<match0>.*?) - (\\[\\d+\\/\\d+\\] - )?".+?" yEnc$/i',
  1,
  '//place2home.net - Call.of.Duty.Ghosts.XBOX360-iMARS - [095/101] - "imars-codghosts-360b.vol049+33.par2" yEnc ::: //Place2home.net - Diablo_III_USA_RF_XBOX360-PROTOCOL - "d3-ptc.r34" yEnc',
  10
), (
  535,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^"(?P<match0>.+)(__www\\.realmom\\.info__)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}") [\\[\\(]\\d+\\/(\\d+[\\]\\)]) \\d+[,.]\\d+ [mMkKgG][bB] yEnc$/',
  1,
  '//"Arcana_Heart_3_PAL_XBOX360-ZER0__www.realmom.info__.nfo" (02/89) 7,58 GB yEnc',
  15
), (
  536,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^[\\[\\(]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(01/15) "Mass.Effect.3.Collectors.Edition.DLC.JTAG-XPG.par2" - 747.42 MB - yEnc',
  20
), (
  537,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\(.+\\)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(????) [00/28] - "Farming.Simulator.XBOX360.JTAG.RGH.nzb" yEnc',
  25
), (
  538,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\(\\d+\\)[-_\\s]{0,3}(.+)[-_\\s]{0,3}[\\(\\[]\\d+\\/(?P<match0>\\d+[\\)\\]])[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(14227) BloodRayne_Betrayal_XBLA_XBOX360-XBLAplus [01/25] - "xp-blobe.nfo" yEnc',
  30
), (
  539,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^(\\(\\d+\\))[-_\\s]{0,3}\\[.+EFNet\\][-_\\s]{0,3}\\[(?P<match0>.+)\\][-_\\s]{0,3}\\[\\][-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(14811) [#alt.binaries.games.xbox360@EFNet]-[AMY_XBLA_XBOX360-XBLAplus]-[]-  "xp-amyxb.nfo"  yEnc',
  35
), (
  540,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^(\\(\\d+\\))[-_\\s]{0,3}\\[.+EFNet\\][-_\\s]{0,3}\\[(?P<match0>.+)\\][-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(14872) [#alt.binaries.games.xbox360@EFNet]-[BlazBlue_CS_System_Version_Data_Pack_1.03-DLC_XBOX360]-  "xp-bbcssvdp103.nfo"  yEnc',
  40
), (
  541,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\(\\d+\\/(\\d+\\))[-_\\s]{0,3}(?P<match0>.+?)[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(44/82) - Fuzion_Frenzy_2_REPACK-USA-XBOX360-DAGGER - "ff2r-dgr.041" - 6.84 GB - yEnc',
  45
), (
  542,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\[[-_\\s]{0,3}(\\d+)[-_\\s]{0,3}\\][-_\\s]{0,3}\\[ ABGX.+\\][-_\\s]{0,3}\\[[-_\\s]{0,3}(?P<match0>.+)[-_ ]{0,4}\\][-_ ]{0,4}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(.+?)(\\.part\\d*|\\.rar)?(\\.vol.+\\(\\d+\\\\d+\\)"|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}\\d+[,.]\\d+ [mMkKgG][bB][-_\\s]{0,3}yEnc$/i',
  1,
  '//[  14047  ] - [ ABGX@EFNET ] - [  Rock.Band.Pearl.Jam.Ten.DLC.XBOX360-FYK ALL DLC    ] -  (01/46) "rbpjtdlc-fyk.nfo" - 526,92 MB - yEnc ::: //[  14046  ] - [ ABGX@EFNET ] - [  Rock_Band-2011-07-19-DLC_XBOX360-XBLAplus ALL   ] -  (01/12) "xp-rb-2011-07-19.nfo" - 198,70 MB - yEnc ::: //[ 14102 ] -[ ABGX.NET ] - [ F1.2010.XBOX360-COMPLEX NTSC DVD9  ] -  (01/79) "cpx-f12010.nfo" - 6,57 GB - yEnc',
  50
), (
  543,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\[[-_\\s]{0,3}(\\d+)[-_\\s]{0,3}\\][-_\\s]{0,3}\\[FULL\\][-_\\s]{0,3}\\[ (abgx360EFNet|#abgx360@EFNet) \\][-_\\s]{0,3}\\[[-_\\s]{0,3}(?P<match0>.+)[-_\\s]{0,3}\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(.+?)(\\.part\\d*|\\.rar)?(\\.vol.+\\(\\d+\\\\d+\\)"|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}yEnc$/i',
  1,
  '//[ 17956]-[FULL]-[ abgx360EFNet ]-[ F1_2012_JPN_XBOX360-Caravan ]-[78/99] - "cvn-f12012j.r75" yEnc ::: //[ 17827]-[FULL]-[ #abgx360@EFNet ]-[ Capcom_Arcade_Cabinet_XBLA_XBOX360-XBLAplus ]-[01/34] - "xp-capac.nfo" yEnc',
  55
), (
  544,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/^\\[[-_\\s]{0,3}GAMERZZ[-_\\s]{0,3}\\][-_\\s]{0,3}\\[[-_\\s]{0,3}(?P<match0>.+)[-_\\s]{0,3}\\][-_\\s]{0,3}\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}"(.+?)(\\.part\\d*|\\.rar)?(\\.vol.+\\(\\d+\\\\d+\\)"|\\.[A-Za-z0-9]{2,4}")[-_\\s]{0,3}yEnc$/i',
  1,
  '//[ GAMERZZ ] - [ Grand.Theft.Auto.V.XBOX360-COMPLEX ] [159/170] - "complex-gta5.vol000+18.par2" yEnc',
  60
), (
  545,
  '^alt\\.binaries\\.games\\.xbox360$',
  '/.*"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"Mass.Effect.3.From.Ashes.DLC.XBOX360-MoNGoLS.nfo" yEnc',
  65
), (
  546,
  '^alt\\.binaries\\.german\\.movies$',
  '/^>ghost-of-usenet\\.org>(?P<match0>.+?)<.+?> ".+?" yEnc$/',
  1,
  '//>ghost-of-usenet.org>Monte.Cristo.GERMAN.2002.AC3.DVDRiP.XviD.iNTERNAL-HACO<HAVE FUN> "haco-montecristo-xvid-a.par2" yEnc',
  5
), (
  547,
  '^alt\\.binaries\\.german\\.movies$',
  '/^<ghost-of-usenet\\.org>(?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" .+? yEnc$/',
  1,
  '//<ghost-of-usenet.org>XCOM.Enemy.Unknown.Deutsch.Patch.TokZic [0/9] - "XCOM Deutsch.nzb" ein CrazyUpp yEnc',
  10
), (
  548,
  '^alt\\.binaries\\.ghosts$',
  '/^<ghost-of-usenet\\.org>(?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" .+? yEnc$/',
  1,
  '//<ghost-of-usenet.org>XCOM.Enemy.Unknown.Deutsch.Patch.TokZic [0/9] - "XCOM Deutsch.nzb" ein CrazyUpp yEnc',
  5
), (
  549,
  '^alt\\.binaries\\.ghosts$',
  '/^\\(\\d+\\/(\\d+\\)) ("|#34;)(?P<match0>.+)(\\.[vol|part].+)?\\.(par2|nfo|rar|nzb)("|#34;) - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/i',
  1,
  '//(116/175) "Embrace.of.the.Vampire.1995.1080p.BluRay.x264.Y',
  10
), (
  550,
  '^alt\\.binaries\\.hdtv$',
  '/^(\\[ TrollHD \\] - )?[\\[\\(][-_\\s]{0,3}\\d+\\/(\\d+[-_\\s]{0,3}[\\)\\]]) - "(?P<match0>.+?) MPEG2-(DON|TrollHD)\\..+?" yEnc$/',
  1,
  '//[ TrollHD ] - [ 0270/2688 ] - "Tour De France 2013 1080i HDTV MPA 2.0 MPEG2-TrollHD.part0269.rar" yEnc ::: //[17/48] - "Oprah\'s Next Chapter S02E37 Lindsay Lohan 1080i HDTV DD5.1 MPEG2-TrollHD.part16.rar" yEnc ::: //[02/29] - "Fox Sports 1 on 1 - Tom Brady 720p HDTV DD5.1 MPEG2-DON.part01.rar" yEnc',
  5
), (
  551,
  '^alt\\.binaries\\.hdtv$',
  '/^\\.oO "(?P<match0>.+)__www.realmom.info__.+" Oo. \\[\\d+\\/\\d+\\] \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//.oO "20.Years.After.German.2008.AC3.BDRip.XviD.INTERNAL-ARC__www.realmom.info__.nfo" Oo. [02/39] 1,43 GB yEnc',
  10
), (
  552,
  '^alt\\.binaries\\.hdtv$',
  '/^\\[ \\d+ \\] - \\[ TrollHD \\] - \\[ \\d+\\/\\d+ ] - "(?P<match0>.+)\\..+" yEnc$/',
  1,
  '//[ 09821 ] - [ TrollHD ] - [ 00/54 ] - "Chopped CQ0808H My Way 1080i HDTV DD5.1 MPEG2-TrollHD.nzb" yEnc',
  15
), (
  553,
  '^alt\\.binaries\\.hdtv$',
  '/^\\[ TrollHD \\] - \\[ \\d+\\/\\d+ \\] - "(?P<match0>.+)\\.par.+" yEnc$/',
  1,
  '//[ TrollHD ] - [ 01/19 ] - "America\'s Test Kitchen From Cook\'s Illustrated - Ultimate Grilled Turkey Burgers 480i PDTV DD2.0 MPEG2-TrollSD.par2" yEnc',
  20
), (
  554,
  '^alt\\.binaries\\.hdtv$',
  '/^NBC.+\\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.vol.+" yEnc$/',
  1,
  '//NBC Nightly News - Flash Video - 11-20-2013 [13/15] - "NBC Nightly News 11-20-2013.flv.vol03+04.par2" yEnc',
  25
), (
  555,
  '^alt\\.binaries\\.hdtv$',
  '/\\(Newseros\\.com\\) .+? \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Newseros.com) Cueva 1080p [02/42] - "idonhom-mirc.part01.rar" yEnc',
  30
), (
  556,
  '^alt\\.binaries\\.hdtv$',
  '/^.+S\\d+E\\d+.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//It\'s.Always.Sunny.in.Philadelphia.S07E09.The.Gang.Gets.Trapped.BluRay.1080p.Remux.AVC.DTSHD-MA.5.1-PtZ-BeyondHD.me [047/123] - "It\'s.Always.Sunny.in.Philadelphia.S07E09.The.Gang.Gets.Trapped.BluRay.1080p.Remux.AVC.DTSHD-MA.5.1-PtZ-BeyondHD.me.r44" yEnc',
  35
), (
  557,
  '^alt\\.binaries\\.hdtv$',
  '/^\\(.+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Alpha.House.S01E08.WEBRip.1080p.x264.DD5.1-Absinth) [14/24] - "Alpha.House.S01E08.WEBRip.1080p.x264.DD5.1-Absinth.part13.rar" yEnc',
  40
), (
  558,
  '^alt\\.binaries\\.hdtv$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] .+yEnc$/',
  1,
  '//(024/264) "Enf.S04E02.G.D.H.X-M.vol51+46.PAR2" - 8,27 GB -Enf.S04.G.D.H.X yEnc',
  45
), (
  559,
  '^alt\\.binaries\\.hdtv$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/i',
  1,
  '//[01/10] - "Wondershare.Video.Converter.Ultimate.v6.7.1.0.Multilanguage.par2" - 45,44 MB yEnc',
  50
), (
  560,
  '^alt\\.binaries\\.hdtv$',
  '/^[\\(\\[]\\d+\\/\\d+[\\)\\]] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/60) "Micro Monsters With David Attenborough 2013 3D HSBS DTS5.1 EP5 - Family-3D4U.par2" yEnc',
  55
), (
  561,
  '^alt\\.binaries\\.hdtv$',
  '/^\\[ TrollHD \\] - [\\(\\[] \\d+\\/\\d+ [\\)\\]] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ TrollHD ] - [ 01/32 ] - "Demi Lovato - 2vLive Concert 2013-10-28 PROPER [see NFO] 720p WEB-CAP AAC2.0 H.264-TrollHD.nfo" yEnc',
  60
), (
  562,
  '^alt\\.binaries\\.hdtv$',
  '/\\[\\d+\\][-_\\s]{0,3}\\[ PPKORE \\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[00245] [ PPKORE ] [44/57] - "The L Word S04E08 1080p WEB-DL DD5 1 H 264-PPKORE.vol014+14.par2" yEnc',
  65
), (
  563,
  '^alt\\.binaries\\.hdtv$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) {0,3}yEnc$/',
  1,
  '//Adobe Photoshop Lightroom v5.2 - FiNaL - Multilingual [WIN].vol037+32.PAR2  yEnc',
  70
), (
  564,
  '^alt\\.binaries\\.hdtv$',
  '/^[\\w-\\.]+ "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Bad.Penny.2013.720p.HDTV.x264-GBL "bad.penny.2013.720p.hdtv.x264-gbl.par2" yEnc',
  75
), (
  565,
  '^alt\\.binaries\\.hdtv$',
  '/^[\\w-\\. ]+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The.Colbert.Report.2013.07.29.The.Lumineers.WEBRip.AAC2.0.H.264-DCK [01/11] - "The.Colbert.Report.2013.07.29.The.Lumineers.WEBRip.AAC2.0.H.264-DCK.mp4"  yEnc',
  80
), (
  566,
  '^alt\\.binaries\\.hdtv$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//"8 Wenn ich einmal gross bin .mp3" Koelschefetz postet.Die Filue -Immer Wigger  yEnc',
  85
), (
  567,
  '^alt\\.binaries\\.hdtv$',
  '/^(?P<match0>.+?)[-_\\s]{0,3}\\(?[Pp]ostet +by +\\(?Edition50\\)?[- ]{0,4}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//Elysium  (AVCHD)  2013  (720p)  Untouched  (Postet by Edition50)    [01/169] - "file.xyz" yEnc ::: //Frozen Ground  (AVCHD)  2013  (720p)  postet by Edition50 - [01/158] - "file.xyz" yEnc - [000/158] - "FROZEN GROUND  (AVCHD)  2013  (720p)  Untouched.nzb" yEnc ::: //Cabin in the Woods  (AVCHD)  2013  (720p)  Postet by (Edition50) [01/159] - "file.xyz" yEnc',
  90
), (
  568,
  '^alt\\.binaries\\.hdtv$',
  '/^(?P<match0>.+?)[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Dark Zero Thirty (2013)  AVCHD (720p)  Untouched [01/151] - "ZERO DARK THIRTY  (2013)  AVCHD  720p)  Untouched.par2" yEnc',
  95
), (
  569,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^(AMEa)?\\(\\d+\\/\\d+\\)( - AME-)? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(23/36) "Love.Is.In.The.Meadow.S08E08.HDTV.720p.x264.ac3.part22.rar" - 2,80 GB - yEnc ::: //AMEa(01/49) - AME- "Arbitrage 2013 DTS HD MSTR 5.1 MKV h264 1080p German by AME.nfo" - 7,87 GB - yEnc',
  5
), (
  570,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^(?P<match0>[A-Z0-9a-z][A-Za-z0-9.-]+) -? \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Hard.Target.1993.1080p.Bluray.X264-BARC0DE - [36/68] - "BARC0DE1080pHTAR.r22" yEnc ::: //Goddess.2013.720p.BDRip.x264.AC3-noOne  [086/100] - "Goddess.2013.720p.BDRip.x264.AC3-noOne.part84.rar" yEnc',
  10
), (
  571,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/(?P<match0>.+?)\\s+(Avi )?by Waldorf\\s+-\\s+\\[\\d+\\/\\d+\\]\\s+-\\s+".+?"\\s+yEnc$/',
  1,
  '//I Love Democracy - Norwegen - Doku -  2012 - (German)  - AC3 HD720p  Avi by Waldorf -  [02/71] - "Waldorf.jpg" yEnc',
  15
), (
  572,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^[A-Z][a-zA-Z0-9 ]+ [- ] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Season of the Witch 2011 - "Season.of.the.Witch.2011.1080p.BluRay.DTS.x264-CyTSuNee.part005.rar" yEnc ::: //Film - "Alien Antology DC Special Edition 1979-1997 1080p GER HUN HighCode.part001.rar" yEnc ::: //Austex Memorandum   "Austex Memorandum 700877270640835.z17" yEnc',
  20
), (
  573,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\(\\d+\\/\\d+\\) yEnc$/',
  1,
  '//"Ninja-Revenge Will Rise UC-Pittis AVCHD-ADD.English.dtsHR.nfo.txt" (01/55) yEnc',
  25
), (
  574,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\[ (?P<match0>[A-Za-z0-9.-]{7,}) \\] - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[ The.Looney.Tunes.Show.S02E20.480p.WEB-DL.AAC2.0.H.264-YFN ] - [01/19] - "The.Looney.Tunes.Show.S02E20.The.Shell.Game.480p.WEB-DL.AAC2.0.H.264-YFN.nfo" yEnc',
  30
), (
  575,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\.oO "(?P<match0>.+)__www.realmom.info__.+" Oo. \\[\\d+\\/\\d+\\] \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//.oO "20.Years.After.German.2008.AC3.BDRip.XviD.INTERNAL-ARC__www.realmom.info__.nfo" Oo. [02/39] 1,43 GB yEnc',
  35
), (
  576,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\[\\d+\\][ -]\\[#.+\\][ -]\\[(?P<match0>.+)\\][ -]\\[\\d+\\/\\d+\\][-_\\s]{0,3}("|#34;).+("|#34;) yEnc$/',
  1,
  '//[8370]-[#alt.binaries.hdtv.x264@EFNet]-[Mr.Brooks.2007.720p.BluRay.DTS.x264-ESiR]-[00/86] "Mr.Brooks.2007.720p.BluRay.DTS.x264-ESiR.nzb" yEnc',
  40
), (
  577,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\((?P<match0>.+)\\) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//(The.Ghost.Writer.2010.hd.for.ipad.NLSUB) [01/21] - "The.Ghost.Writer.2010.hd.for.ipad.NLSUB.part01.rar" yEnc',
  45
), (
  578,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\[ (?P<match0>[\\w\\s\\.-]+) \\] - \\[\\d+\\/\\d+\\][ -]*".+"\\s*yEnc$/',
  1,
  '//[ The Amazing Race S23 720p WEB-DL AAC2.0 H.264 ] - [01/40] - "The.Amazing.Race.S23E08.720p.WEB-DL.AAC2.0.H.264-KiNGS.nfo" yEnc',
  50
), (
  579,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\(\\[]\\d+\\/\\d+[\\)\\]]".+" yEnc$/',
  1,
  '//Uploader.Presents-Phantom.2013.German.AC3D.BluRay.1080p.x264-IND[01/62]"phantom.1080p.par2" yEnc',
  55
), (
  580,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>.+WEB-DL.+)\\.sfv" yEnc$/',
  1,
  '//[01/18] - "ROH.2013.11.16.#113.WEB-DL.h264-COiL.sfv" yEnc',
  60
), (
  581,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^-{NR\\.C}- - \\[\\d+\\/(\\d+\\]) - ("|#34;)(?P<match0>.+)(\\.[vol|part].+)?\\.(par2|nfo|rar|nzb)("|#34;) yEnc$/',
  1,
  '//-{NR.C}- - [00/96] - "Being.Liverpool.S01.720p.HDTV.x264-DHD.nzb" yEnc',
  65
), (
  582,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^- \\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)(\\.part\\d*|\\.rar|\\.pdf)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//- [34/69] - "Zero.Charisma.2013.WEB-DL.DD5.1.H.264-HaB.part33.rar" yEnc',
  70
), (
  583,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/.+www\\.hotrodpage\\.info.+\\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)(\\.part\\d*|\\.rar|\\.pdf)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//-=www.hotrodpage.info=- Makaveli -=HoTCreWTeam=- Post: - [000/192] - "Hop (2011) 1080p AVCHD.nzb" yEnc',
  75
), (
  584,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^.+?\\[(\\d+[.,]\\d+ [kKmMgG][bB])\\] \\[\\d+\\/(\\d+\\][-_\\s]{0,3}.+?)[-_\\s]{0,3}"(?P<match0>.+?)(\\.part\\d*|\\.rar|\\.pdf)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//-4y (PW)   [ usenet-4all.info - powered by ssl.news -] [12,40 GB] [49/57] "43842168c542ed3.vol000+01.par2" yEnc',
  80
), (
  585,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/.*[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//!MR [01/49] - "Persuasion 2007.par2" EN MKV yEnc',
  85
), (
  586,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^.+ ?\\[\\d+( of |\\/)\\d+\\] ("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.[A-Za-z0-9]{2,4})?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//Wonders.of.the.Universe.S02E03.1080p.HDTV.x264.AC3.mp4 [1 of 54] "Wonders.of.the.Universe.S02E03.The.Known.and.the.Unknown.1080p.HDTV.x264.AC3-tNe.mp4.001" yEnc ::: //Wilfred Season 2 - US - 720p WEB-DL [28 of 43] "Wilfred.US.S02E01.Progress.720p.WEB-DL.DD5.1.H264-NTb.mkv.001" yEnc',
  90
), (
  587,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/^.+ ?\\d+( of |\\/)\\d+ - ("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.[A-Za-z0-9]{2,4})?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//The.Walking.Dead.S02E13.720p.WEB-DL.AAC2.0.H.264-CtrlHD -Kopimi- - 01/37 - "The.Walking.Dead.S02E13.Beside.the.Dying.Fire.720p.WEB-DL.AAC2.0.H.264-CtrlHD.nfo" yEnc',
  95
), (
  588,
  '^alt\\.binaries\\.hdtv\\.x264$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//The.Guild.S05E12.Grande.Finale.1080p.WEB-DL.x264.AC3.PSIV - "The.Guild.S05E12.Grande.Finale.1080p.WEB-DL.x264.AC3.PSIV.nfo" yEnc',
  100
), (
  589,
  '^alt\\.binaries\\.highspeed$',
  '/^Old\\s+Dad\\s+uppt? ?(?P<match0>.+?)( mp4| )?\\[?\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Old Dad uppt 18 und immer (noch) Jungfrau DvD Rip AC3 XviD German 02/34] - "18 und immer (noch) Jungfrau.part01.rar" yEnc ::: //Old Dad uppt In ihrem Haus DVD Ripp AC3 German Xvid [01/31] - "In ihrem Haus.par2" yEnc ::: //Old Dad uppt Eine offene Rechnung XviD German DVd Rip[02/41] - "Eine offene Rechnung.part01.rar" yEnc ::: //Old Dad uppMiss Marple: Der Wachsblumenstrauß , Wunschpost Xvid German10/29] - "Miss Marple Der Wachsblumenstrauß.part09.rar" yEnc',
  5
), (
  590,
  '^alt\\.binaries\\.highspeed$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB]( -)? yEnc$/',
  1,
  '//[03/61] - "www.realmom.info - xvid - xf-fatalmovecd1.r00" - 773,34 MB - yEnc ::: //[40/54] - "Mankind.Die.Geschichte.der.Menschheit.S01E12.Das.Ende.der.Reise.GERMAN.DUBBED.DL.DOKU.1080p.BluRay.x264-TVP.part39.rar" - 4,79 GB yEnc',
  10
), (
  591,
  '^alt\\.binaries\\.highspeed$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>.+?) upp.by.+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[02/10] - "Fast.And.Furious.6 (2013).German.720p.CAM.MD-MW upp.by soV1-soko.rar" yEnc',
  15
), (
  592,
  '^alt\\.binaries\\.highspeed$',
  '/^>ghost-of-usenet\\.org>(?P<match0>.+?)\\(.+?\\).+? \\(\\d+\\/\\d+\\) ".+?" yEnc$/',
  1,
  '//>ghost-of-usenet.org>The A-Team S01-S05(Folgen einzelnd ladbar)<Sponsored by Astinews< (1930/3217) "isd-ateamxvid-s04e21.r19" yEnc',
  20
), (
  593,
  '^alt\\.binaries\\.highspeed$',
  '/^www\\..+? \\[Sponsored.+?\\] \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//www.usenet-town.com [Sponsored by Astinews] (103/103) "Intimate.Enemies.German.2007.AC3.[passwort protect].vol60+21.PAR2" yEnc',
  25
), (
  594,
  '^alt\\.binaries\\.highspeed$',
  '/^(?P<match0>[A-Za-z0-9][a-zA-Z0-9.-]{6,})\\s+- ".+?" yEnc$/',
  1,
  '//Das.Schwergewicht.German.DL.720p.BluRay.x264-ETM - "etm-schwergewicht-720p.part20.rar" yEnc',
  30
), (
  595,
  '^alt\\.binaries\\.highspeed$',
  '/^\\[ .+? \\] \\[ www\\..+? \\]( \\[.+?\\])? \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ TiMnZb ] [ www.binnfo.in ] [REPOST] [01/46] - "Columbo - S07 E05 - Des sourires et des armes.nfo" yEnc',
  35
), (
  596,
  '^alt\\.binaries\\.highspeed$',
  '/^< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(.+?\\) >< .+? > yEnc$/',
  1,
  '//< "Burn.Notice.S04E17.Out.of.the.Fire.GERMAN.DUBBED.DL.720p.WebHD.x264-TVP.par2" >< 01/17 (1.54 GB) >< 11.62 kB > yEnc',
  40
), (
  597,
  '^alt\\.binaries\\.highspeed$',
  '/^[A-Za-z0-9]+ postet (?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Batman postet 30 Nights of Paranormal Activity with the Devil Inside AC3 XviD German [01/24] - "30 Nights of Paranormal Activity with the Devil Inside.par2" yEnc',
  45
), (
  598,
  '^alt\\.binaries\\.highspeed$',
  '/^\\[\\d+\\/\\d+ (?P<match1>.+?)(\\.(part\\d*|rar|avi|iso|mp4|mkv|mpg))?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//[04/20 Geroellheimer - S03E19 - Freudige ?berraschung Geroellheimer - S03E19 - Freudige ?berraschung.mp4.004" yEnc',
  50
), (
  599,
  '^alt\\.binaries\\.highspeed$',
  '/^"(?P<match0>.{7,}?)(\\.(part\\d*|rar|avi|mp4|mkv|mpg))?(\\d{1,3}\\.rev"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//"Homeland.S01.Complete.German.WS.DVDRiP.XViD-ETM.part001.rar" yEnc',
  55
), (
  600,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^\\[ nEwZ\\[NZB\\]\\.iNFO( \\])?[-_\\s]{0,3}\\[ (\\d+[-_])?(?P<match0>.+?) \\][-_\\s]{0,3}(File )?[\\(\\[]\\d+\\/(\\d+[\\)\\]]): "(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?(yEnc)?$/',
  1,
  '//[ nEwZ[NZB].iNFO - [ Zed--The_Invitation-WEB-2010-WUS ] - File [12/13]: "08-zed--the_river.mp3" yEnc',
  5
), (
  601,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^nEwZ\\[NZB\\]\\.iNFO[-_\\s]{0,3} (?P<match0>.+?) [-_\\s]{0,3}(File )?[\\(\\[]\\d+\\/(\\d+[\\)\\]]): "(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")$/',
  1,
  '//nEwZ[NZB].iNFO - VA-Universal_Music_Sampler_07_February-PROMO-CDR-FLAC-2013-WRE - File [6/9]: "01-alesso-years_(hard_rock_sofa_remix).flac"',
  10
), (
  602,
  '^alt\\.binaries\\.inner-sanctum$',
  '/.+[DoAsYouLike\\].?[ _-]{0,3}\\d+[,.]\\d+ [mMkKgG][bB][-_\\s]{0,3}"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[ _-]{0,3}\\d+([,.]\\d+ [mMkKgG])? [bB][-_\\s]{0,3}yEnc$/',
  1,
  '//..:[DoAsYouLike]:..   1,11 GB   "KGMmDSSHBWnxV4g7Vbq5.part01.rar"   47,68 MB yEnc',
  15
), (
  603,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^\\(\\d+\\/\\d+\\)( - Description -)? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( - \\d+[,.]\\d+ [mMkKgG][bB])? - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(01/10) "LeeDrOiD HD V3.3.2-Port-R4-A2SD.par2" - 357.92 MB - yEnc',
  20
), (
  604,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Ashlar-Vellum Graphite v8 2 2 WinAll Incl Keygen-CRD.par2" yEnc',
  25
), (
  605,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^\\((?P<match0>[a-zA-Z0-9._-]+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") yEnc$/',
  1,
  '//(VA-I_Love_Yaiza_Vol.1-WEB-2012-ServerLab) [01/11] - ".sfv" yEnc',
  30
), (
  606,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^[\\[\\(]\\d+( of |\\/)(\\d+[\\]\\)])[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(17/41) - "3-8139g0m530.017" yEnc',
  35
), (
  607,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^nEwZNZB\\.wz\\.cz - (?P<match0>.+?) - File \\[\\d+\\/\\d+]: ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//nEwZNZB.wz.cz - The.Block.AU.Sky.High.S07E12.WS.PDTV.XviD.BF1 - File [01/22]: "The.Block.AU.Sky.High.S07E12.WS.PDTV.XviD.BF1.part01.rar" yEnc',
  40
), (
  608,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^nEwZ\\[NZB\\]_wz_cz - (?P<match0>.+?) - File \\[\\d+\\/\\d+]: ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//nEwZ[NZB]_wz_cz - u.s.drug.wars.s02e06.hdtv.x264-mtg - File [02/28]: "eII34BvTxvDMSJZ2ulvh.r00" yEnc',
  45
), (
  609,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^nEwZNZB\\.wz\\.cz - (?P<match0>.+?) - File \\d+ of \\d+: ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//nEwZNZB.wz.cz - Club_FG-SAT-05-22 - File 4 of 4: "01-jean_jerome-club_fg-05-22-2013-tdmlive.mp3" yEnc',
  50
), (
  610,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^[a-zA-Z0-9._-]+ \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Big.Brother.IL.S05E01.WS.PDTV.XviD-Silver007 [1/1] - "Big.Brother.IL.S05E01.WS.PDTV.XviD-Silver007.avi" yEnc',
  55
), (
  611,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^\\[ [a-f0-9]{32} \\] \\[\\d+\\/\\d+\\] - "\\d+[-_](?P<match0>.+?)\\.[a-z0-9]{3,4}" yEnc$/i',
  1,
  '//[ f680631754c469e49d3447bf0beadb8e ] [1/8] - "00-chris_carreiro-dirty-web-2014.m3u" yEnc ::: //',
  60
), (
  612,
  '^alt\\.binaries\\.inner-sanctum$',
  '/\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//		} ::: return array( ::: "cleansubject" => $this->releaseCleanerHelper($this->subject), "properlynamed" => false ::: ); ::: } ::: // a.b.kenpsx ::: public function kenpsx() ::: { ::: // Beachbody.ShaunT.Focus.T25 [01/39] - "Beachbody.ShaunT.Focus.T25.DVD3.Ab.Intervals.par2" yEnc',
  65
), (
  613,
  '^alt\\.binaries\\.inner-sanctum$',
  '/^(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '// 8rg5f9v7yba9ll2ny4z8vvh5exddygh2.par2" yEnc',
  70
), (
  614,
  '^alt\\.binaries\\.mojo$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//[17/61] - "www.realmom.info - xvid - xf-devilstomb.r14" - 773,11 MB - yEnc',
  5
), (
  615,
  '^alt\\.binaries\\.mom$',
  '/^\\[usenet4ever\\.info\\] und \\[SecretUsenet\\.com\\] - (?P<match0>.+?)-u4e - ".+?" yEnc$/',
  1,
  '//[usenet4ever.info] und [SecretUsenet.com] - 96e323468c5a8a7b948c06ec84511839-u4e - "96e323468c5a8a7b948c06ec84511839-u4e.par2" yEnc',
  5
), (
  616,
  '^alt\\.binaries\\.mom$',
  '/^\\[Art-of-Usenet\\] ([a-fA-F0-9]+) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.info/.net <<<Partner von SSL-News.info>>> - [01/26] - "Be.Cool.German.AC3.HDRip.x264-FuN.par2" yEnc',
  10
), (
  617,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+?[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [03/20] - "Weblinger - The.Haunted.House.Mysteries.v1.0-ZEKE.part01.rar" yEnc',
  15
), (
  618,
  '^alt\\.binaries\\.mom$',
  '/[\\w.-]{8,}[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//ShesGonnaSquirt.12.12.13.Sindy.Lange.My.Knight.In.Squirting.Armor.XXX.1080p.x264 - [1/1] - "ShesGonnaSquirt.12.12.13.Sindy.Lange.My.Knight.In.Squirting.Armor.XXX.1080p.x264.rar" yEnc',
  20
), (
  619,
  '^alt\\.binaries\\.mom$',
  '/^\\[Art-of-Usenet\\] .+? \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Art-of-Usenet] dea75eb65e65c56197d749d57919806d [01/19] - "dea75eb65e65c56197d749d57919806d.par2" yEnc',
  25
), (
  620,
  '^alt\\.binaries\\.mom$',
  '/^<ghost-of-usenet\\.org>(?P<match0>.+?) \\[\\d+\\/\\d+\\] - ".+?" .+? yEnc$/',
  1,
  '//<ghost-of-usenet.org>XCOM.Enemy.Unknown.Deutsch.Patch.TokZic [0/9] - "XCOM Deutsch.nzb" ein CrazyUpp yEnc',
  30
), (
  621,
  '^alt\\.binaries\\.mom$',
  '/^\\.oO "(?P<match0>.+)__www.realmom.info__.+" Oo. \\[\\d+\\/\\d+\\] \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//.oO "20.Years.After.German.2008.AC3.BDRip.XviD.INTERNAL-ARC__www.realmom.info__.nfo" Oo. [02/39] 1,43 GB yEnc',
  35
), (
  622,
  '^alt\\.binaries\\.mom$',
  '/^<kere\\.ws>[ _-]{0,3}\\w+(-\\w+)?[ _-]{0,3}\\d+[ _-]{0,3}(?P<match0>.+) - \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+?("|#34;) yEnc$/i',
  1,
  '//<kere.ws> - 0DAY - 1331086126 - Robokill.Rescue.Titan.Prime.v1.1.MacOSX.Cracked-CORE - [1/9] - "Robokill.Rescue.Titan.Prime.v1.1.MacOSX.Cracked-CORE.par2" yEnc',
  40
), (
  623,
  '^alt\\.binaries\\.mom$',
  '/^\\[(?P<match0>.+?)\\][ _-]{0,3}\\[www\\.usenet4ever\\.info by Secretusenet][ _-]{0,3} ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[A_New_Found_Glory-Its_All_About_The_Girls-Reissue-CDEP-FLAC-2003-JLM] [www.usenet4ever.info by Secretusenet] -  "00-a_new_found_glory-its_all_about_the_girls-reissue-cdep-flac-2003.jpg" yEnc',
  45
), (
  624,
  '^alt\\.binaries\\.mom$',
  '/^(Mom\\d+[ _-]{0,3})?"(?P<match0>.+?)__www\\.realmom\\.info__([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]]) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/i',
  1,
  '//MoM100060 - "Florian_Arndt-Trix-(BBM36)-WEB-2012-UKHx__www.realmom.info__.nfo" [2/7] 29,04 MB yEnc ::: //"Alan.Wake.v1.02.16.4261.Update-SKIDROW__www.realmom.info__.nfo" (02/17) 138,07 MB yEnc',
  50
), (
  625,
  '^alt\\.binaries\\.mom$',
  '/^"(?P<match0>.+?)"\\(\\d+\\/(\\d+\\))[ _-]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB] yEnc$/i',
  1,
  '//"The.Draughtsmans.Contract.1982.576p.BluRay.DD2.0.x264-EA"(15/56) "The.Draughtsmans.Contract.1982.576p.BluRay.DD2.0.x264-EA.part13.rar" - 2.37 GB yEnc',
  55
), (
  626,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/(\\d+\\))[ _-]{0,3}Description[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(01/29) - Description - "Revolution.2012.S01E06.HDTV.x264-LOL.nfo" - 317.24 MB - yEnc',
  60
), (
  627,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/(\\d+\\))[ _-]{0,3}\\[Lords-of-Usenet\\][ _-]{0,3}<<Partner of SSL-News\\.info>>[ _-]{0,3}(?P<match0>.+?)[ _-]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(02/17) - [Lords-of-Usenet] <<Partner of SSL-News.info>> i8dewFjzft94BW71EI0s -"19913.r00" - 928,75 MB - yEnc',
  65
), (
  628,
  '^alt\\.binaries\\.mom$',
  '/^\\[\\d+\\/\\d+\\][ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[002/161] - "Rayman_Legends_USA_PS3-CLANDESTiNE.nfo" yEnc',
  70
), (
  629,
  '^alt\\.binaries\\.mom$',
  '/^(?P<match0>[a-z0-9].+?\\.XXX.*?\\.[a-z0-9]{3,4}-[a-z0-9]+) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/i',
  1,
  '//NetVideoGirls.13.08.05.Julia.XXX.MP4-KTR - [1/1] - "NetVideoGirls.13.08.05.Julia.XXX.MP4-KTR.rar" yEnc ::: //FemaleAgent.E136.Rollie.XXX.1080p.MOV-KTR - [1/1] - "FemaleAgent.E136.Rollie.XXX.1080p.MOV-KTR.rar" yEnc ::: //Penthouse.13.07.13.Natalia.Starr.Pet.Of.Month.July.2013.XXX.3D.WMV-TBP - [1/1] - "Penthouse.13.07.13.Natalia.Starr.Pet.Of.Month.July.2013.XXX.3D.WMV-TBP.rar" yEnc',
  75
), (
  630,
  '^alt\\.binaries\\.mom$',
  '/brothers-of-usenet\\.info&net-empfehlen-ssl-news.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//happy birthday brothers - brothers-of-usenet.info&net-empfehlen-ssl-news - 2brokegirls-s03e12-Die.franzoesische.Versuchung.48 - [01/12] - "2brokegirls-s03e12-Die.franzoesische.Versuchung.480p.par2" yEnc',
  80
), (
  631,
  '^alt\\.binaries\\.mom$',
  '/^Eragon postet.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Eragon postet   Pfeil   S01E18   german                      [01/19] - "Pfeil S01E18.par2" yEnc',
  85
), (
  632,
  '^alt\\.binaries\\.mom$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"[Fansub-Resistance] Naruto Shippuuden 345 xvid (848x480).vol25+15.PAR2" yEnc',
  90
), (
  633,
  '^alt\\.binaries\\.mom$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//"Die.Sopranos.S05E02.German.AVC-TVS.vol063+60.par2" (repack180414) yEnc',
  95
), (
  634,
  '^alt\\.binaries\\.mom$',
  '/^(?P<match0>[\\w.-]{8,})[-_\\s]{0,3}\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//LOL.3E05.720p.WEB.DL.nHD.x264-NhaNc3 [64/71] - "LOL.3E05.720p.WEB.DL.nHD.x264-NhaNc3.sfv" yEnc',
  100
), (
  635,
  '^alt\\.binaries\\.mom$',
  '/^Uploader\\.Presents-(?P<match0>.+)[\\[\\(]\\d+\\/\\d+[\\]\\)]".+" yEnc$/',
  1,
  '//Uploader.Presents-LaLa.2014.Englisch.R6.HDCAM.x264.AC3-SmY(06/56]"SmY-I,F.2014.part05.rar" yEnc',
  105
), (
  636,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}Description (?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(21/27) - Description Lava.Land.2013.3D.1080p.Bluray.HOU.X264.DL-zman - "Lava.Land.2013.3D.1080.HOU.DL-zman.part20.rar" - 8,85 GB - yEnc',
  110
), (
  637,
  '^alt\\.binaries\\.mom$',
  '/^- (Description - )?"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- "z7QxDdQ5Qs63v8B8.01" - 374,56 MB - yEnc ::: //- Description - "le gars et son arc 2x21.vol06+05.PAR2" - 273,04 MB - yEnc',
  115
), (
  638,
  '^alt\\.binaries\\.mom$',
  '/^.+Usejunkies\\.tk.+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//::: Usejunkies.tk ::: - [11/15] - "Saitenfeuer - Kein Zurueck 2013.vol00+1.par2" - 116,42 MB yEnc',
  120
), (
  639,
  '^alt\\.binaries\\.mom$',
  '/^.+Usejunkies\\.tk.+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//:.Usejunkies.tk.:---- - [4/8] - "MKTO - MKTO.vol00+5.par2" yEnc',
  125
), (
  640,
  '^alt\\.binaries\\.mom$',
  '/^"(?P<match0>.{8,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"8ÃÂdTbOMaÃÂ¥RuieuD4gÃÂ¥jÃÂwOÃÂ¥bmS72ADÃÂM1b2ÃÂ¦efz9q4yW4O7exV.vol037+6.par2" yEnc',
  130
), (
  641,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\) \\[ArtofUsenet\\].+www\\.art-of-use\\.net.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(08/12) [ArtofUsenet] >>> www.art-of-use.net <<< "Alles Atze - S01E05 - Die Anatolische Fliege.vol01+02.par2" - 245,19 MB - yEnc',
  135
), (
  642,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\) - \\[Lords-of-Usenet\\].+ presents (?P<match0>.+?)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/10) - [Lords-of-Usenet] <<Sponsored by SSL-News.info>> presents AoA.Audio.Extractor.Platinum.v2.0.Portable.WiNALL.APPZ-NOTRADE -"notrade-aoaextractorplati_portable.par2" - 8,14 MB - yEnc',
  140
), (
  643,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\) - \\[Lords-of-Usenet\\].+ presents (?P<match0>.+?)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(02/66) - [Lords-of-Usenet] <<Partner of SSL-News.info>> presents The_Swapper-FANiSO - "fan-swap.rar" - yEnc',
  145
), (
  644,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s].+yEnc$/ui',
  1,
  '//(1/3) - "Readers Digest Magazin Deutschland Oktober 10-2014.rar" - 10,92 MB - >>brothers-of-usenet.info/net<< empfehlen SSL-News.info yEnc',
  150
), (
  645,
  '^alt\\.binaries\\.mom$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/3) "Die drei Fragezeichen - Folge 162 - Der schreiende Nebel.rar" - 121,56 MB - yEnc',
  155
), (
  646,
  '^alt\\.binaries\\.mom$',
  '/^brothers-of-usenet.+SSL-News\\.info.+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜ¤ß¶!.,&_\\()\\[\\]\\\'\\-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//brothers-of-usenet.ino/.net<<<Partner von SSL-News.info>>> - [05/33] - "oiu78_67O77OuiI_ztRe014.part04.rar" yEnc',
  160
), (
  647,
  '^alt\\.binaries\\.mom$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Fabulous MP3.v1.10.rar" yEnc',
  165
), (
  648,
  '^alt\\.binaries\\.moovee$',
  '/\\[ENJOY\\]-\\[FULL\\]-\\[.+\\]-\\[ (?P<match0>.+) \\]-\\[\\d+\\/\\d+\\]-".+" yEnc$/',
  1,
  '//\[ENJOY\]-\[FULL\]-\[.+\]-\[ (.+) \]-\[\d+\/\d+\]-".+" yEnc$/',
  5
), (
  649,
  '^alt\\.binaries\\.moovee$',
  '/^(?P<match0>.+DVD.*) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '///PROUT Movie (2010) NTSC DVD [157/15768] - "PROUTmovie_NTSC.part155.rar" yEnc',
  10
), (
  650,
  '^alt\\.binaries\\.moovee$',
  '/^(\\[\\d+\\]-)?\\[ ?(?P<match0>[a-zA-Z0-9.-]{6,}) ?\\](-\\[REAL\\])? ?- ?\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[ Hammer.of.the.Gods.2013.720p.WEB-DL.DD5.1.H.264-ELiTE ]-[01/44] - "Hammer.of.the.Gods.2013.720p.WEB-DL.DD5.1.H.264-ELiTE.par2" yEnc ::: //[134863]-[ Rihanna.No.Regrets.2013.720p.WEB-DL.DD5.1.H.264-PZK ]-[52/52] - "Rihanna.No.Regrets.2013.720p.WEB-DL.DD5.1.H.264-PZK.vol127+76.par2" yEnc ::: //[Hard.Target.1993.UNRATED.720p.BluRay.x264-88keyz] - [001/101] - "Hard.Target.1993.UNRATED.720p.BluRay.x264-88keyz.nfo" ::: //[ Fast.And.Furious.6.2013.720p.WEB-DL.AAC2.0.H.264-HDCLUB ]-[REAL]-[01/54] - "Fast.And.Furious.6.2013.720p.WEB-DL.AAC2.0.H.264-HDCLUB.nfo" yEnc',
  15
), (
  651,
  '^alt\\.binaries\\.moovee$',
  '/^"(?P<match0>.+(DVD|BluRay|BRRip).+)"\\(\\d+\\/\\d+\\) ".+".+[GMK]B yEnc$/i',
  1,
  '//"Nights.of.Cabiria.1957.NTSC.DVD.x264-Tree"(23/57) "Nights.of.Cabiria.1957.NTSC.DVD.x264-Tree.part22.rar" - 2.40 GB yEnc',
  20
), (
  652,
  '^alt\\.binaries\\.moovee$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [0/1] - "A.Good.Day.to.Die.Hard.2013.nzb" yEnc',
  25
), (
  653,
  '^alt\\.binaries\\.moovee$',
  '/^\\[x+\\]-\\[.+?\\]-\\[ x+ \\]-\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[xxxxx]-[#a.b.moovee@EFNet]-[ xxxxx ]-[02/66] - "tulob88.part01.rar" yEnc',
  30
), (
  654,
  '^alt\\.binaries\\.moovee$',
  '/^(?P<match0>[a-zA-Z0-9._-]+) - ?\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Groove.2000.iNTERNAL.DVDRip.XviD-UBiK - [001/111] - "ubik-groove-cd1.par2" yEnc ::: //Antony.and.Cleopatra.1972.720p.WEB-DL.H264-brento -[35/57] - "Antony.and.Cleopatra.1972.720p.WEB-DL.AAC2.0.H.264-brento.part34.rar" yEnc',
  35
), (
  655,
  '^alt\\.binaries\\.moovee$',
  '/^\\((?P<match0>[a-zA-Z0-9.-]+)\\) \\(\\d+\\/\\d+\\) - ".+?" yEnc$/',
  1,
  '//(Iron.Man.3.2013.R5.DVDRip.XviD-AsA) (01/26) - "Iron.Man.3.2013.R5.DVDRip.XviD-AsA.part01.part.sfv" yEnc',
  40
), (
  656,
  '^alt\\.binaries\\.moovee$',
  '/^\\([a-zA-Z0-9].+?\\) (?P<match0>[a-zA-Z0-9.-]+) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//(Classic Surf) Morning.Of.The.Earth.1971 [03/29] - "Morning.Of.The.Earth.1971.part02.rar" yEnc',
  45
), (
  657,
  '^alt\\.binaries\\.moovee$',
  '/^\\[\\d+\\/\\d+\\] (?P<match0>.+) - ".+" yEnc$/',
  1,
  '//[51/62] Morrissey.25.Live.Concert.2013.BDRip.x264-N0TSC3N3 - "n0tsc3n3-morrissey.25.live.2013.bdrip.x264.rar" yEnc',
  50
), (
  658,
  '^alt\\.binaries\\.moovee$',
  '/^\\[\\w+-\\w+\\]-\\[\\w+\\]-\\[\\d+\\] (?P<match0>.+) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[AD120512-00006]-[UnOFFSc3n4iT]-[0131105] Chloe.Tra.Seduzione.E.Inganno.2009.iTALiAN.DVDRip.XviD-TRL [19/41] - "trl-chltsdzn.part18.rar" yEnc',
  55
), (
  659,
  '^alt\\.binaries\\.moovee$',
  '/^(?P<match0>.+x264.+) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//Breathe.In.2013.BRRip.x264-4UN [01/39] - "Breathe.In.2013.BRRip.x264-4UN.nfo" yEnc',
  60
), (
  660,
  '^alt\\.binaries\\.moovee$',
  '/^(?P<match0>.+) \\[REPACK\\] \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//The.CyB3rMaFiA.PimPs.YouR.RiDE.WiTH [REPACK] [40/42] - "d2p5uypp7yn3drpk1080417.vol255+064.par2" yEnc',
  65
), (
  661,
  '^alt\\.binaries\\.moovee$',
  '/\\[ (?P<match0>.+WEB-DL.+) \\]-\\[\\d+\\/\\d+\\] - "(.+)\\.(mp4|mkv|ts|rar|par.+)" yEnc$/',
  1,
  '//[ Oklahoma\!.1955.720p.WEB-DL.AAC2.0.H.264-CtrlHD ]-[32/55] - "Oklahoma.1955.720p.WEB-DL.AAC2.0.H.264-CtrlHD.part31.rar" yEnc',
  70
), (
  662,
  '^alt\\.binaries\\.moovee$',
  '/^REQ:.+".+".+\\(\\d+\\/\\d+\\) ".+" - \\d+[,.]\\d+ [MGK]B - (?P<match0>.+) yEnc$/',
  1,
  '//REQ: working copy of "That Darn Cat 1997 Xvid-Any grp" Plz Ty  (47/60) "geckos-ghr2011-xvid.r44" - 744,19 MB - Gun.Hill.Road.2011.LIMITED.DVDRip.XviD-GECKOS yEnc',
  75
), (
  663,
  '^alt\\.binaries\\.moovee$',
  '/^\\(T\\.U\\.F The real thing (?P<match0>.+?) T\\.U\\.F\\)/',
  1,
  '//(T.U.F The real thing I Frankenstein 2014 NL Subs T.U.F) [01/52] - "I Frankenstein 2014 NL Subs.par2" yEnc',
  80
), (
  664,
  '^alt\\.binaries\\.moovee$',
  '/^\\((?P<match0>[\\w.-]+)\\)\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Ringside.The.Best.of.Mike.Tyson.DVDRip.x264.AC3-FCZ)[01/68] - "Ringside.The.Best.of.Mike.Tyson.DVDRip.1.of.2.x264.AC3-FCZ.nfo" yEnc',
  85
), (
  665,
  '^alt\\.binaries\\.movies$',
  '/^(?P<match0>[a-z].+) - \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//Underworld.Evolution.2006.480p.BDRip.XviD.AC3-AsA - [000/143] - "asa.nzb" yEnc',
  5
), (
  666,
  '^alt\\.binaries\\.movies$',
  '/^Have Fun - ("|#34;)(?P<match0>.+)\\.nfo("|#34;) Ph4let0ast3r yEnc$/i',
  1,
  '///^Have Fun - ("|#34;)(.+)\.nfo("|#34;) Ph4let0ast3r yEnc$/i',
  10
), (
  667,
  '^alt\\.binaries\\.movies$',
  '/^\\(\\d+\\/\\d+\\) ("|#34;)(?P<match0>.+)\\.(par2|nfo|rar|nzb)("|#34;) - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/i',
  1,
  '//(01/34) "Sniper.Reloaded.2011.BluRay.810p.DTS.x264-PRoDJi.Turkish.Audio.par2" - 139,30 MB - yEnc',
  15
), (
  668,
  '^alt\\.binaries\\.movies$',
  '/^("|#34;)(?P<match0>.+)\\.rar("|#34;)$/i',
  1,
  '//"Discovery.Channel.Tsunami.Facing.The.Wave.720p.HDTV.x264-PiX.rar"',
  20
), (
  669,
  '^alt\\.binaries\\.movies$',
  '/^(?P<match0>[a-z].+) .+\\.(par2|nfo|rar|nzb)$/i',
  1,
  '//Saw.VII.2010.720p.Bluray.x264.DTS-HDChina Saw.VII.2010.720p.Bluray.x264.DTS-HDChina.nzb',
  25
), (
  670,
  '^alt\\.binaries\\.movies$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [1/1] - "The Secret L',
  30
), (
  671,
  '^alt\\.binaries\\.movies$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}Description[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(001/114) - Description - "The.Chronicles.of.Riddick.2004.DC.BluRay.1080p.DTS.par2" - 10,50 GB - yEnc',
  35
), (
  672,
  '^alt\\.binaries\\.movies$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[00/56] - "The.Last.Days.On.Mars.720p.BluRay.x264-DR.nzb" yEnc',
  40
), (
  673,
  '^alt\\.binaries\\.movies$',
  '/^\\[REUP\\]( )?(?P<match0>.+?) - \\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[REUP] 6.Degress.of.Hell.2012.1080p.BluRay.DTS-HD.x264-BARC0DE - [03/50] - "BARC0DE.vol00+1.PAR2" yEnc ::: //[REUP]Home.Of.The.Brave.2006.1080p.BluRay.DTS-HD.x264-BARC0DE - [03/38] - "BARC0DE.vol00+1.PAR2" yEnc',
  45
), (
  674,
  '^alt\\.binaries\\.movies$',
  '/^- Description - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")([-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB])[- ]{0,4}yEnc$/',
  1,
  '//- Description - "The.Legend.of.Hercules.2014.720p.BluRay.x264.Y',
  50
), (
  675,
  '^alt\\.binaries\\.movies$',
  '/^(?P<match0>[\\w.\\()-]{8,}?)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Star.Trek.Into.Darkness.2013.3D.HOU.BDRip.1080p-FAGGOTS [431/432] - "stid3d.vol124+128.par2" yEnc',
  55
), (
  676,
  '^alt\\.binaries\\.movies$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}(?P<match0>[\\w.\\() -]{8,}?\\b)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(130/138) - Captain America The Winter Soldier 2014 NEW (FIXED) 720p CAM x264 Pimp4003 - "wXZ6LxFt.zip.130" - 2.02 GB - yEnc',
  60
), (
  677,
  '^alt\\.binaries\\.movies$',
  '/^.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//22.Jump.Street.2014.720p.BluRay.x264-tpU.vol000+01.PAR2 [73/84] - "22.Jump.Street.2014.720p.BluRay.x264-tpU.vol000+01.PAR2" yEnc',
  65
), (
  678,
  '^alt\\.binaries\\.movies\\.divx$',
  '/^\\(www\\.Thunder-News\\.org\\) .+? - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(www.Thunder-News.org) >CD2< <Sponsored by Secretusenet> - "exvid-emma-cd2.par2" yEnc',
  5
), (
  679,
  '^alt\\.binaries\\.movies\\.divx$',
  '/^[a-zA-Z ]+Post Voor FTN - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Movieland Post Voor FTN - [01/43] - "movieland0560.par2" yEnc',
  10
), (
  680,
  '^alt\\.binaries\\.movies\\.divx$',
  '/.+?by mayhem masta"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Disney short films collection by mayhem masta"1923 - Alice\'s Wonderland.vol15+7.par2" yEnc',
  15
), (
  681,
  '^alt\\.binaries\\.movies\\.divx$',
  '/^\\(.+usenet\\.info\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(http://dream-of-usenet.info) - [01/43] - "Nicht.auflegen.2002.German.DL.AC3.BDRip.XviD-iNCEPTiON.nfo" yEnc',
  20
), (
  682,
  '^alt\\.binaries\\.movies\\.divx$',
  '/\\[#]+\\]-\\[.+\\]-\\[.+\\]-\\[(?P<match0>.+)\\][- ]\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+" yEnc$/',
  1,
  '//[######]-[FULL]-[#hdtv@LinkNet]-[Sesame.Street.S41E03.1080i.HDTV.DD5.1.MPEG2-TrollHD]-[00/51] - "Sesame Street S41E03 Chicken When It Comes to Thunderstorms 1080i HDTV DD5.1 MPEG2-TrollHD.nzb" yEnc',
  25
), (
  683,
  '^alt\\.binaries\\.movies\\.divx$',
  '/^\\[ (?P<match0>[a-zA-Z0-9.-]{6,}) \\]-\\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[ Rules.of.Engagement.S06E12.720p.WEB-DL.DD5.1.H.264-CtrlHD ]-[01/24] - "Rules.of.Engagement.S06E12.720p.WEB-DL.DD5.1.H.264-CtrlHD.nfo" yEnc',
  30
), (
  684,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^http:\\/\\/nzbroyalty\\.com - (?P<match0>.+?) - \\[\\d+\\/(\\d+\\]) - ".+?" yEnc$/',
  1,
  '//http://nzbroyalty.com - House.of.The.Rising.sun.2011.BluRay.720p.DTS.x264-CHD - [00/48] - "House.of.The.Rising.sun.2011.BluRay.720p.DTS.x264-CHD.nzb" yEnc',
  5
), (
  685,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^([a-zA-Z0-9._-]+ - ?\\[)\\d+\\/(\\d+\\]) - "(?P<match0>.+?)\\.(nzb|rar|par2)" yEnc$/',
  1,
  '//Scream.4.2011.WS.720p.BluRay.X264-AMIABLE - [000/106] - "Scream.4.2011.WS.720p.BluRay.X264-AMIABLE.nzb" yEnc',
  10
), (
  686,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^(?P<match0>[a-zA-Z0-9].+?)( - )\\[\\d+(\\/\\d+\\] - ").+?" yEnc$/',
  1,
  '//The Beaver 2011 720p BluRay DD5.1 x264-CtrlHD - [00/65] - "The Beaver 2011 720p BluRay DD5.1 x264-CtrlHD.nzb" yEnc',
  15
), (
  687,
  '^alt\\.binaries\\.movies\\.x264$',
  '/("|#34;)(?P<match0>.+)("|#34;)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}("|#34;).+?(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}yEnc$/',
  1,
  '//"The.Hudsucker.Proxy.1994.1080p.Blu-ray.Remux.AVC.DTS.HD.MA.2.0-KRaLiMaRKo"(127/132) "The.Hudsucker.Proxy.1994.1080p.Blu-ray.Remux.AVC.DTS.HD.MA.2.0-KRaLiMaRKo.vol379+20.par2" - 24.61 GB - yEnc',
  20
), (
  688,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^\\([\\w.-]+\\)[\\(\\[]\\d+\\/\\d+[\\]\\)] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Amour.2012.1080p.BluRay.x264-EbP)(002/337) "Amour.2012.1080p.BluRay.x264-EbP.part001.rar" - 16.58 GB - yEnc',
  25
), (
  689,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^\\([\\w .\\()-]+\\) [\\(\\[]\\d+\\/\\d+[\\]\\)] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(La.pianiste.(aka.The.Piano.Teacher).(2001).720p.BluRay.AC3.x264-MandR) [085/101] - "La.pianiste.(aka.The.Piano.Teacher).(2001).720p.BluRay.AC3.x264-MandR.part084.rar" yEnc',
  30
), (
  690,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[00/56] - "The.Last.Days.On.Mars.720p.BluRay.x264-DR.nzb" yEnc',
  35
), (
  691,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^< [\\w.\\() -]+ > - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\(\\d+\\/\\d+\\) yEnc$/',
  1,
  '//< Michael.Jackson.Bad.25.2012.720p.BluRay.x264-PHD > - "Michael.Jackson.Bad.25.2012.720p.BluRay.x264-PHD.par2" (01/64) yEnc',
  40
), (
  692,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^:(?P<match0>[\\w.-]+)[-_\\s]{0,3}[\\w.-]+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//:Waga.Haha.no.Ki.2012.BluRay.720p.DTS.x264 - Chronicle.Of.My.Mother.2012 - [55/56] - "waha.720p.vol063+64.par2" yEnc',
  45
), (
  693,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\d+ of \\d+[-_\\s]{0,3}yEnc$/',
  1,
  '//"Cat Ballou (1965) Multi-Dub AVC 480p.MKV.001" 01 of 11  yEnc',
  50
), (
  694,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^(?P<match0>[\\w.-]+)[-_\\s]{0,3}\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Fly.With.The.Gold.2012.720p.BluRay.x264-WiKi [03/73] - "wiki-fwtg.par2" yEnc',
  55
), (
  695,
  '^alt\\.binaries\\.movies\\.x264$',
  '/^(?P<match0>[\\w.-]+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Parker.2013.MULTi.720p.BluRay.x264-GAIA - "Parker.2013.MULTi.720p.BluRay.x264-GAIA.nfo" yEnc',
  60
), (
  696,
  '^alt\\.binaries\\.mp3$',
  '/"(?P<match0>[\\w. -]{8,})"[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}".+([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"The Absence - Riders Of The Plague" [00/14] - "the_absence-riders_of_the_plague.nzb" yEnc',
  5
), (
  697,
  '^alt\\.binaries\\.mp3$',
  '/\\( (?P<match0>[\\w. -]{8,}) \\)[-_\\s]{0,3}( |\\().+\\)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//( Albert Cummings Albums 6x By Dready Niek (1999-2012) )  ( ** By Dready Niek ** ) [11/20] - "Albert Cummings Albums 6x By Dready Niek (1999-2012).part10.rar" yEnc ::: //( Fat Freddy\'s Drop - Blackbird (2013) -- By Dready Niek ) -- By Dready Niek ) [01/15] - "Fat Freddy\'s Drop - Blackbird (2013) -- By Dready Niek.par2" yEnc',
  10
), (
  698,
  '^alt\\.binaries\\.mp3$',
  '/^.+Old but Sold.+>< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\).+ yEnc$/',
  1,
  '//<<<Old but Sold>>>  <<< >< >< "German Top 50 ODC - 12.08.2013.nfo" >< 02/33 (541,61 MB) >< 10,93 kB > yEnc',
  15
), (
  699,
  '^alt\\.binaries\\.mp3$',
  '/^Musikjunkie-(?P<match0>[\\w. -]{8,})[-_\\s]{0,3}\\[\\d+\\/\\d+\\]".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Musikjunkie-The.Voice.Of.Germany.2013.The.Best.of.Liveshows.4.CD.Box.Set.VBR [15/28]"voice.part13.rar" yEnc',
  20
), (
  700,
  '^alt\\.binaries\\.mp3$',
  '/^(?P<match0>[\\w. -]{8,})[-_\\s]{0,3}("|#34;)(.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Metallica - Ride The Lightning    "01 - Fight Fire With Fire.mp3" yEnc',
  25
), (
  701,
  '^alt\\.binaries\\.mp3$',
  '/^.+Usejunkies\\.tk.+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//::: Usejunkies.tk ::: - [08/11] - "DJ Shog - DNA - HD 720p.vol00+1.par2" - 47,76 MB yEnc',
  30
), (
  702,
  '^alt\\.binaries\\.mp3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}poc[-_\\s]{0,3}yEnc$/',
  1,
  '//"AnyDVD 7.0.0.0.rar" poc  yEnc',
  35
), (
  703,
  '^alt\\.binaries\\.mp3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"A Produce & Loren Nerell - Intangible.nzb" yEnc',
  40
), (
  704,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/12) "Sunfly Hits April (2013) SF326 [Skytwohigh].par2" - 109.59 MB - yEnc',
  45
), (
  705,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}Description[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/15) - Description - "Goldene Schlager - Erinnerungen Folge 3.par2" - 126,08 MB - yEnc',
  50
), (
  706,
  '^alt\\.binaries\\.mp3$',
  '/^\\((?P<match0>[^.]{8,})\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Musica - House&Dance - mix 1 - april 2014 1) [00/45] - "Musica - House&Dance mix 1 april.nzb" yEnc',
  55
), (
  707,
  '^alt\\.binaries\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[04/17] - "Schlager.am.laufenden.Band.-.Vol.13.part02.rar" - 622,46 MB yEnc',
  60
), (
  708,
  '^alt\\.binaries\\.mp3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) [\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b.?( by )?PsyDealer  yEnc$/',
  1,
  '//"Karate Andi - Pilsator Platin   2014.nfo.nfo Karate Andi - Pilsator Platin   2014 by PsyDealer  yEnc',
  65
), (
  709,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"[\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b.?\\.[A-Za-z0-9]{2,4} (?P<match0>Top \\d+ Single Charts \\d+\\.\\d+\\.\\d+)"[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [089/100] - "090-florence_and_the_machine_-_spectrum_(say_my_name)_(calvin_harris_edit).mp3 Top 100 Single Charts 13.05.2013"  yEnc',
  70
), (
  710,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [02/26] - "8Cursed.rar" yEnc',
  75
), (
  711,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")\\w+[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [00/34] - "The Official UK Top 40 Singles Chart 15-06-2014.nzb"otfINWnjfg7856fghj  yEnc',
  80
), (
  712,
  '^alt\\.binaries\\.mp3$',
  '/^\\(\\d+\\/\\d+\\) (?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}"[\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b.?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/24) VA - Now Thats What I Call Disco 2013 - "VA - Now Thats What I Call Disco 2013.7z.001" - 487.23 MB - yEnc',
  85
), (
  713,
  '^alt\\.binaries\\.mp3$',
  '/^\\(102400\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(102400) [06/13] - "Time L',
  90
), (
  714,
  '^alt\\.binaries\\.mp3$',
  '/^\\([\\w.,& \\()\\[\\]\\\'\\-]{8,} \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(18 Gouden Piraten Hits Deel 2 [03/11] - "18 Gouden Piraten Hits Deel 2.part2.rar" yEnc',
  95
), (
  715,
  '^alt\\.binaries\\.mp3$',
  '/^\\([\\w.,& \\()\\[\\]\\\'\\-]{8,}\\)\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Amigos - Ihre Lieblingshits - Folge 2 - 2013 - by Taekwondo145)[00/62] - "Amigos - Ihre Lieblingshits - Folge 2 - 2013.nzb" yEnc',
  100
), (
  716,
  '^alt\\.binaries\\.mp3$',
  '/^\\([\\w.,& \\()\\[\\]\\\'\\-]{8,} - by Taekwondo(\\d+\\()?\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(German TOP100 Single Jahrescharts-2013 - by Taekwondo456([67/70] - "German TOP100 Single Jahrescharts-2013.vol041+41.PAR2" yEnc',
  105
), (
  717,
  '^alt\\.binaries\\.mp3$',
  '/^\\( ?(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}) ?\\)[-_\\s]{0,3}\\(.+Dready Niek.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"[\\w.,& \\()\\[\\]\\\'\\-]{8,}?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Liedjes uit de film De Grote Patriottische Oorlog..o.a. Rod McK )  ( ** By Dready Niek ** ) [02/11] - "Liedjes uit de film De Grote Patriottische Oorlog..o.a. Rod McKuen - By Dready Niek.part1.rar" yEnc',
  110
), (
  718,
  '^alt\\.binaries\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB] <-> Partner of secretusenet\\.com <->[-_\\s]{0,3}yEnc$/',
  1,
  '//[21/23] - "JNEQ3_20130413_028.vol0+1.par2" - 282,65 MB <-> Partner of secretusenet.com <-> yEnc',
  115
), (
  719,
  '^alt\\.binaries\\.mp3$',
  '/^[\\w.,& \\()\\[\\]\\\'\\-]{8,}?[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Yogi_and_Husky--Nu_Sound_EP-(RSR021)-WEB-2012-dh - "Yogi_and_Husky--Nu_Sound_EP-(RSR021)-WEB-2012-dh.r00" yEnc',
  120
), (
  720,
  '^alt\\.binaries\\.mp3$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Zido.Alben.All.in.One.Read.NFO-Ren & Stimpy - [35/43] - "Zydo.part33.rar" yEnc',
  125
), (
  721,
  '^alt\\.binaries\\.mp3$',
  '/(h311b0y|Hellboy).+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//! ! !! - h311b0y101022014 - !! ! ! [01/14] - "h311b0y101022014.par2" yEnc',
  130
), (
  722,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}\\[Lords-of-usenet\\][ _-]{0,3}<<Partner of SSL-News.info>>[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(05/10) - [Lords-of-usenet] <<Partner of SSL-News.info>>  "Wynardtage Praise The Fallen(2007).vol00+01.PAR2" - 132,64 MB - yEnc',
  5
), (
  723,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}<www\\.lords-of-usenet\\.org><by Nerts>[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(06/11) - <www.lords-of-usenet.org><by Nerts> - "Diens - Schwarzmale.vol00+01.PAR2" - 141,07 MB - yEnc',
  10
), (
  724,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^<www\\.lords-of-usenet\\.org><by Nerts>[ _-]{0,3}\\(\\d+\\/\\d+\\)[ _-]{0,3}[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//<www.Lords-Of-Usenet.org><by Nerts> (09/18) - "Mantus - Fatum (2013) [2CD].FH.vol00+2.PAR2" - 336,39 MB - yEnc',
  15
), (
  725,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(08/15) "Noemi-Red.(Unreleased).2006.by.NYCrules.vol000+01.PAR2" - 179,66 MB - yEnc',
  20
), (
  726,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\[(?P<match0>[a-zA-Z0-9-_\\\\(\\)\\.]+)\\] \\[www\\.usenet4ever\\.info by Secretusenet\\] -  "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[16_Bit_Lolitas-Warung_Brazil_002-2CD-2012-iHF] [www.usenet4ever.info by Secretusenet] -  "000-16_bit_lolitas-warung_brazil_002-2cd-2012-ihf.sfv" yEnc ::: //[3RD_Prototype_-_On_My_Way-(TB7368)-WEB-2013-FMC] [www.usenet4ever.info by Secretusenet] -  "01-3rd_prototype_-_deafback-when_you_are_in_the_dark_(deafback_remix).mp3" yEnc ::: //[Armin_Van_Buuren_Feat._Fiora-Waiting_For_The_Night-(ARMD1140)-WEB-2013-UKHx] [www.usenet4ever.info by Secretusenet] -  "00-armin_van_buuren_feat._fiora-waiting_for_the_night-(armd1140)-web-2013-ukhx.m3u" yEnc',
  25
), (
  727,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^>ghost-of-usenet\\.org<< (?P<match0>[a-zA-Z0-9-_\\\\(\\)\\.]+) >>www\\.SSL-News\\.info> -  "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//>ghost-of-usenet.org<< 16_Bit_Lolitas-Warung_Brazil_002-2CD-2012-iHF >>www.SSL-News.info> -  "101-16_bit_lolitas-warung_brazil_002_cd1.mp3" yEnc',
  30
), (
  728,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\\\(\\)\\.]+) \\[\\d+(\\/| of )(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Blok_B-Bienvenue_Dans_Mon_Blok_Vol.1-2005-BZ_INT [20 of 27] "01-gangsta.mp3" yEnc ::: //DJ Neev - HedKandi_2013-06-08 (Ministry of Sound Radio) [01/13] - "DJ Neev - HedKandi_2013-06-08 (Ministry of Sound Radio).par2" yEnc',
  35
), (
  729,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\(www\\.Thunder-News\\.org\\) >(?P<match0>.+?)< <Sponsored by Secretusenet> - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(www.Thunder-News.org) >Dee_And_Crane-Let_The_Music_Play-WEB-2012-UKHx< <Sponsored by Secretusenet> - "05-dee_and_crane-let_the_music_play_(jay_frogs_keep_the_groove_remix_edit).mp3" yEnc',
  40
), (
  730,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^\\[\\d+\\/\\d+\\] - \\((MP3 )?ALBUM CHARTS\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/i',
  1,
  '//[1/1] - (MP3 ALBUM CHARTS) - "Andreas Gabalier - Volksrock\'n\'roller-Live.rar" yEnc',
  45
), (
  731,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - yEnc$/i',
  1,
  '//"Miley Cyrus - Bangerz (Deluxe Version).nzb" - yEnc',
  50
), (
  732,
  '^alt\\.binaries\\.mp3\\.complete_cd$',
  '/^.+\\[\\d+\\/\\d+\\](?P<match0>.+)"([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//VA 200 NRJ 2014 CD2 mp3_320kbps[18/27]VA 200 NRJ 2014 CD2 mp3_320kbps"(217) [Capital Cities] Safe And Sound.mp3"  yEnc',
  55
), (
  733,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\. - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//. - [05/10] - "Blues \'N Trouble - With Friends Like These [1989].vol00+01.par2" yEnc',
  5
), (
  734,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\(\\d+\\/(\\d+\\)) "\\[www\\.Lords-of-Usenet\\.org\\]_\\[Partner von SSL-News\\]_(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/',
  1,
  '//(001/122) "[www.Lords-of-Usenet.org]_[Partner von SSL-News]_Blind_Guardian-Discographie.par2" - 2,20 GB - yEnc',
  10
), (
  735,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\(\\d+\\/(\\d+\\)) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,4}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}.+?yEnc$/',
  1,
  '//(06/10) "Pink Floyd - Dark Side Of The Moon [MFSL UDCD 517].vol00+01.PAR2"- - 67,88 MB - Pink Floyd - Dark Side Of The Moon [MFSL UDCD 517] yEnc ::: //(07/11) "VA - Twilight - New Moon - Ost.vol00+01.PAR2"- - 93,69 MB - VA - Twilight - New Moon - Ost yEnc',
  15
), (
  736,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\(.+\\) \\[\\d+\\/(\\d+\\]) - "(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) . http:\\/\\/usenet4ever\\.info_Sponsored by www\\.Secretusenet\\.com  " yEnc$/',
  1,
  '//(Kitty Samtpfote) [01/12] - "Electronic Music of the 80s.Michael Garrison - In The Regions Of Sunreturn and beyond 1991.par2 . http://usenet4ever.info_Sponsored by www.Secretusenet.com  " yEnc',
  20
), (
  737,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\(.+\\) >(?P<match0>.+?)< <Sponsored by AstiNews> - \\(\\d+\\/(\\d+\\)) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(www.Thunder-News.org) >Boehse Onkelz - Discography< <Sponsored by AstiNews> - (113/145) - "Boehse Onkelz - Discography.s10" yEnc',
  25
), (
  738,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\[\\d+\\]-\\["(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")\\[ yEnc$/',
  1,
  '//[00021]-["1999 Alphaville - Dreamscapes.part069.rar"[ yEnc',
  30
), (
  739,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\(.+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(nzbDMZ) [0/2] - "Miles Crossing - Miles Crossing (2011).nzb" yEnc',
  35
), (
  740,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[06/10] - "Jeff Healey - Legacy Volume One [The Singles].vol00+01.PAR2" yEnc',
  40
), (
  741,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^\\d+ "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//00008 "2003 Camouflage - Sensor.par2" yEnc',
  45
), (
  742,
  '^alt\\.binaries\\.mp3\\.full_albums$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\\\(\\)\\.]+) \\[\\d+(\\/| of )(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Alex Oriental Experience_-_Live II (Live II) [1/9] - "01_Red_Dress.mp3" yEnc',
  50
), (
  743,
  '^alt\\.binaries\\.multimedia$',
  '/^(?P<match0>[A-Z0-9a-z.-]{10,})\\s+(- )?\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Escort.2006.DUTCH.WEB-RiP.x264-DLH - [01/23] - "Escort.2006.DUTCH.WEB-RiP.x264-DLH.par2" yEnc ::: //Tusenbroder.S01E05.PDTV.XViD.SWEDiSH-NTV  [01/69] - "ntv-tusenbroder.s01e05.nfo" yEnc',
  5
), (
  744,
  '^alt\\.binaries\\.multimedia$',
  '/\\[[#]+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?) \\][- ]\\[\\d+\\/\\d+\\][-_\\s]{0,3}("|#34;).+?/',
  1,
  '//[####]-[FULL]-[#a.b.teevee@EFNet]-[ Tosh.0.S02E14.720p.HDTV.x264-aAF ]-[10/21] - "aaf-tosh.0.s02e14.720p.r07" yEnc',
  10
), (
  745,
  '^alt\\.binaries\\.multimedia$',
  '/^\\[ ?(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?) ?\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ Top.Chef.S11E12.Mississippi.Mud.Bugs.720p.WEB-DL.AAC2.0.H.264-TVSmash ] - [13/38] - "tc1112-720p.r10" yEnc',
  15
), (
  746,
  '^alt\\.binaries\\.multimedia$',
  '/^Handyman Shows-(?P<match0>.+) - File \\d+ of \\d+ - yEnc$/',
  1,
  '//Handyman Shows-TOH-S32E10 - File 01 of 32 - yEnc',
  20
), (
  747,
  '^alt\\.binaries\\.multimedia$',
  '/.*"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//- "Auction Hunters S04E04.HDTV.x264-StarryNights1.nzb" yEnc',
  25
), (
  748,
  '^alt\\.binaries\\.multimedia$',
  '/^(?P<match0>[^.]{8,})\\.[A-Za-z0-9]{2,4} - \\[\\d+\\/(\\d+\\])  yEnc$/',
  1,
  '//homeland.s02e12.1080p.bluray-bia.r08 - [011/111]  yEnc',
  30
), (
  749,
  '^alt\\.binaries\\.multimedia\\.anime$',
  '/(.+?\\s*\\((360|480|720|1080)p\\|.+?\\s*~bY\\s*.+?)\\s*\\[\\d+\\/\\d+\\]\\s*- "(?P<match0>.+?\\[(?P<crc>[0-9A-Fa-f]+)\\]).+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//High School DxD New 01 (480p|.avi|xvid|mp3) ~bY Hatsuyuki [01/18] - "[Hatsuyuki]_High_School_DxD_New_01_[848x480][76B2BB8C].avi.001" yEnc',
  5
), (
  750,
  '^alt\\.binaries\\.multimedia\\.anime$',
  '#(?P<match0>\\[[A-Z0-9-]+\\][\\w_-]+_\\d+_\\[\\d{3,4}[ip]\\]\\s*\\[[(?P<crc>0-9A-Fa-f]{8}\\])\\s\\[\\d+/(\\d+)\\]#i',
  1,
  '//[Hatsuyuki]_Seirei_Tsukai_no_Blade_Dance_-_03_[720p] [E18FCA59] [01/18]',
  10
), (
  751,
  '^alt\\.binaries\\.multimedia\\.anime\\.highspeed$',
  '/.+? \\((360|480|720|1080)p\\|.+? ~bY .+? \\[\\d+\\/\\d+\\] - "(?P<match0>.+?\\[[A-F0-9]+\\].+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//High School DxD New 01 (480p|.avi|xvid|mp3) ~bY Hatsuyuki [01/18] - "[Hatsuyuki]_High_School_DxD_New_01_[848x480][76B2BB8C].avi.001" yEnc',
  5
), (
  752,
  '^alt\\.binaries\\.multimedia\\.documentaries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\[\\d+ of \\d+ - \\d+ [kKmMgG][bB]\\] yEnc$/',
  1,
  '//"Universe S4E08.part40.rar" - [41 of 76 - 10013 kb] yEnc',
  5
), (
  753,
  '^alt\\.binaries\\.multimedia\\.scifi$',
  '/^some m4vs - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//some m4vs - "SilverHawks_v1eps01_The Origin Story.par2" yEnc',
  5
), (
  754,
  '^alt\\.binaries\\.music$',
  '/^.+By Dready Niek \\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//( 80\'s Giga Hits Collection (32 CDs) By Dready Niek )  By Dready Niek ) [44/54] - "80\'s Giga Hits Collection (32 CDs) By Dready Niek.part43.rar" yEnc',
  5
), (
  755,
  '^alt\\.binaries\\.music$',
  '/^\\(\\d+\\/\\d+\\]  (?P<match0>.+?) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - nightsteff  yEnc$/',
  1,
  '//(00/24]  Marco Mengoni - Prontoacorrere (2013) "Marco Mengoni - Prontoacorrere (2013).nzb" - nightsteff  yEnc',
  10
), (
  756,
  '^alt\\.binaries\\.music$',
  '/^\\((?P<match0>.+)\\) \\[\\d+\\/\\d+\\] - \\[".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")\\] yEnc$/',
  1,
  '//(80\'s Disco-Soul-Funk) [136/426] - ["Level 42 - Lessons In Love.mp3"] yEnc',
  15
), (
  757,
  '^alt\\.binaries\\.music$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [001/153] - "C4 House Party Horse Meat Disco Set 6.nfo" C4 House Party Horse Meat Disco Set 6 yEnc',
  20
), (
  758,
  '^alt\\.binaries\\.music$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - (?P<match0>.+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [19/22] - C.K.N. Demo 85  "19-rotten system.mp3" yEnc',
  25
), (
  759,
  '^alt\\.binaries\\.music$',
  '/^\\((?P<match0>.+)\\) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Jungle Fever Tapepacks) [67/79] - "Jungle Fever Tapepacks.part65.rar" yEnc',
  30
), (
  760,
  '^alt\\.binaries\\.music$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[1/8] - "Black Market Flowers - Bind (1993).sfv" yEnc',
  35
), (
  761,
  '^alt\\.binaries\\.music$',
  '/^\\[DreamPieter\\] \\((?P<match0>.+)\\) \\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[DreamPieter] (Glen Tipton - Two solo albums) [04/23] - "Glenn Tipton - Baptizm of Fire - 04 - Fuel Me Up.mp3" yEnc',
  40
), (
  762,
  '^alt\\.binaries\\.music$',
  '/^.+ghost-of-usenet\\.org.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")> >www\\.SSL-News\\.info<  - \\(\\d+\\/\\d+\\) - \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//<<< <ghost-of-usenet.org> <"Dream Dance Vol. 21-30 - 20CDs MP3 - Ghost.part20.rar"> >www.SSL-News.info<  - (22/32) - 2,45 GB yEnc',
  45
), (
  763,
  '^alt\\.binaries\\.music$',
  '/^Musikjunkie-(?P<match0>[\\pL\\pN\\pM\\pP. -]{8,})[-_\\s]{0,3}\\[\\d+\\/\\d+\\]".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Musikjunkie-The.Voice.Of.Germany.2013.The.Best.of.Liveshows.4.CD.Box.Set.VBR [15/28]"voice.part13.rar" yEnc',
  50
), (
  764,
  '^alt\\.binaries\\.music$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//"8 Wenn ich einmal gross bin .mp3" Koelschefetz postet.Die Filue -Immer Wigger  yEnc',
  55
), (
  765,
  '^alt\\.binaries\\.music$',
  '/^.+\\(by dem verrÃ¼ckten Lordi\\)[-_\\s]{0,3}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB].+[-_\\s]{0,3}yEnc$/',
  1,
  '//Der etwas andere Mix - Deutscher Foxmix 14 (by dem verrÃ¼ckten Lordi) (3/8) "Der etwas andere Mix - Deutscher Foxmix 14.txt" - 271,24 MB 11.11.03 yEnc',
  60
), (
  766,
  '^alt\\.binaries\\.music$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}.+yEnc$/',
  1,
  '//(01/10) "MylÃ¨ne Farmer - Monkey me (2012 Bluray Audio).rar" - 1,56 GB - yEnc ::: //(3/7) "DJ Taz3 - Your Choice Sendung Silvester 2012.mp3.vol00+01.PAR2" - 119,50 MB -RadioShows und Livesets yEnc',
  65
), (
  767,
  '^alt\\.binaries\\.music$',
  '/^[\\(\\[]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}(?P<match0>.+) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")([-_\\s]{0,3}nightsteff)?[-_\\s]{0,3}yEnc$/',
  1,
  '//[00/20]  Nomadi - Terzo Tempo (2012) "Nomadi - Terzo Tempo (2012).nzb" - nightsteff  yEnc ::: //[02/56] - The Beatles - The Decca Tapes "Beatles - The Decca Tapes.part01.rar" yEnc',
  70
), (
  768,
  '^alt\\.binaries\\.music$',
  '/^\\[.+\\] \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Marillion - Live From Cadogan Hall 2011 (DVD 1)] [981/98] - "Marillion - Live From Cadogan Hall 2011 (DVD 1).par2" yEnc',
  75
), (
  769,
  '^alt\\.binaries\\.music$',
  '/^.+ \\[\\d+ of \\d+\\] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//XTC - NMR - 2001 - Homegrown - The Wasp Star Home Demos [22 of 34] "2001 - Homegrown - The Wasp Star Home Demos.vol00+01.PAR2" yEnc',
  80
), (
  770,
  '^alt\\.binaries\\.music$',
  '/^.+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Wendy O Williams Bump n Grind - "Wendy.O.Williams.Bump.n.Grind.nfo"  yEnc',
  85
), (
  771,
  '^alt\\.binaries\\.music$',
  '/^.+ \\(\\d+\\/\\d+\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB].+yEnc$/',
  1,
  '//The Amity Affliction - Chasing Ghosts_lossless (01/11) - "The Amity Affliction - Chasing Ghosts_lossless.par2" - 321,40 MB - codari_4_usenetrevolution.info-Partner of SSL-News yEnc',
  90
), (
  772,
  '^alt\\.binaries\\.music$',
  '/^(?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) \\d+\\/\\d+[-_\\s]{0,3}yEnc$/',
  1,
  '//Bob Marley & The Wailers - African Herbsman.nzb 0/8  yEnc',
  95
), (
  773,
  '^alt\\.binaries\\.music$',
  '/^[\\w. &\\()\\[\\]\\\'-]+?\\.- (?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) \\[\\d+\\/\\d+\\][-_\\s]{0,3}yEnc$/',
  1,
  '//DOG DAYS\' Season 2 ED Single - Natsu no Yakusoku (Horie Yui)[KICM-1402].- DOG DAYS\' Season 2 ED Single - Natsu no Yakusoku (Horie Yui)[KICM-1402].nzb [00/13]  yEnc',
  100
), (
  774,
  '^alt\\.binaries\\.music$',
  '/"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//7 Seconds - Complete Discography - 21 releases - 1980-2005(04/51) "7 Seconds - Complete Discography 1980-2005 - 21 releases.part02.rar" - 639.17 MB - yEnc',
  105
), (
  775,
  '^alt\\.binaries\\.music$',
  '/"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//7 Seconds - Complete Discography - 21 releases - 1980-2005(04/51) "7 Seconds - Complete Discography 1980-2005 - 21 releases.part02.rar" yEnc',
  110
), (
  776,
  '^alt\\.binaries\\.music$',
  '/(?P<match0>.+)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"[a-zA-Z]{3,4}\\.nzb"[-_\\s]{0,3}yEnc$/ui',
  1,
  '//El.Huervo-Do.Not.Lay.Waste.To.Homes.WEB-DL.MP3.VBR.V0.2012 [00/25] - "vbr.nzb" yEnc',
  115
), (
  777,
  '^alt\\.binaries\\.music$',
  '/^[\\(\\[]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}(?P<match0>.+) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}nightsteff[-_\\s]{0,3}yEnc$/',
  1,
  '// a.b.music.mp3 ::: public function music_mp3() ::: { ::: //(00/20]  Nomadi - Terzo Tempo (2012) "Nomadi - Terzo Tempo (2012).nzb" - nightsteff  yEnc',
  120
), (
  778,
  '^alt\\.binaries\\.music$',
  '/^.+?\\[\\d+\\/(\\d+\\][-_\\s]{0,3}.+?)[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [0/8] - Crionics Post - Alice In Chains - Dirt REPOST"Alice In Chains - Dirt.nzb" yEnc',
  125
), (
  779,
  '^alt\\.binaries\\.music$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [001/153] - "C4 House Party Horse Meat Disco Set 6.nfo" C4 House Party Horse Meat Disco Set 6 yEnc',
  130
), (
  780,
  '^alt\\.binaries\\.music$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - (?P<match0>.+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [19/22] - C.K.N. Demo 85  "19-rotten system.mp3" yEnc',
  135
), (
  781,
  '^alt\\.binaries\\.music$',
  '/^\\((?P<match0>.+)\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(BierbauchFreddy Quwinn seine grÃ¶Ãten Coversongs Vol2) [22/60] - "040c - Freddy Quinn - Don\'t Forbid Me (1957) (NH 22 639, EPH 20 575).mp3" yEnc',
  140
), (
  782,
  '^alt\\.binaries\\.music$',
  '/^\\[ (?P<match0>.+) \\] - \\[\\d+\\] - \\[\\d+ Kbps MP3\\] \\[\\d+ of \\d+\\] ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ Spectrum (ft. Matthew Koma) (Extended Mix) - Zedd ] - [2012] - [256 Kbps MP3] [1 of 7] "Spectrum (ft. Matthew Koma) [Extended Mix].mp3" yEnc',
  145
), (
  783,
  '^alt\\.binaries\\.music$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\(((Top)?\\d+ )?(MP3 )?((Album|Single) )?Charts\\)[ -]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] - (150 MP3 Album Charts) - "Atlantean Kodex - The White Goddess.rar"  yEnc ::: //[1/1] - (MP3 Album Charts) - "Black Sabbath - 13.rar"  yEnc ::: //[1/1] - (Top100 Album Charts) - "Bastille - Pompeii.rar"  yEnc ::: //[1/1] - (Top100 Charts) - "Beatrice Egli - Gluecksgefuehle.rar"  yEnc ::: //[1/1] - (Top100 Single Charts) -  "Alicia Keys - Girl On Fire.rar"  yEnc',
  150
), (
  784,
  '^alt\\.binaries\\.music$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}(Album )?Top \\d+( Album Charts \\d+)?[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] - Album Top 100 - "Amy MacDonald - L',
  155
), (
  785,
  '^alt\\.binaries\\.music$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\(Album Top \\d+(( -)? \\d+)?\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] (Album Top 100 - 2012) - "Cro - Einmal Um Die Welt.rar"  yEnc ::: //[1/1] (Album Top 100 2012) - "Cro - Einmal Um Die Welt.rar"  yEnc ::: //[1/1] (Album Top 100) - "Cro - Raop.rar"  yEnc',
  160
), (
  786,
  '^alt\\.binaries\\.music$',
  '/^(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/',
  1,
  '//100 Greatest One Hit Wonders 80s[mp3].rar  yEnc',
  165
), (
  787,
  '^alt\\.binaries\\.music$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(001/225) "Dead Can Dance (mp3 - 320Kbs - CBR).part001.rar" - 1.11 GB - yEnc',
  170
), (
  788,
  '^alt\\.binaries\\.music$',
  '/^[\\(\\[]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}\\(MP3 Album\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[1/1] (MP3 Album)- "Agnes Obel - Aventine.rar"  yEnc',
  175
), (
  789,
  '^alt\\.binaries\\.music$',
  '/^\\[ech0park\\]-\\[spotnet\\]-\\[(?P<match0>.+?)\\] \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ech0park]-[spotnet]-[Snow Patrol 2012 Tour Sampler - 2012-iND] [02/20] - "02-snow_patrol-ill_never_let_go.mp3" yEnc',
  180
), (
  790,
  '^alt\\.binaries\\.music$',
  '/^.+usenet-piraten\\.info.+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<< http://usenet-piraten.info >> - [13/15] - "Monster Cyborg - Overkill (mp3).vol0+1.par2" yEnc',
  185
), (
  791,
  '^alt\\.binaries\\.music$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[- ]{0,4}ShapterV yEnc$/',
  1,
  '//[1/8] - "Nightwish - Storytime (Retail-Single 2011).sfv" -  ShapterV yEnc',
  190
), (
  792,
  '^alt\\.binaries\\.music$',
  '/^.+usenet-piraten\\.info.+newsconnection\\.eu.+[-_\\s]{0,3}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//100 Rock - Vol.04<>usenet-piraten.info<>www.newsconnection.eu<> - (1/5)  "100 Rock - Vol.04.par2" - 101,65 MB - yEnc',
  195
), (
  793,
  '^alt\\.binaries\\.music$',
  '/^(?P<match0>.+?)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\[\\d+\\/ (\\d+\\]) nightsteff[-_\\s]{0,3}yEnc$/',
  1,
  '//40 Italo Dance Tunes (2CD) - "00. 40 Italo Dance Tunes 2011.nfo" [02/ 50] nightsteff  yEnc',
  200
), (
  794,
  '^alt\\.binaries\\.music$',
  '/^(?P<match0>.+?) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}nightsteff  yEnc$/',
  1,
  '//Bud Spencer & Terence Hill - Greatest Hits Vol 1 (1995) "04 - Just A Good Boy.mp3" nightsteff  yEnc',
  205
), (
  795,
  '^alt\\.binaries\\.music$',
  '/^Attn: \\w+ - (?P<match0>.+?)\\[\\d+\\/(\\d+\\]) - .+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}\\d+[.,]\\d+[kKmMgG][bB][-_\\s]{0,3}yEnc$/',
  1,
  '//Attn: bearcat - Avenged Sevenfold - Avenged Sevenfold 320[17/18] - .vol15+16.par2 5.9Mb yEnc',
  210
), (
  796,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^\\S+ \\[\\d+\\/\\d+\\] - ("|#34;)(\\S+)\\.part\\d+\\.rar(?P<match0>"|#34;) yEnc$/',
  1,
  '//WE.WANT.OUR.MUMMY.(THE.THREE.STOOGES).(1939) [08/15] - "The.Three.Stooges.S06E02.We.Want.Our.Mummy.DVDRip.XviD-DEiMOS.part6.rar" yEnc',
  5
), (
  797,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^\\[.+\\] \\[\\d+of\\d+\\] .+ - \\[\\d+\\/\\d+\\] - ("|#34;)(?P<match0>.+)\\.nzb("|#34;) yEnc$/',
  1,
  '//[Hepburn-Tracy Movie Pack] [4of8] Xvid 700mb ENG No-Subs - [00/62] - "State of the Union (1948).nzb" yEnc',
  10
), (
  798,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^\\{.+\\} (?P<match0>.+ \\(\\d{4}\\)) .+ \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//{Dracula #01}  Dracula (1931) - Xvid DVDRip 624x464 NTSC FS Dual Audio - [00/15] - "DRACULA.nzb" yEnc',
  15
), (
  799,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>.+ \\(\\d{4}\\)) - .+ - \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//The Incredible Shrinking Man (1957) - Xvid DVDRip 688x384 NTSC WS - [00/16] - "TISM.nzb" yEnc',
  20
), (
  800,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>.+\\d{4})\\.(VHSRip|COLOR).+\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//Sudden.Danger.1955.VHSRip.XviD-KG [01/56] - "Sudden.Danger.1955.VHSRip.XviD-KG.nfo" yEnc',
  25
), (
  801,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^.+ - (?P<match0>.+) -(?P<match1> \\d{4}) - DVDRip.+ \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//W.C. Fields - You Can\'t Cheat An Honest Man - 1939 - DVDRip - Xvid - [00/68] - "you can\'t cheat an honest man 1939.nzb" yEnc',
  30
), (
  802,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^.+enjoy\\!.+\\[\\d+\\/\\d+\\] - ("|#34;)(?P<match0>.+)\\.(nzb|nfo|part\\d+\\.rar|part\\.PAR2)("|#34;) yEnc$/i',
  1,
  '//-=>EnJoY!<-=->Experimental/Avant-Garde/Artistic Shorts<-=->(Day1/?) [00/26] - "Unseen Cinema - Disc I - The Mechanized Eye - Experiments in Technique and Form - 1894-1941 (480p,x264).nzb" yEnc',
  35
), (
  803,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>.+\\d{4})(\\.COLOR)?\\.(TV|VHS|VHSTV)Rip.+ \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//Goodbye.Charlie.1964.COLOR.TVRip.XviD-CG [01/56] - "Goodbye.Charlie.1964.COLOR.TVRip.XviD-CG.nfo" yEnc',
  40
), (
  804,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>\\S+\\d{4})\\.COLOR\\.DVDRip.+ \\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//The.Adventures.of.Sadie.(Our.Girl.Friday).1953.COLOR.DVDRip.XviD-CG [01/69] - "Our.Girl.Friday.1953.COLOR.DVDRip.XviD-CG.nfo" yEnc',
  45
), (
  805,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^("|#34;)(?P<match0>.+)\\.MKV\\.\\d+("|#34;) \\d+ of \\d+$/',
  1,
  '//"Singin\' in the Rain (1952) AVC 480p.MKV.001" 01 of 15',
  50
), (
  806,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^.+\\(\\d{4}\\)(\\.EXTRA\\.PARS|\\.\\[REPOST\\])? \\[\\d+(?P<match0>\\/| of )\\d+\\][ -]+("|#34;)(.+)(\\.vol\\d+\\+\\d+\\.par2|-\\[big.+\\]\\.nfo|\\.nzb|\\.nfo| \\- .+.avi\\.\\d+)("|#34;) yEnc$/',
  1,
  '//RANDOLPH.SCOTT.-.PARIS.CALLING.(1941) [42/49] - "Paris.Calling.1941.VHSRip.AVC-DD.vol001+002.par2" yEnc',
  55
), (
  807,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^.+\\(\\d{4}\\)(\\.EXTRA\\.PARS|\\.\\[REPOST\\])? \\[\\d+(?P<match0>\\/| of )\\d+\\][ -]+("|#34;)(.+)(\\.vol\\d+\\+\\d+\\.par2|-\\[big.+\\]\\.nfo|\\.nzb|\\.nfo| \\- .+.avi\\.\\d+|\\.par2)("|#34;) yEnc$/',
  1,
  '//RANDOLPH.SCOTT.-.PARIS.CALLING.(1941) [42/49] - "Paris.Calling.1941.VHSRip.AVC-DD.vol001+002.par2" yEnc',
  60
), (
  808,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^.+\\d{4}\\.(SILENT|DVDRip).+ \\[\\d+\\/\\d+\\] - (?P<match0>"|#34;)(.+)\\.nfo("|#34;) yEnc$/',
  1,
  '//Mickey.1918.SILENT.DVDRip.XviD-KG [01/70] - "Mickey.1918.SILENT.DVDRip.XviD-KG.nfo" yEnc',
  65
), (
  809,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(More Assorted Goodies|Even More Offerings) - REQ:.+ \\[\\d+\\/\\d+\\] - ("|#34;)(?P<match0>.+)\\.part\\.nzb("|#34;) yEnc$/',
  1,
  '//More Assorted Goodies - REQ:Decasia [01/16] - "The Bullwinkle Show with Occasional Rare Bullwinkle Puppet - BnW.part.nzb" yEnc',
  70
), (
  810,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>.+) -(?P<match1> \\d{4}) \\[\\d+ of \\d+\\] ("|#34;).+("|#34;) yEnc$/',
  1,
  '//The Birth of a Nation - 1915 [1 of 71] "The Birth of a Nation - 1915.part01.rar" yEnc',
  75
), (
  811,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^Musicals(\\.NZBs)? \\[\\d+\\/\\d+\\] - ("|#34;)(?P<match0>.+)\\.nzb("|#34;) yEnc$/',
  1,
  '//Musicals [05/10] - "The band wagon 1953.nzb" yEnc',
  80
), (
  812,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^(?P<match0>Torchy.+) \\[\\d+ of \\d+\\] ("|#34;).+("|#34;) yEnc$/',
  1,
  '//Torchy Runs for Mayor (Maypo) [13 of 24] "Torchy Runs for Mayor.avi.013" yEnc',
  85
), (
  813,
  '^alt\\.binaries\\.multimedia\\.vintage-film\\.pre-1960$',
  '/^\\[\\d+\\/\\d+\\] - ("|#34;)(?P<match0>.+ \\(\\d{4}\\))\\.avi\\.\\d+("|#34;)( \\(\\d+\\/\\d+\\))?$/',
  1,
  '//[01/27] - "Monkey Business (1952).avi.001" (1/130)',
  90
), (
  814,
  '^alt\\.binaries\\.nl$',
  '/\\((\\d+|\\?+)\\) \\[\\d+\\/\\d+\\].*"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(????) [01/46] - "NCIS.S11E02.Past.Present.and.Future.1080p.WEB-DL.DD5.1.H.264-CtrlHD.par2" yEnc',
  5
), (
  815,
  '^alt\\.binaries\\.nl$',
  '/^\\w+[-_\\s]{0,3}[\\[\\(]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//JN - [1/3] - "Operatie Teheran-Joel C Rosenberg JN.par2" yEnc',
  10
), (
  816,
  '^alt\\.binaries\\.nl$',
  '/^\\( (?P<match0>[\\w. -]{8,}) \\)[-_\\s]{0,3}\\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//( Overlord II RELOADED ) - [013/112] - "rld-olii.part001.rar" yEnc',
  15
), (
  817,
  '^alt\\.binaries\\.nl$',
  '/^(?P<match0>[\\w. &\\()-]{8,}?\\b)[-_\\s]{0,3}\\[\\d+\\/(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Batman.Arkham-Origins.Initiation-RELOADED - [006/296] - "r.vol010+08.PAR2" yEnc',
  20
), (
  818,
  '^alt\\.binaries\\.nl$',
  '/^\\(PC-ISO\\)[-_\\s]{0,3}\\( (?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b) \\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(PC-ISO) ( Trials.Fusion.Riders.of.the.Rustlands-SKIDROW ) [10/40] - "sr-tfrotr.part01.rar" yEnc',
  25
), (
  819,
  '^alt\\.binaries\\.nl$',
  '/^[-_\\s]{0,4}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//- - [03/33] - "s88fX0O0g7ZPGa96TyeDr.part02.rar" yEnc',
  30
), (
  820,
  '^alt\\.binaries\\.pictures\\.erotica\\.anime$',
  '/(?P<match0>.*)\\s+-\\s+\\d+\\s+of\\s+\\d+\\s+-\\s+yEnc\\s+".*"/i',
  1,
  '// [ABPEA - Original] Arima Zin - Tennen Koiiro Alcohol [BB, Boy] - 005 of 229 - yEnc "Tennen_Koiiro_Alcohol-005.jpg" to [ABPEA - Original] Arima Zin - Tennen Koiiro Alcohol [BB, Boy]',
  5
), (
  821,
  '^alt\\.binaries\\.ps3$',
  '/^(?P<match0>\\[\\d+\\] )\\[\\d+\\/\\d+\\] - "(?P<match1>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[4197] [036/103] - "ant-mgstlcd2.r34" yEnc',
  5
), (
  822,
  '^alt\\.binaries\\.ps3$',
  '/^\\(\\d+\\/\\d+\\)[-_ ]{0,3}"(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '// a.b.pwp ::: public function pwp() ::: { ::: //(300/454) "James_Bond_You_Only_Live_Twice_bd25.part300.rar" - 22,22 GB - yEnc',
  10
), (
  823,
  '^alt\\.binaries\\.series\\.tv\\.french$',
  '/^\\(\\d+\\/(\\d+\\)) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB]( -)? yEnc$/',
  1,
  '//(01/34) "Merlin.2008.1x04.la.vengeance.de.nimue.par2" - 388,38 MB - yEnc',
  5
), (
  824,
  '^alt\\.binaries\\.series\\.tv\\.french$',
  '/^(?P<match0>[a-zA-Z0-9._-]+)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//Breaking.Bad.S02.MULTi.720p.BluRay.AC3.x264-BoO [749/883] - "212ACS3517.part01.rar" yEnc',
  10
), (
  825,
  '^alt\\.binaries\\.series\\.tv\\.french$',
  '/^(?P<match0>[a-zA-Z0-9._-]+)[-_\\s]{0,3}[\\(\\[]\\d+ of (\\d+[\\)\\]])[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//Dawson.Saison2.DVDRIP.x264.FRENCH [111 of 196] "Dawson.S2.E22.Tout feu, tout flambe.m4v.003" yEnc',
  15
), (
  826,
  '^alt\\.binaries\\.series\\.tv\\.french$',
  '/^[\\(\\[]\\d+\\/(?P<match0>\\d+[\\)\\]])[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//[01/22] - "Unnatural.History.1x03.Espion.En.Sommeil.FR.LD.par2" yEnc',
  20
), (
  827,
  '^alt\\.binaries\\.series\\.tv\\.french$',
  '/^\\[(?P<match0>.+?)\\][-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//[MagNeum 3.14 S1 D.V.D + par2][1148/1167] - "ZDFRIKK8470DO776.D7P" yEnc',
  25
), (
  828,
  '^alt\\.binaries\\.sony\\.psp$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+([.,]\\d+ [kKmMgG])?[bB] yEnc$/',
  1,
  '//(01/10) "Assassins Creed - Bloodlines [EUR].par2" - 408,46 MB yEnc',
  5
), (
  829,
  '^alt\\.binaries\\.sony\\.psp$',
  '/^\\(\\d+\\) (?P<match0>[a-zA-Z0-9 -_\\.]+) \\[\\d+\\/(\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(20444) F',
  10
), (
  830,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/.+[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>.+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/',
  1,
  '//- codari_4_usenetrevolution.info-Partner of SSL-News UK.Single.Charts.Top.40  [01/25] - "UK.Single.Charts.Top.40.par2" - 301,70 MB - yEnc',
  5
), (
  831,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}\\(\\d+\\/(\\d+\\))[ _-]{0,3}yEnc$/',
  1,
  '//"Terraplane Sun - Funnel of Love.mp3" - 21.55 MB - (1/6) - yEnc',
  10
), (
  832,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^trtk\\d+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//trtk09920 - [01/12] - "Guido Negraszus - Night Cafe Iii (Freedom Travellers) (2012)(320).par2" yEnc',
  15
), (
  833,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [001/153] - "C4 House Party Horse Meat Disco Set 6.nfo" C4 House Party Horse Meat Disco Set 6 yEnc',
  20
), (
  834,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - (?P<match0>.+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [19/22] - C.K.N. Demo 85  "19-rotten system.mp3" yEnc',
  25
), (
  835,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\(.+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(LUNATIC SOUL - IMPRESSIONS) [00/18] - "Lunatic Soul - Impressions 2011.nzb" yEnc',
  30
), (
  836,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[1/8] - "Black Market Flowers - Bind (1993).sfv" yEnc',
  35
), (
  837,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\(((Top)?\\d+ )?(MP3 )?((Album|Single) )?Charts\\)[ -]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] - (150 MP3 Album Charts) - "Atlantean Kodex - The White Goddess.rar"  yEnc ::: //[1/1] - (MP3 Album Charts) - "Black Sabbath - 13.rar"  yEnc ::: //[1/1] - (Top100 Album Charts) - "Bastille - Pompeii.rar"  yEnc ::: //[1/1] - (Top100 Charts) - "Beatrice Egli - Gluecksgefuehle.rar"  yEnc ::: //[1/1] - (Top100 Single Charts) -  "Alicia Keys - Girl On Fire.rar"  yEnc',
  40
), (
  838,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}(\\()?(Album|Single) Top \\d+ ([- ]{0,2}\\d+)?(\\))? - "(\\[.+?\\] )?(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") {1,4}yEnc$/i',
  1,
  '//[1/1] - (Album Top 100) - "[Dance] David Guetta - One Love (2010) .rar"  yEnc ::: //[1/1] - (Album Top 100) - "Aerosmith - Music From Another Dimension.rar"  yEnc ::: //[1/1] - Album Top 100 - "ACDC - Live At River Plate.rar"  yEnc ::: //[1/1] (Album Top 100 - 2012) - "Alicia Keys - Girl On Fire.rar"  yEnc ::: //[1/1] (Album Top 100 2012) - "Asaf Avidan And The Mojos - One Day.rar"  yEnc',
  45
), (
  839,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}Top \\d+ Album Charts \\d+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") {1,4}yEnc$/i',
  1,
  '//[1/1] - Top 100 Album Charts 2012 - "Aura Dione feat. Rock Mafia - Friends.rar"  yEnc',
  50
), (
  840,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^.+usenet-piraten\\.info.+ - \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<>usenet-piraten.info<>partner<>ssl-news.info<> - [10/10] - "Overexposed (Deluxe Version).vol31+23.par2" yEnc',
  55
), (
  841,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/1) "Adam Levine (Maroon 5) & Alicia Keys - Daylight & Girl on fire LIVE 55TH GRAMMY AWARDS 320Kpbs.mp3" yEnc',
  60
), (
  842,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\(\\d+\\/\\d+\\) - VERBAteamÂ present - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/4) - VERBAteamÂ present - "Avril Lavigne - Rock \'N Roll (Official Audio).mp3" - 5,80 MB - yEnc',
  65
), (
  843,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}\\(Album Top \\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] - (Album Top 1000) - "Davis, Miles - Complete Live at the Plugged Nickel 1965.rar"  yEnc',
  70
), (
  844,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}Album Top \\d+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[1/1] - Album Top 100 - "Rammstein - Made In Germany 1995-2011.rar"  yEnc',
  75
), (
  845,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^(?P<match0>.+?) (\\()?by dem verrÃ¼ckten Lordi(\\))? {1,2}\\(\\d+\\/\\d+\\) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB].+yEnc$/i',
  1,
  '//Andrea Berg - My Danish Collection (2013) by dem verrÃ¼ckten Lordi (14/27) "Andrea Berg - My Danish Collection (2013).par2" - 132,74 MB  150920134 yEnc ::: //Der Deutsche Beat Mix Teil 2 auf wunsch (by dem verrÃ¼ckten Lordi) (2/9) "Der Deutsche Beat Mix Teil 3 Back.jpg" - 117,84 MB 13.11.05 yEnc',
  80
), (
  846,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^(?P<match0>.+?)  \\(\\d+\\/\\d+\\) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB] {1,2}by dem verrÃ¼ckten Lordi.+yEnc$/i',
  1,
  '//Christian Anders - Tief in dir  (15/24) "Christian Anders - Tief In Dir Back.jpg" - 58,56 MB by dem verrÃ¼ckten Lordi 0703123 yEnc',
  85
), (
  847,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^Der etwas.+ - (?P<match0>.+) \\(\\d+\\/\\d+\\) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/i',
  1,
  '//Der etwas andere Mix - Wilde Herzenmix (auf wunsch) neu (by dem verrÃ¼ckten Lordi) (1/8) "Der etwas andere Mix - Wilde Herzenmix.par2" yEnc',
  90
), (
  848,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^(?P<match0>.+?) \\(\\d+\\/\\d+\\) ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB] {1,2}\\d+ yEnc$/i',
  1,
  '//Full Discography - The Cranberries (01/47) "Full Discography - The Cranberries.par2" - 3,52 GB  2812111 yEnc',
  95
), (
  849,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^(?P<match0>.+?) meil29 ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//jean ferrat  annÃ©e 1967 Ã  1969  meil29 "17 Rien Ã  voir.mp3" yEnc',
  100
), (
  850,
  '^alt\\.binaries\\.sound\\.mp3$',
  '/^Selected Songs by Various Artists - (?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/i',
  1,
  '//Selected Songs by Various Artists - Depeche Mode - Personal Jesus (Acoustic Version).mp3  yEnc',
  105
), (
  851,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}\\[Lords-of-usenet\\][ _-]{0,3}<<Partner of SSL-News.info>>[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(05/10) - [Lords-of-usenet] <<Partner of SSL-News.info>>  "Wynardtage Praise The Fallen(2007).vol00+01.PAR2" - 132,64 MB - yEnc',
  5
), (
  852,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}<www\\.lords-of-usenet\\.org><by Nerts>[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(06/11) - <www.lords-of-usenet.org><by Nerts> - "Diens - Schwarzmale.vol00+01.PAR2" - 141,07 MB - yEnc',
  10
), (
  853,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^trtk\\d+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//trtk09920 - [01/12] - "Guido Negraszus - Night Cafe Iii (Freedom Travellers) (2012)(320).par2" yEnc',
  15
), (
  854,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [01/31] - "Adrian von Ziegler - Discography - 2010-2013.par2" yEnc',
  20
), (
  855,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^<www\\.lords-of-usenet\\.org><by Nerts>[ _-]{0,3}\\(\\d+\\/\\d+\\)[ _-]{0,3}[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//<www.Lords-Of-Usenet.org><by Nerts> (09/18) - "Mantus - Fatum (2013) [2CD].FH.vol00+2.PAR2" - 336,39 MB - yEnc',
  25
), (
  856,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\)[ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//(08/15) "Noemi-Red.(Unreleased).2006.by.NYCrules.vol000+01.PAR2" - 179,66 MB - yEnc',
  30
), (
  857,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\[(?P<match0>[a-zA-Z0-9-_\\\\(\\)\\.]+)\\] \\[www\\.usenet4ever\\.info by Secretusenet\\] -  "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[16_Bit_Lolitas-Warung_Brazil_002-2CD-2012-iHF] [www.usenet4ever.info by Secretusenet] -  "000-16_bit_lolitas-warung_brazil_002-2cd-2012-ihf.sfv" yEnc ::: //[3RD_Prototype_-_On_My_Way-(TB7368)-WEB-2013-FMC] [www.usenet4ever.info by Secretusenet] -  "01-3rd_prototype_-_deafback-when_you_are_in_the_dark_(deafback_remix).mp3" yEnc ::: //[Armin_Van_Buuren_Feat._Fiora-Waiting_For_The_Night-(ARMD1140)-WEB-2013-UKHx] [www.usenet4ever.info by Secretusenet] -  "00-armin_van_buuren_feat._fiora-waiting_for_the_night-(armd1140)-web-2013-ukhx.m3u" yEnc',
  35
), (
  858,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^>ghost-of-usenet\\.org<< (?P<match0>[a-zA-Z0-9-_\\\\(\\)\\.]+) >>www\\.SSL-News\\.info> -  "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//>ghost-of-usenet.org<< 16_Bit_Lolitas-Warung_Brazil_002-2CD-2012-iHF >>www.SSL-News.info> -  "101-16_bit_lolitas-warung_brazil_002_cd1.mp3" yEnc',
  40
), (
  859,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\\\(\\)\\.]+) \\[\\d+(\\/| of )(\\d+\\])[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Blok_B-Bienvenue_Dans_Mon_Blok_Vol.1-2005-BZ_INT [20 of 27] "01-gangsta.mp3" yEnc ::: //DJ Neev - HedKandi_2013-06-08 (Ministry of Sound Radio) [01/13] - "DJ Neev - HedKandi_2013-06-08 (Ministry of Sound Radio).par2" yEnc',
  45
), (
  860,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\(www\\.Thunder-News\\.org\\) >(?P<match0>.+?)< <Sponsored by Secretusenet> - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(www.Thunder-News.org) >Dee_And_Crane-Let_The_Music_Play-WEB-2012-UKHx< <Sponsored by Secretusenet> - "05-dee_and_crane-let_the_music_play_(jay_frogs_keep_the_groove_remix_edit).mp3" yEnc',
  50
), (
  861,
  '^alt\\.binaries\\.sound\\.mp3\\.complete_cd$',
  '/^\\[\\d+\\/\\d+\\] - \\((MP3 )?ALBUM CHARTS\\) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/i',
  1,
  '//[1/1] - (MP3 ALBUM CHARTS) - "Andreas Gabalier - Volksrock\'n\'roller-Live.rar" yEnc',
  55
), (
  862,
  '^alt\\.binaries\\.sounds\\.flac$',
  '/^\\[\\d+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\]-\\[\\d+\\/\\d+] - ".+?" yEnc$/',
  1,
  '//[32974]-[FULL]-[#a.b.flac]-[ Tenniscoats-Tokinouta-JP-CD-FLAC-2011-BCC ]-[04/28] - "00-tenniscoats-tokinouta-jp-cd-flac-2011.nfo" yEnc',
  5
), (
  863,
  '^alt\\.binaries\\.sounds\\.flac$',
  '/^\\[:.+:\\]\\[FLAC.+\\]-\\[:(?P<match0>.+):\\]-\\[\\d+\\/\\d+\\]-".+" yEnc$/',
  1,
  '//[:SEK9:][FLAC/Metal]-[:Burn_The_Priest-Burn_The_Priest-Remastered-CD-FLAC-2005-TiLLMYDEATH:]-[01/18]-"00-burn_the_priest-burn_the_priest-remastered-cd-flac-2005-proof.jpg" yEnc',
  10
), (
  864,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^http:\\/\\/dream-of-usenet\\.org .+? - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//http://dream-of-usenet.org empfehlen newsconnection.eu - [02/32] - "Adam_Ant-Manners_and_Physique-(MCAD-6315)-CD-FLAC-1989-2Eleven.par2" yEnc',
  5
), (
  865,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[a-zA-Z0-9]+.+? - .+?)\\s+\\(\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Rush - Sector One 24-96  (000/229] - ".nzb" yEnc ::: //Stevie Ray Vaughan - Couldn\'t Stand the Weather  (01/19] - ".sfv" yEnc',
  10
), (
  866,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^trtk\\d+ - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//trtk07073 - [18/26] - "1990 Santana - Spirits Dancing In The Flesh (flac).part17.rar" yEnc',
  15
), (
  867,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^COMPLETE REPOST (?P<match0>.+? - )NMR -(?P<match2> \\d{4}) - (?P<match1>.+?) \\[\\d+ of \\d+\\] ".+?" yEnc$/',
  1,
  '//COMPLETE REPOST Magma - NMR - 1974 - Wurdah Itah [01 of 23] "1974 - Wurdah Itah.par2" yEnc',
  20
), (
  868,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[A-Z0-9].+? - VA - .+?) \\[\\d+ of \\d+\\] - ".+?" yEnc$/',
  1,
  '//Sensation - VA - Source Of Light (2CD 2012) [02 of 67] - "00 - Sensation - VA - Source Of Light (2CD 2012) [nmr].txt" yEnc',
  25
), (
  869,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[A-Z0-9][A-Za-z0-9 ]{2,} -( \\d{4} -)? [A-Z0-9].+?( \\(.+?\\))?) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Ryan McGarvey - Forward In Reverse [01/21] - "00 - Ryan Mcgarvey - Forward in Reverse.nfo" yEnc ::: //JFC - The Timerewinder (NMR) [01/15] - "00 - The Timerewinder.nfo" yEnc ::: //The Brothers Johnson - 1981 - Winners (2011 expanded remastered) [01/31] - "01 - The Real Thing.flac" yEnc ::: //Jermaine Jackson - 1980 - Let\'s Get Serious [00/23] - "Jermaine Jackson - 1980 - Let\'s Get Serious.nzb" yEnc',
  30
), (
  870,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[A-Z0-9].+? - [A-Z0-9].+? \\(\\d{4}\\) \\[.*?HDTracks.+?\\]) - ".+?" yEnc$/',
  1,
  '//Miles Davis - In A Silent Way (1969) [2013 - HDTracks 24-176,4] - "iasw24-176.par2" yEnc ::: //Bob James & David Sanborn - Quartette Humaine (2013) [HDTracks 24-88,2] - "qh24-88.par2" yEnc',
  35
), (
  871,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[A-Z0-9].+? - \\d{4} - .+?) - \\d+ of \\d+ - \\d+ - .+? yEnc$/',
  1,
  '//Sonny Landreth - 2010 - Mississippi Blues - 04 of 29 - 00 - Mississippi Blues.sfv yEnc ::: //Fruteland Jackson - 1996 - ... Is All I Crave - 08 of 20 - 00 - Fruteland Jackson - ... Is All I Crave.log yEnc',
  40
), (
  872,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^\\((?P<match0>VA - .+?)\\) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//(VA - Cafe Del Mar Dreams 5-2012-Samfie Man) [37/38] - "VA - Cafe Del Mar Dreams 5-2012-Samfie Man.vol063+040.par2" yEnc',
  45
), (
  873,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^\\([A-Z0-9]+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>.+?) - \\d+-.+?" yEnc$/',
  1,
  '//(152092XA20) [08/16] - "Guns and Roses - Use Your Illusion I - 08-Back Off Bitch.flac" yEnc',
  50
), (
  874,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^(?P<match0>[\\w-]{5,})\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Eros_Ramazzotti-Eros-IT-CD-FLAC-1997-FADA[04/26] - "00-eros_ramazzotti-eros-1997-fada.sfv" yEnc',
  55
), (
  875,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^.:[-_\\s]{0,3}(?P<match0>.+?)[-_\\s]{0,3}:..+?thunder-news\\.org.+?secretusenet\\.com:. - "([\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//.: VA-Liquid_Music-The_Future_House_Compilation-CD-FLAC-1993-WRS :. - .:www.thunder-news.org:. - .:sponsored by secretusenet.com:. - "00-va-liquid_music-the_future_house_compilation-cd-flac-1993-wrs.nfo" yEnc ::: //.:Bruce_BecVar-Arriba-CD-FLAC-1993-JLM:. - .:thunder-news.org:. - .:sponsored by secretusenet.com:. - "00-bruce_becvar-arriba-cd-flac-1993.m3u" yEnc',
  60
), (
  876,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//_ "CARUSO & GIGLI - O Sole Mio - The  Unknown.nzb" yEnc',
  65
), (
  877,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+ (of \\d+)( \\(\\d+\\/\\d+\\)){1,2} (yEnc)?$/',
  1,
  '//"Art Tatum - The Complete Trio Sessions with Tiny Grimes & Slam Stewart - Vol 1.NFO" - 1 of 6 (1/1) ::: //"Galen Jeter and the Dallas Jazz Orchestra - Thank You, Leon.NFO" - 1 of 5 (1/1) (1/1)',
  70
), (
  878,
  '^alt\\.binaries\\.sounds\\.lossless$',
  '/^[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/',
  1,
  '//"Doc Watson - 1973 - The Essential Doc Watson - 01 - Tom Dooley.flac" - 406.64 MB - yEnc',
  75
), (
  879,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\(dream-of-usenet\\.info\\) - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(dream-of-usenet.info) - [04/15] - "Enya-And_Winter_Came...-2008.part2.rar" yEnc',
  5
), (
  880,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^http:\\/\\/dream-of-usenet\\.org .+? - \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//http://dream-of-usenet.org empfehlen newsconnection.eu - [02/32] - "Adam_Ant-Manners_and_Physique-(MCAD-6315)-CD-FLAC-1989-2Eleven.par2" yEnc',
  10
), (
  881,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^trtk\\d+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//trtk09920 - [01/12] - "Guido Negraszus - Night Cafe Iii (Freedom Travellers) (2012)(320).par2" yEnc',
  15
), (
  882,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^>>> CREATIVE COMMONS NZB <<< "(?P<match0>.+?)" - File \\d+ of \\d+: ".+?" yEnc$/',
  1,
  '//>>> CREATIVE COMMONS NZB <<< "dexter romweber duo-lookout" - File 1 of 9: "creative_commons_nzb_dexter_romweber_duo-lookout.rar" yEnc',
  20
), (
  883,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+?usenet-space.+?Powered by.+? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+? \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\) .+? \\d+[.,]\\d+ [kKmMgG][bB] .+?yEnc$/',
  1,
  '//<<<usenet-space-cowboys.info>>>  <<<Powered by https://secretusenet.com>< "Justin_Bieber-Believe_Acoustic-2013-pLAN9_usenet-space-cowbys.info.rar" >< 4/6 (78.65 MB) >< 60.84 MB > yEnc',
  25
), (
  884,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/"(?P<match0>.+)"[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//"The Absence - Riders Of The Plague" [00/14] - "the_absence-riders_of_the_plague.nzb" yEnc',
  30
), (
  885,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/\\( (?P<match0>.+?)\\)[-_\\s]{0,3}( |\\().+\\)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//( Albert Cummings Albums 6x By Dready Niek (1999-2012) )  ( ** By Dready Niek ** ) [11/20] - "Albert Cummings Albums 6x By Dready Niek (1999-2012).part10.rar" yEnc ::: //( Fat Freddy\'s Drop - Blackbird (2013) -- By Dready Niek ) -- By Dready Niek ) [01/15] - "Fat Freddy\'s Drop - Blackbird (2013) -- By Dready Niek.par2" yEnc',
  35
), (
  886,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/\\( (?P<match0>.+?) \\)[-_\\s]{0,3}[\\(\\[]\\d+\\/(\\d+[\\)\\]])[-_\\s]{0,3}".+(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//( Addison_Road-Addison_Road-2008 ) [01/10] - "01. Addison Road - This Could Be Our Day.mp3" yEnc',
  40
), (
  887,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+?\\[\\d+\\/(\\d+\\][-_\\s]{0,3}.+?)[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [0/8] - Crionics Post - Alice In Chains - Dirt REPOST"Alice In Chains - Dirt.nzb" yEnc',
  45
), (
  888,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [001/153] - "C4 House Party Horse Meat Disco Set 6.nfo" C4 House Party Horse Meat Disco Set 6 yEnc',
  50
), (
  889,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - (?P<match0>.+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [19/22] - C.K.N. Demo 85  "19-rotten system.mp3" yEnc',
  55
), (
  890,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>.+?) {1,3}www\\.brothers-of-usenet\\.org - empfehlen - Newsconnection([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(03/11) "Europe - Discography (1983 - 2009) (320 kbps CBR)  www.brothers-of-usenet.org - empfehlen - Newsconnection.par2" yEnc ::: //(03/11) "Evanescence Diskographie (1998-2011) www.brothers-of-usenet.org - empfehlen - Newsconnection.par2" yEnc',
  60
), (
  891,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(107/123) - "Mark.EG.M.Zone.Rave.Tape.Packs.Hard.Trance.1990s.vol006+04.PAR2" - 11.39 GB yEnc ::: //(12/16) "Horrid Henry The Movie - Original Soundtrack.vol00+01.PAR2" - 102.32 MB - yEnc',
  65
), (
  892,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[002/123] - "Mark.EG.M.Zone.Rave.Tape.Packs.Hard.Trance.1990s.part001.rar" yEnc',
  70
), (
  893,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+usenetrevolution.+Partner of ssl-news\\.info.+\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//< usenetrevolution > <-> Partner of ssl-news.info <-> Anastacia.-.It\'s.a.Mans.World  [04/15] - "Anastacia.-.It\'s.a.Mans.World.part01.rar" - 100,47 MB - yEnc',
  75
), (
  894,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+Old but Sold.+>< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\).+ yEnc$/',
  1,
  '//<<<Old but Sold>>>  <<< >< >< "German Top 50 ODC - 12.08.2013.nfo" >< 02/33 (541,61 MB) >< 10,93 kB > yEnc',
  80
), (
  895,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+ghost-of-usenet.org[<>] [><]"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")> >www\\.SSL-News\\.info<  - \\(\\d+\\/\\d+\\)[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}yEnc$/',
  1,
  '//<<< <ghost-of-usenet.org> <"MC Basstard Diskographie 16CDs 2000-2011 MP3 - Ghost.part08.rar"> >www.SSL-News.info<  - (10/43) - 1,69 GB yEnc ::: //<<< <ghost-of-usenet.org> >"UltraTraxx Rare Remixes - Vol 011 MP3 192kbps.par2"> >www.SSL-News.info<  - (1/9) - 120,82 MB yEnc',
  85
), (
  896,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^BY REQ.+ - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\[\\d+\\/\\d+\\]  yEnc$/i',
  1,
  '//BY REQ:........! - "Keith Whitley - All American Country - .par2" [06/22]  yEnc',
  90
), (
  897,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^Der etwas.+ \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/i',
  1,
  '//Der etwas andere Mix - Wilde Herzenmix (auf wunsch) neu (by dem verrÃ¼ckten Lordi) (1/8) "Der etwas andere Mix - Wilde Herzenmix.par2" yEnc',
  95
), (
  898,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+[\\[\\(]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/i',
  1,
  '//DJ Inferno Beatport Xtreme September 2011[63/66] - "DJ Inferno Beatport Xtreme September 2011.vol073+55.PAR2" upp o-o  yEnc ::: //Kastelruther Spatzen - Weihnachten Bei Uns Daheim (2011) (22/25) "Kastelruther Spatzen - Weihnachten Bei Uns Daheim (2011).vol00+1.PAR2" - 113,03 MB -  Tapier 13.11.02 yEnc',
  100
), (
  899,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//"8 Wenn ich einmal gross bin .mp3" Koelschefetz postet.Die Filue -Immer Wigger  yEnc',
  105
), (
  900,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//Queens Of The Stone Age - Rated R (2000) (10th Anniversary Deluxe Edition 2010) [EAC/Lame V0] "QU2 - Queens of the Stone Age - Rated R.M3u" yEnc',
  110
), (
  901,
  '^alt\\.binaries\\.sounds\\.mp3$',
  '/^(?P<match0>.+?)- [\\[\\(]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}\\d\\d.+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/',
  1,
  '//squeeze-east side story-nmr- [01/14] - 01-squeeze-in quintessence.mp3  yEnc',
  115
), (
  902,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+?) www\\.brothers-of-usenet\\.org - empfehlen - Newsconnection(\\.eu)?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/11) "Der Kleine Vampir Komplett - Folge 01 bis 18 www.brothers-of-usenet.org - empfehlen - Newsconnection.eu.nfo" yEnc',
  5
), (
  903,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")by_Funkeefly yEnc$/',
  1,
  '//(01/15) "Dafuniks - Enter The Sideshow Groove.rar.001"by_Funkeefly yEnc',
  10
), (
  904,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^trtk\\d+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//trtk09920 - [01/12] - "Guido Negraszus - Night Cafe Iii (Freedom Travellers) (2012)(320).par2" yEnc',
  15
), (
  905,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/20) "Oz Discography by Grave Digger.par2" - 445,72 MB - yEnc',
  20
), (
  906,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\(D(\\))? (?P<match0>.+) {1,2}\\[\\d+\\/\\d+\\] - .+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) {1,2}yEnc$/',
  1,
  '//(D The Best Of Leon Russell [23/28] - The Best Of Leon Russell.vol00+01.PAR2  yEnc',
  25
), (
  907,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^.+ghost-of-usenet\\.org.+"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")> >www\\.SSL-News\\.info<  - \\(\\d+\\/\\d+\\) - \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//<<< <ghost-of-usenet.org> <"Dream Dance Vol. 21-30 - 20CDs MP3 - Ghost.part20.rar"> >www.SSL-News.info<  - (22/32) - 2,45 GB yEnc',
  30
), (
  908,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^<<<.+>>><<<(?P<match0>.+)>>>usenet-space-cowboys\\.info.+secretusenet\\.com>< ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\) >< \\d+[.,]\\d+ [kKmMgG][bB] > yEnc$/i',
  1,
  '//<<<Cowboyup35>>><<<Adele - Rolling In The Deep.mp4>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "Adele - Rolling In The Deep.mp4" >< 2/5 (77,13 MB) >< 63,94 MB > yEnc ::: //<<<Thor0103>>><<<Amorphis_-_Tuonela-Digipak-1999-kispatak>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "09_rusty_moon-kispatak.mp3.par2" >< 01/26 (143,73 MB) >< 6,10 kB > yEnc',
  35
), (
  909,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^<<<usenet-space-cowboys\\.info>>>.+secretusenet\\.com>< "(?P<match0>.+?)-\\w+_usenet-space-cowbys\\.info([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\) >< \\d+[.,]\\d+ [kKmMgG][bB] > yEnc$/i',
  1,
  '//<<<usenet-space-cowboys.info>>> THOR <<<Powered by https://secretusenet.com>< "Bangbros_Vs_Hansebanger_-_Kiezstyle-Promo-Vinyl-2006-ToTo_usenet-space-cowbys.info.avi" >< 3/5 (31,12 MB) >< 11,21 MB > yEnc',
  40
), (
  910,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^<<<usenet-space-cowboys\\.info>>>.+secretusenet\\.com> < "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") >< \\d+\\/\\d+ \\(\\d+[.,]\\d+ [kKmMgG][bB]\\) >< \\d+[.,]\\d+ [kKmMgG][bB] > yEnc$/i',
  1,
  '//<<<Usenet-Space-Cowboys.info>>><<<Fuzzy>>> <Powered by https://secretusenet.com> < "Alice_Cooper-Trash-1989-Wyse.nfo" >< 2/8 (89,39 MB) >< 17,21 kB > yEnc',
  45
), (
  911,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^>>> www.lords-of-usenet\\.org <<< "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\[\\d+\\/\\d+\\] - (\\[)?\\d+[.,]\\d+ [kKmMgG][bB](\\])? yEnc$/i',
  1,
  '//>>> www.lords-of-usenet.org <<< "Chris De Burgh - The Getaway.par2" - [1/9] - [115,51 MB] yEnc ::: //>>> www.lords-of-usenet.org <<< "Das Deutsche Schlager Magazin Die Maxis 1 2CD.par2" [01/12] - 205,70 MB yEnc',
  50
), (
  912,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\[.+?\\][-_\\s]{0,3}\\[(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}\\])[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}yEnc$/',
  1,
  '//[BFMP3] [Barrelhouse_Time Frames.nzb] [00/18] yEnc',
  55
), (
  913,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}("|#34;)(.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//Metallica - Ride The Lightning    "01 - Fight Fire With Fire.mp3" yEnc',
  60
), (
  914,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?) www\\.brothers-of-usenet\\.org - empfehlen - Newsconnection\\.eu([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/11) "Der Kleine Vampir Komplett - Folge 01 bis 18 www.brothers-of-usenet.org - empfehlen - Newsconnection.eu.nfo" yEnc',
  65
), (
  915,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/([\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}"(?P<match0>.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//The Refreshments - [1/9] - "The Refreshments - RockÂ´n Roll Christmas [2003].par2" yEnc',
  70
), (
  916,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4}) yEnc$/',
  1,
  '//Longines Symphonette-Far Away Places-(LP2 of 2)-Far Away Places-LP 2.par2 yEnc',
  75
), (
  917,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^Reader\\\'s Digest- {0,1}(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})  yEnc$/',
  1,
  '//Reader\'s Digest- Mario Lanza-The Very Best of Mario Lanza(CD3 of 3)-CD 3.par2  yEnc',
  80
), (
  918,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}\\d+[\\w.,& \\()\\[\\]\\\'\\-]{8,}?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[01/10] - "Acdc - Fly On The Wall - 1985 -01 - Fly On The Wall -Creative7164.mp3"  yEnc',
  85
), (
  919,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^\\[\\d+\\/\\d+\\] ->> "(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") <<- ShapterV  yEnc$/',
  1,
  '//[1/7] ->> "God Forbid 2009 - Reject the Sickness.par2" <<- ShapterV  yEnc',
  90
), (
  920,
  '^alt\\.binaries\\.sounds\\.mp3\\.complete_cd$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)--[\\w.,& \\()\\[\\]\\\'\\-]{8,}?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Glenn Miller-The Missing Chapters Vol. 6-Blue Champagne--Glenn Miller-The Missing Chapters Vol. 6-Blue Champagne.par2  yEnc',
  95
), (
  921,
  '^alt\\.binaries\\.sounds\\.mp3\\.dance$',
  '/^\\[\\d+\\](?P<match0>.+?)[-_\\s]{0,3}("|#34;)(.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//[2707]Solarstone-Solarstone_Collected_Vol_1-ARDI3177-WEB-2012-TraX "02-solarstone_feat_kym_marsh-day_by_day_(red_jerry_smackthe_bigot_up_remix).mp3" - yEnc',
  5
), (
  922,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(03/10) "Washing Machines - Planet-E CH-Basel Ultimate Hardcore - 4.9.1993.vol00+01.PAR2" - 232.39 MB - yEnc',
  5
), (
  923,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+ [bB][-_\\s]{0,3}yEnc$/',
  1,
  '//(2/7) "Cosmic Baby live at Energy 1995.vol00+01.PAR2" - 0 B - yEnc',
  10
), (
  924,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^\\[0sk\\]-\\[\\d+-\\d+-\\d+\\]-\\[.+\\]-\\[.+\\]-\\[\\d+\\/\\d+\\]-\\[(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,})\\]--.+? yEnc$/',
  1,
  '//[0sk]-[2002-12-06]-[idm]-[vinyl]-[4/5]-[Maps_And_Diagrams_-_Ti_Sta_Bene_Marone-(cact_001)-Vinyl-2002]--cact 001.sfv  yEnc',
  15
), (
  925,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^\\[.+\\]-\\[.+\\]-\\[\\d+\\/\\d+\\]-\\[(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,})\\]-.+? yEnc$/',
  1,
  '//[10_years---happy_bday_absme]-[cd]-[04/15]-[va_-_spacewars_01-(plkcd003)-cd-1996-nwd]-01-Nuw Idol - Union Of Ilk -nwd-.mp3  yEnc',
  20
), (
  926,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^(?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)[-_\\s]{0,3}\\d+[-_\\s]{0,3}[\\w.,& \\()\\[\\]\\\'\\-]{8,}?\\b.?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//Alec Empire - Low On Ice  06 - Untitled.mp3  yEnc',
  25
), (
  927,
  '^alt\\.binaries\\.sounds\\.mp3\\.electronic$',
  '/^Selected Songs by Various Artists - (?P<match0>[^.]{8,})([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//Selected Songs by Various Artists - Collide - Razor Sharp.mp3  yEnc',
  30
), (
  928,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d.+?B - (\\d.+?B -)? yEnc$/',
  1,
  '//(01/37) "Entourage S08E08.part01.rar" - 349,20 MB - yEnc ::: //(01/24) "EGtnu7OrLNQMO2pDbgpDrBL8SnjZDpab.nfo" - 686 B - 338.74 MB - yEnc (1/1)',
  40
), (
  929,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\) - (?P<match0>[\\w.-]{5,}) - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//(01/28) - Continuum.S02E13.Second.Time.1080p.WEB-DL.AAC2.0.H264 - "Continuum.S02E13.Second.Time.1080p.WEB-DL.AAC2.0.H264.par2" - 1.75 GB - yEnc',
  45
), (
  930,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[A-Za-z0-9.-]+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[01/42] - "King.And.Maxwell.S01E08.1080p.WEB-DL.DD5.1.H264-Abjex.par2" yEnc',
  50
), (
  931,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/15) - "Oz.S01E01.The.Routine.par2" - 380.18 MB yEnc ::: //(01/87) "Homeland.S03E05.Mini.720p.WEB.DL.DD5.1.H.264-ITSat.par2" - 773,24 MB - yEnc',
  55
), (
  932,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [10/26] - "The.Young.Riders.S01E02.480pWEB-DL.AAC2.0.H.264-AJP69.part09.rar" yEnc',
  60
), (
  933,
  '^alt\\.binaries\\.teevee$',
  '/^\\(Dgpc\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(Dgpc) [01/19] - "The.Xtra.Factor.S10E04.PDTVx264.JIVE.par2" yEnc',
  65
), (
  934,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ (?P<match0>.+?) \\] .+ \\(\\d+\\/\\d+\\) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ Anthony.Bourdain.Parts.Unknown.S01.480p.HDTV.x264-mSD ] MKV.h264 (03/17) - "Anthony.Bourdain.Parts.Unknown.S01E01.480p.HDTV.x264-mSD.mkv" yEnc',
  70
), (
  935,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\] (?P<match0>.+S\\d+E\\d+.+?) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")  yEnc$/',
  1,
  '//[01/31] Unsealed.Alien.Files.S02E02.The.Kecksburg.Incident.720p.HDTV.x264-N0TSC3N3 - "n0tsc3n3-unsealed.alien.files.s02e02.the.kecksburg.incident.720p.hdtv.x264.par2"  yEnc',
  75
), (
  936,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w ]+[\\(\\[]\\d+\\/\\d+[\\)\\]] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The Colbert Report [00/12] "The.Colbert.Report.2014.01.20.Scott.Stossel.720p.WEB-DL.AAC2.0.H.264-monkee.nzb" yEnc ::: //Colbert [01/10] "The.Colbert.Report.2013.12.19.Ben Stiller.720p.WEB-DL.AAC2.0.H264-zee.rar" yEnc ::: //Whale Wars (01/30) "Whale.Wars.S06.A.Commander.Rises.PDTV.XviD-ZEN.par2" yEnc',
  80
), (
  937,
  '^alt\\.binaries\\.teevee$',
  '/^\\. - \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//. - [01/42] - "Under.the.Dome.S01E03.Manhunt.1080p.WEB-DL.DD5.1.H.264-NTb.par2" yEnc',
  85
), (
  938,
  '^alt\\.binaries\\.teevee$',
  '/^(Re: )?(?P<match0>([\\w._-]{8,31}|[\\w._-]{33,}))([{}A-Z_]+)?( -)? \\[\\d+(\\/| of )\\d+\\]( -)? ".+?" yEnc$/',
  1,
  '//House.Hunters.International.S05E502.720p.hdtv.x264 [01/27] - "House.Hunters.International.S05E502.720p.hdtv.x264.nfo" yEnc ::: //Criminal.Minds.S03E01.Doubt.PROPER.DVDRip.XviD-SAiNTS - [01/33] - "Criminal.Minds.S03E01.Doubt.PROPER.DVDRip.XviD-SAiNTS.par2" yEnc',
  90
), (
  939,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>[a-zA-Z0-9 ]+)(\\.part\\d*|\\.rar)?(\\.vol.+? |\\.[A-Za-z0-9]{2,4} )\\[\\d+\\/\\d+\\] - yEnc$/',
  1,
  '//Silent Witness S15E02 Death has no dominion.par2 [01/44] - yEnc',
  95
), (
  940,
  '^alt\\.binaries\\.teevee$',
  '/^\\(bf1\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(bf1) [03/31] - "The.Block.AU.Sky.High.S07E61.WS.PDTV.XviD.BF1.part01.sfv" yEnc (1/1)',
  100
), (
  941,
  '^alt\\.binaries\\.teevee$',
  '/^"(?P<match0>[\\w._-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}[\\w. -]+[-_\\s]{0,3}yEnc$/',
  1,
  '//"Moving.On.S05E05.HDTV.x264.part19.rar" - (21/28) - Per REQ  yEnc',
  105
), (
  942,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\?+\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w._-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}[\\w. -]+[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [01/20] - "Boxing.Cinnamon vs El Perro.8th.March.2014.PDTV.x264-Sir.Paul.par2" Cinnamon vs El Perro  yEnc',
  110
), (
  943,
  '^alt\\.binaries\\.teevee$',
  '/^\\[[\\w. -]+\\][-_\\s]{0,3}"(?P<match0>[\\w._-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[REPOST]-"True.Blood.S06E01-E10.HDTV.x264.part094.rar" yEnc',
  115
), (
  944,
  '^alt\\.binaries\\.teevee$',
  '/^\\([\\w. -]{8,}\\)[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}""(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")"[-_\\s]{0,3}[\\w. -]+[-_\\s]{0,3}yEnc$/',
  1,
  '//(Pretty.Little.Liars.S04E11.Bring.Down.the.Hoe.1080p.WEB-DL.DD5.1.H.264-BS) [31/45] - ""Pretty.Little.Liars.S04E11.Bring.Down.the.Hoe.1080p.WEB-DL.DD5.1.H.264-BS.part29.rar"" yEnc yEnc',
  120
), (
  945,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w\\(). -]+[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[]-[FULL]-[a.b.teevee]-[Hannibal.S01.Special.Ceuf.720p.WEB-DL.DD5.1.H-264-NTb]-[03/40] - "Hannibal.S01.Special.Ceuf.720p.WEB-DL.DD5.1.H-264-NTb.part01.rar"  yEnc',
  125
), (
  946,
  '^alt\\.binaries\\.teevee$',
  '/^\\[[\\w. -]{8,}\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Ax.Men.S06E18.Risking.it.All.720p.WEB-DL.AAC.2.0.H.264-AKS74u]-[07/68] "Ax.Men.S06E18.Risking.it.All.720p.WEB-DL.AAC.2.0.H.264-AKS74u.r04" - 1.46 GB yEnc',
  130
), (
  947,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ As requested \\][-_\\s]{0,3}(?P<match0>[\\w. -]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//[ As requested ] Pawn.Stars.S07E15.Colt.To.The.Touch.720p.WEB-DL.AAC2.0.H.264.par2  yEnc',
  135
), (
  948,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>[\\w.-]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//Alaska.The.Last.Frontier.S02E15.HDTV.XviD-AFG.nzb  yEnc',
  140
), (
  949,
  '^alt\\.binaries\\.teevee$',
  '/^\\d+\\/\\d+[-_\\s]{0,3}(?P<match0>[\\w. -]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//09/13 The.Exes.S03E10.My.Ex-Boyfriends.Wedding.WEBRip.x264.AAC-NoGRP.vol007+05.PAR2  yEnc',
  145
), (
  950,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}(?P<match0>[\\w. -]+)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//[14/16] - Game.of.Thrones.S03E04.720p to 640x480 for size.vol11+08.PAR2  yEnc ::: //[22/39] LEGO.Batman.The.Movie.2013.1080p.WEB-DL.DD5.1.H.264-YFN.part21.rar  yEnc',
  150
), (
  951,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\]-\\[FULL\\]-\\[a\\.b\\.teevee\\]-\\[[\\w.-]+\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(tv) ncis.1021.hdtv-lol [1/8] - "ncis.1021.hdtv-lol.sfv" yEnc',
  155
), (
  952,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}[\\w. -]+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(05/29) - LoK214 - "The.Legend.of.Korra.S02E14.Light.in.the.Dark.1080p.WEB-DL.DD5.1.H.264-BS.part04.rar" - 1,01 GB - yEnc ::: //(34/45) -Continuum.S02E11.1080p.WEB-DL.AAC2.0.H264- "Continuum.S02E11.1080p.WEB-DL.AAC2.0.H264.part33.rar" - 1.76 GB - yEnc',
  160
), (
  953,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ [A-Za-z]+ \\] - (\\[\\d+\\/\\d+\\] - )?"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ TVPower ] - "Dexter.S07E10.720p.HDTV.x264-NLsubs.par2" yEnc ::: //[ TVPower ] - [010/101] - "Desperate.Housewives.S08Disc2.NLsubs.part009.rar" yEnc',
  165
), (
  954,
  '^alt\\.binaries\\.teevee$',
  '/^\\[.+?\\]-\\[(?P<match0>.+?)\\]-\\[\\d+\\/\\d+\\] ".+?" - \\d+([.,]\\d+ [kKmMgG])?[bB] - yEnc$/',
  1,
  '//[www.allyourbasearebelongtous.pw]-[WWE.Monday.Night.Raw.2013.07.22.HDTV.x264-IWStreams]-[03/69] "WWE.Monday.Night.Raw.2013.07.22.HDTV.x264-IWStreams.r00" - 1.58 GB - yEnc',
  170
), (
  955,
  '^alt\\.binaries\\.teevee$',
  '/^\\(www\\..+?\\) .+? <Sponsored.+?> - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(www.Thunder-News.org) >CD1< <Sponsored by Secretusenet> - "moovee-fastest.cda.par2" yEnc',
  175
), (
  956,
  '^alt\\.binaries\\.teevee$',
  '/\\.info .+?Powered by .+?\\.com "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") .+? \\d+\\/\\d+ \\(\\d+[,.]\\d+ [mMkKgG][bB]\\) .+? yEnc$/',
  1,
  '//<<<Pitbull>>> usenet-space-cowboys.info <<<Powered by https://secretusenet.com>< "S05E03 Pack die Badehose ein_usenet-space-cowbys.info.par2" >< 01/10 (411,16 MB) >< 3,48 kB > yEnc',
  180
), (
  957,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>[a-zA-Z0-9]+ .+? - S\\d+E\\d+ - .+?) \\[\\d+\\/\\d+\\] - ".+?\\..+?" yEnc$/',
  1,
  '//Newport Harbor The Real Orange County - S01E01 - A Black & White Affair [01/11] - "Newport Harbor The Real Orange County - S01E01 - A Black & White Affair.mkv" yEnc',
  185
), (
  958,
  '^alt\\.binaries\\.teevee$',
  '/^\\(www\\.Thunder-News\\.org\\) ?>(?P<match0>.+)< ?<Sponsored.+>[ _-]{0,3}(\\(\\d+\\/\\d+\\)|\\[\\d+\\/\\d+\\])?[ _-]{0,5}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//(www.Thunder-News.org) >Robin.Hood.S02E04.Der.Todesengel.German.WS.DVDRip.XviD-GTVG< <Sponsored by Secretusenet> -  "gtvg-rh.xvid.s02e04.jpg" yEnc',
  190
), (
  959,
  '^alt\\.binaries\\.teevee$',
  '/^\\.: (?P<match0>.+):. - .:www\\.thunder-news\\.org:. - .:sponsored by secretusenet\\.com:\\. - ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//.: Breaking.Bad.S04E10.Prost.German.WS.DVDRip.XviD-GTVG :. - .:www.thunder-news.org:. - .:sponsored by secretusenet.com:. - "gtvg-bb.xvid.s04e10_poster.jpg" yEnc',
  195
), (
  960,
  '^alt\\.binaries\\.teevee$',
  '/\\[FULL\\]-\\[.+.EFNet\\] - (?P<match0>.+)\\.rar$/',
  1,
  '//[FULL]-[#a.b.teevee@EFNet] - Celemony Melodyne Studio Edition 3.2 (MAC OSX).rar',
  200
), (
  961,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\) ("|#34;)(?P<match0>.+?)\\.rar("|#34;) - .+ - yEnc$/',
  1,
  '//(00912/17663) "Afghanistan The Great Game With Rory Stewart Part1 HDTV XviD-AFG.rar" - 344,98 GB - yEnc',
  205
), (
  962,
  '^alt\\.binaries\\.teevee$',
  '/^\\[[\\d#]+\\]-\\[.+?\\]-\\[.+?\\]-\\[ (?P<match0>.+?) \\][- ]\\[\\d+\\/\\d+\\][-_\\s]{0,3}("|#34;).+?/',
  1,
  '//[84491]-[FULL]-[#a.b.teevee@EFNet]-[ Tennis.Australian.Open.2012.Mens.1st.Round.Lleyton.Hewitt.vs.Cedrik-Marcel.Stebe.720p.HDTV.x264-LMAO ]-[04/97] - "tennis.australian.open.2012.mens.1st.round.lleyton.hewitt.vs.cedrik-marcel.stebe.720p.hdtv.x264-lmao.r01',
  210
), (
  963,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\(\\((Nimue|CowboyUp26-1208)\\)\\)\\)\\(\\(\\((?P<match0>.+)\\)\\)\\).+yEnc$/',
  1,
  '//(((Nimue)))(((Hawaii.Five.0.S02E12.Der.Mann.im.Bunker.GERMAN.DUBBED.HDTVRiP.XviD-SOF))) usenet-space-cowboys.info (((Powered by https://secretusenet.com)( #34;hawaii.five.0.s02e12.avi#34; )( 02/11 (762,35 MB) )( 349,83 MB ) yEnc',
  215
), (
  964,
  '^alt\\.binaries\\.teevee$',
  '/^__www\\.realmom\\.info__ - (?P<match0>.+)\\.(rar$|rar yEnc$)/',
  1,
  '//__www.realmom.info__ - 56 Downloader (XMLBar) - DOWNLOAD EVERY VIDEO!.rar',
  220
), (
  965,
  '^alt\\.binaries\\.teevee$',
  '/^\\((?P<match0>.+)\\)\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;) yEnc$/',
  1,
  '//(My.Name.Is.Earl.S03.DVDRip.XviD-ORPHEUS-NODLABS.PARS)[000/197] - "My.Name.Is.Earl.S03.DVDRip.XviD-ORPHEUS-NODLABS.PARS.nzb" yEnc',
  225
), (
  966,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>[a-zA-Z].+) - ("|#34;).+("|#34;)  \\d+[,.]\\d+ [mMkKgG][bB]ytes yEnc$/',
  1,
  '//Curb.Your.Enthusiasm.S08.DVDRiP.XviD.COMPLETE.REPACK-CLuE - "sample-curb.your.enthusiasm.s08.dvdrip.xvid.complete.repack-clue.avi.vol1+2.PAR2"  770.0 KBytes yEnc',
  230
), (
  967,
  '^alt\\.binaries\\.teevee$',
  '/^<<<(Thor(\\d+)?)>>><<<(?P<match0>.+)>>>usenet-space-cowboys.+<<<Powered.+>< ("|#34;).+("|#34;).+> yEnc$/i',
  1,
  '//<<<Thor>>><<<Chuck S04E20 Chuck gegen die Familie Volkoff German Dubbed DL 720p BluRay x264-idTV>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "idtv-chuck_s04e20_720p-sample.mkv" >< 03/61 (2,39 GB) >< 21,89 MB > yEnc',
  235
), (
  968,
  '^alt\\.binaries\\.teevee$',
  '/\\(Public\\).*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//(Public) (FULL) (a.b.teevee@EFNet) [04/13] (????) [00/27] - "DC.Guy.in.a.Ceelo.Green.Hood..S01E07.720p.HDTV.X264-DIMENSION.nzb" yEnc',
  240
), (
  969,
  '^alt\\.binaries\\.teevee$',
  '/^>ghost-of-usenet\\.org<< ?(?P<match0>.+) ?>>www.+>[ _-]{0,3}("|#34;)?.+("|#34;)? ?yEnc$/i',
  1,
  '//>ghost-of-usenet.org<< Suburgatory.S01E13.Sex.und.die.Vorstadt.GERMAN.DUBBED.DL.720p.WebHD.x264-TVP >>www.SSL-News.info> -  "tvp-suburgatory-s01e13-720p.nfo" yEnc',
  245
), (
  970,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>.+?) NoAds \\[\\d+\\/\\d+\\][-_\\s]{0,3}("|#34;).+?("|#34;) yEnc$/',
  1,
  '//Touch.S02E09.PROPER.1080p.WEB-DL.DD5.1.H.264-LFF NoAds [01/30] - "Touch.S02E09.PROPER.1080p.WEB-DL.DD5.1.H.264-LFF.nfo" yEnc',
  250
), (
  971,
  '^alt\\.binaries\\.teevee$',
  '/^<<<(?P<match0>Thor(\\d+)?)>>><<<(.+)>>>.+<<<.+>< ("|#34;).+("|#34;).+/',
  1,
  '//<<<Thor1602>>><<<NCIS.Los.Angeles.S03E02.Die.Cyberattacke.GERMAN.DUBBED.HDTVRiP.XviD-SOF>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "sof-ncis.los.angeles.s03e02.die.cyberattacke.(2010).hdtvdubbed.nfo" >< 02/28 (419,00 MB) >< 4,18',
  255
), (
  972,
  '^alt\\.binaries\\.teevee$',
  '/^AS REQ: "(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//AS REQ: "Game.of.Thrones.Season.3.480p.HDTV.H264.part52.rar" yEnc',
  260
), (
  973,
  '^alt\\.binaries\\.teevee$',
  '/^<<<(Hustensaft\\d+|Nimue|CowboyUp\\d+(-\\d+)?)>>><<<(?P<match0>.+)>>>.+<<<Powered by.+yEnc$/i',
  1,
  '//<<<Nimue>>><<<Die.Geschichte.der.Fliegerei.E05.Von.der.Luffahrt.zur.Raumfahrt.GERMAN.DOKU.FS.DVDRip.XviD-NGE>>> usenet-space-cowboys.info <<<Powered by https://secretusenet.com>< "nge-dgdf-e05-xvid.r04" >< 07/39 (1,51 GB) >< 47,68 MB > yEnc ::: //<<<CowboyUp26-0706>>><<<Spartacus.S02E09.Monster.GERMAN.DUBBED.720p.HDTV.x264-ZZGtv>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "zzgtv-spartacus-s02e09.r00" >< 04/43 (1,72 GB) >< 47,68 MB > yEnc ::: //<<<Nimue>>><<<Die.Geschichte.der.Fliegerei.E05.Von.der.Luffahrt.zur.Raumfahrt.GERMAN.DOKU.FS.DVDRip.XviD-NGE>>> usenet-space-cowboys.info <<<Powered by https://secretusenet.com>< "nge-dgdf-e05-xvid.r04" >< 07/39 (1,51 GB) >< 47,68 MB > yEnc ::: //<<<Hustensaft1402>>><<<CSI.Las.Vegas.S10E21.Schutz.und.Racheengel.German.DL.1080p.BluRay.x264-ETM>>>usenet-space-cowboys.info<<<Powered by https://secretusenet.com>< "etm-csi_las_vegas_s10e21-1080p.r12.vol000+01.par2" >< 39/49 (3,86 GB) >< 3,32 MB > yEnc',
  265
), (
  974,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ (?P<match0>[a-zA-Z].+) \\] - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[ Ugly.Betty.S02E13.DVDRip.XviD-SAiNTS ] - [01/39] - "Ugly.Betty.S02E13.DVDRip.XviD-SAiNTS.par2" yEnc',
  270
), (
  975,
  '^alt\\.binaries\\.teevee$',
  '/^\\((?P<match0>[\\w.,& \\()\\[\\]\\\'\\-]{8,}?)\\) \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//(Wainy Days.S02E07.DVDRip.x264-PiNK) [01/10] - "Wainy Days.S02E07.DVDRip.x264-PiNK.par2" yEnc',
  275
), (
  976,
  '^alt\\.binaries\\.teevee$',
  '/^\\[.+\\][-_\\s]{0,3}\\[ (?P<match0>.+) \\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}("|#34;).+("|#34;) yEnc$/',
  1,
  '//[Mercy.S01.720p.WEB-DL.DD5.1.h.264-LP-MMI]-[ Mercy.S01E18.Of Course I\'m Not.720p.WEB-DL.DD5.1.H.264-LP ]-[01/24] - "Mercy.S01E18.Of Course I\'m Not.720p.WEB-DL.DD5.1.H.264-LP.par2" yEnc',
  280
), (
  977,
  '^alt\\.binaries\\.teevee$',
  '/^(REPOST: )?\\[ (?P<match0>.+) \\] - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//REPOST: [ Th3.V@mpir3.Di@ri35.S05E02.HDTV.X264-DIMENSION ] - [31/33] - "Th3.V@mpir3.Di@ri35.S05E02.HDTV.X264-DIMENSION.vol050+051.par2" yEnc',
  285
), (
  978,
  '^alt\\.binaries\\.teevee$',
  '/^\\[#a\\.b\\.teevee\\] (?P<match0>.+) - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[#a.b.teevee] Covert.Affairs.S04E11.720p.WEB-DL.DD5.1.H.264-XEON - [11/40] - "Covert.Affairs.S04E11.720p.WEB-DL.DD5.1.H.264-XEON.part09.rar" yEnc',
  290
), (
  979,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>.+ )Confessions.+\\[\\d+ of \\d+\\] ".+\\((?P<match1>(1080|720).+[HS]D)\\).+" yEnc$/',
  1,
  '//Breaking Bad S6E03 Confessions enjoy! [7 of 46] "03 Confessions (1080p HD).mov.007" yEnc',
  295
), (
  980,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\] (?P<match0>.+) - ".+" yEnc$/',
  1,
  '//[51/62] Morrissey.25.Live.Concert.2013.BDRip.x264-N0TSC3N3 - "n0tsc3n3-morrissey.25.live.2013.bdrip.x264.rar" yEnc',
  300
), (
  981,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\)[ -]+Description[ -]+"(?P<match0>.+)\\.part\\d+\\.rar"[ -]+\\d+[.,]\\d+ [kKmMgG][bB][ -]+yEnc$/',
  1,
  '//(01/19) - Description - "How I Met Your Mother S05E24 - Doppelgangers.part01.rar" - 175,05 MB - yEnc',
  305
), (
  982,
  '^alt\\.binaries\\.teevee$',
  '/^\\(\\d+\\/\\d+\\) -(?P<match0>.+) - ".+" - \\d+[.,]\\d+ [MGK]B - yEnc$/',
  1,
  '//(23/23) -The.Mindy.Project.S02E09.720p.WEB-DL.DD5.1.H.264 - "The.Mindy.Project.S02E09.720p.WEB-DL.DD5.1.H.264.vol31+29.PAR2" - 768.86 MB - yEnc',
  310
), (
  983,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>.+[Ss]\\d+.+) - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//The Mindy Project s02e06 720p WEB-DL - [02/24] - "The Mindy Project S02E06 720p WEB-DL.part01.rar" yEnc',
  315
), (
  984,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ ?(?P<match0>.+(S\\d+|READ\\.NFO).+) ?\\] \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//[ Breaking.Bad.S05E16.BDRip.x264-DEMAND ] [30/30] - "breaking.bad.s05e16.bdrip.x264-demand.vol42+37.PAR2" yEnc',
  320
), (
  985,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>.+S\\d+.+)\\.par.+" yEnc$/',
  1,
  '//[32/44] - "Scandal.S03E07.Everything\'s.Coming.Up.Mellie.1080p.WEB-DL.DD5.1.H.264-ECI.part31.rar" yEnc',
  325
), (
  986,
  '^alt\\.binaries\\.teevee$',
  '/^<UHQ>< (?P<match0>.+) >- \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//<UHQ>< Welcome.to.the.Jungle.German.2003.DVD9.AC3.DL.1080p.BluRay.x264-MOViESTARS >- [93/95] - "moviestars-wttj.1080p.vol15+16.par2" yEnc',
  330
), (
  987,
  '^alt\\.binaries\\.teevee$',
  '/[Ss]\\d+[Ee]\\d+.+\\[\\d+ of \\d+\\] "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Sam & Cat S01E06 BabysitterWar [1 of 9] "Sam & Cat - S01E06 - BabysitterWar-ORIG.mp4" yEnc',
  335
), (
  988,
  '^alt\\.binaries\\.teevee$',
  '/[Ss]\\d+[Ee]\\d+.+- "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Sam & Cat - S01E10 - BabysittingCommercial - "Sam & Cat - S01E10 - BabysittingCommercial.m4v" yEnc',
  340
), (
  989,
  '^alt\\.binaries\\.teevee$',
  '/^\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[12/22] - "stargate_sg-1.6x12.unnatural_selection.ws_dvdrip_xvid-fov.avi"  yEnc',
  345
), (
  990,
  '^alt\\.binaries\\.teevee$',
  '/^For teevee - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\[\\d+\\/\\d+\\][ _-]{0,3}yEnc$/',
  1,
  '//For teevee - "Silent.Witness.S17E05.480p.HDTV.x264-mSD.mkv.sfv" [01/23] yEnc',
  350
), (
  991,
  '^alt\\.binaries\\.teevee$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Mad.Men.S06E11.HDTV.x264-2HD.par2" yEnc',
  355
), (
  992,
  '^alt\\.binaries\\.teevee$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\[\\d+\\/(\\d+\\])[ _-]{0,3}yEnc$/',
  1,
  '//"Marvels.Agents.of.S.H.I.E.L.D.S01E07.HDTV.XviD-FUM.avi.nfo" [09/16] yEnc',
  360
), (
  993,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>.+(1080|720).+)\\..+\\[\\d+\\/\\d+\\]".+" yEnc$/',
  1,
  '//Public Enemies (2009).720p.x264.English Subtitles.Dolby Digital 5.1.mkv [04/55]"Public Enemies sample.mkv" yEnc',
  365
), (
  994,
  '^alt\\.binaries\\.teevee$',
  '/^.+EnJoY\\!.+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//-=->EnJoY!<-=- (Day1/5) [01/17] - "The Machine that Changed the World S01E01 - Giant Brains - 1992 (480p,x264).nfo" yEnc ::: //-=>EnJoY!<-=->Req:The Animated Alias:Tribunal (2004)<=- [01/17] - "Da Vinci\'s Demons - S01E07 - The Hierophant (480p,x264).nfo" yEnc',
  370
), (
  995,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w. -]+\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The.Colbert.Report.2013.07.29.The.Lumineers.WEBRip.AAC2.0.H.264-DCK [01/11] - "The.Colbert.Report.2013.07.29.The.Lumineers.WEBRip.AAC2.0.H.264-DCK.mp4"  yEnc',
  375
), (
  996,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w. -]+[-_ ]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//the.lockerbie.bombing.720p.HDTV.x264-fatboy  - "the.lockerbie.bombing.720p.HDTV.x264-fatboy.nfo" - 829.12 MB - yEnc',
  380
), (
  997,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w. -]+[-_ ]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//The.Vampire.Diaries.S05E13.HDTV.X264"The.Vampire.Diaries.S05E13.HDTV.X264.vol40+36.PAR2" yEnc',
  385
), (
  998,
  '^alt\\.binaries\\.teevee$',
  '/^\\[[\\w.-]+\\][-_\\s]{0,3}.+[-_\\s]{0,3}\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Doomsday.Preppers.S03E11.720p.HDTV.x264-TTVa] - NOT ORIGINAL RARS, REPACKED. Sorry. - (18/35) "Doomsday.Preppers.S03E11.720p.HDTV.x264-TTVa.r16" - 1.31 GB - yEnc',
  390
), (
  999,
  '^alt\\.binaries\\.teevee$',
  '/^\\[[\\w. -]+\\][-_\\s]{0,3}.+[-_\\s]{0,3}[\\[\\(]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[CONAN] Conan.2013.12.12.Adam.Levine.WEBRiP.x264-CoCo [Missed Conan Episodes] - [22/32] - "conan.2013.12.12.adam.levine.webrip.x264-coco.r18" yEnc',
  395
), (
  1000,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w -]+[-_\\s]{0,3}[\\[\\(]\\d+ of \\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Dave Gorman Modern L',
  400
), (
  1001,
  '^alt\\.binaries\\.teevee$',
  '/^[\\[\\(]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/9) "Tronens_Spil_S03E08.par2" yEnc',
  405
), (
  1002,
  '^alt\\.binaries\\.teevee$',
  '/^\\d+\\/\\d+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//07/14  "Sister.Wives.S06E06.STV.XviD-kralcx.vol000+01.PAR2" yEnc',
  410
), (
  1003,
  '^alt\\.binaries\\.teevee$',
  '/^\\d+\\/\\d+[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//07/14  "Sister.Wives.S06E06.STV.XviD-kralcx.vol000+01.PAR2" yEnc',
  415
), (
  1004,
  '^alt\\.binaries\\.teevee$',
  '/^\\[ \\d+[.,]\\d+ [kKmMgG][bB] \\][-_\\s]{0,3}\\[ \\d+\\/\\d+ \\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ 749,75 MB ]-[ 01/20 ]-"choir.of.young.believers-this.is.for.the.white.in.your.eyes.live.2009.pdtv.x264.nfo" yEnc',
  420
), (
  1005,
  '^alt\\.binaries\\.teevee$',
  '/^<Enjoy> (?P<match0>[\\w. \\()-]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//<Enjoy> Hannibal.S01E04.mp4  yEnc',
  425
), (
  1006,
  '^alt\\.binaries\\.teevee$',
  '/^A5F[-_\\s]{0,3}\\[ (?P<match0>[\\w. \\()-]{8,}?\\b) \\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//A5F - [ NOVA.S40E19.Manhunt.Boston.Bombers.HDTV.x264-A5F ] - [01/43] - "NOVA.S40E19.Manhunt.Boston.Bombers.HDTV.x264-A5F.sfv" (not.teevee) yEnc',
  430
), (
  1007,
  '^alt\\.binaries\\.teevee$',
  '/^[\\w. \\()-]{8,}?\\b\\(\\d+\\/\\d+\\)[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Arrested.Development.S04E08.x264(04/164) "Arrested.Development.S04E08.WEBRiP.x264.part03.rar" - 197.21 MB - yEnc',
  435
), (
  1008,
  '^alt\\.binaries\\.teevee$',
  '/^(?P<match0>[a-zA-Z0-9 ]+) \\(\\d+\\/\\d+\\) - ?".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Divers (12/42) -"Juste.Pour.Rire.2013.Gala.JF.Mercier.FRENCH.720p.HDTV.x264-QuebecRules.part11.rar" yEnc ::: //Par le chapeau (06/43) - "8C7D59F472E03.part04.rar" yEnc',
  440
), (
  1009,
  '^alt\\.binaries\\.test$',
  '/^brothers-of-usenet.net\\)\\((?P<match0>.+)\\)\\)\\(\\d+\\/\\d+\\) ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//brothers-of-usenet.net)(Sons.of.Anarchy.S03E03.Fuersorge.GERMAN.DUBBED.720p.BLURAY.x264-ZZGtv))(07/31) #34;zzgtv-soa-s03e03.part05.rar#34; - 2,02 GB - yEnc',
  5
), (
  1010,
  '^alt\\.binaries\\.test$',
  '/^brothers-of-usenet.net\\((?P<match0>.+)\\)\\)\\(\\d+\\/\\d+\\) ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//brothers-of-usenet.net(Sons.of.Anarchy.S03E03.Fuersorge.GERMAN.DUBBED.720p.BLURAY.x264-ZZGtv))(07/31) #34;zzgtv-soa-s03e03.part05.rar#34; - 2,02 GB - yEnc ::: else',
  10
), (
  1011,
  '^alt\\.binaries\\.test$',
  '/^brothers-of-usenet.net><(?P<match0>.+)>>\\(\\d+\\/\\d+\\) ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//brothers-of-usenet.net><Sons.of.Anarchy.S03E02.Letzte.Oelung.GERMAN.DUBBED.720p.BLURAY.x264-ZZGtv>>(01/31) "zzgtv-soa-s03e02.nfo" - 1,98 GB - yEnc ::: else',
  15
), (
  1012,
  '^alt\\.binaries\\.town$',
  '/^[\\[(?P<match0>]\\d+\\/\\d+[\\])] - "([A-Z0-9].{2,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB]( -)? yEnc$/',
  1,
  '//[01/29] - "Bellflower.2011.German.AC3.BDRip.XviD-EPHEMERiD.par2" - 1,01 GB yEnc ::: //(3/9) - "Microsoft Frontpage 2003 - 4 Town-Up from Kraenk.rar.par2" - 181,98 MB - yEnc',
  5
), (
  1013,
  '^alt\\.binaries\\.town$',
  '/^"(?P<match0>.+)__www.realmom.info__.+" \\(\\d+\\/(\\d+\\)) \\d+[.,]\\d+ [kKmMgG][bB] yEnc$/',
  1,
  '//"Armored_Core_V_PS3-ANTiDOTE__www.realmom.info__.r00" (03/78) 3,32 GB yEnc',
  10
), (
  1014,
  '^alt\\.binaries\\.town\\.cine$',
  '/^[\\[(?P<match0>]\\d+\\/\\d+[\\])] - "([A-Z0-9].{2,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB]( -)? yEnc$/',
  1,
  '//[01/29] - "Bellflower.2011.German.AC3.BDRip.XviD-EPHEMERiD.par2" - 1,01 GB yEnc ::: //(3/9) - "Microsoft Frontpage 2003 - 4 Town-Up from Kraenk.rar.par2" - 181,98 MB - yEnc',
  5
), (
  1015,
  '^alt\\.binaries\\.town\\.xxx$',
  '/^[\\[(?P<match0>]\\d+\\/\\d+[\\])] - "([A-Z0-9].{2,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB]( -)? yEnc$/',
  1,
  '//[01/29] - "Bellflower.2011.German.AC3.BDRip.XviD-EPHEMERiD.par2" - 1,01 GB yEnc ::: //(3/9) - "Microsoft Frontpage 2003 - 4 Town-Up from Kraenk.rar.par2" - 181,98 MB - yEnc',
  5
), (
  1016,
  '^alt\\.binaries\\.tun$',
  '/^\\[ nEwZ\\[NZB\\]\\.iNFO - \\[ (?P<match0>[a-z0-9A-Z]{3,}=) \\] - File \\[\\d+\\/\\d+\\]: ".+?" yEnc$/',
  0,
  '// Leaving here to show that you can get the names from these. ::: // Useless since all these are passworded and',
  5
), (
  1017,
  '^alt\\.binaries\\.tun$',
  '/^\\[PRiVATE\\] (?P<match0>[a-z0-9A-Z]{4,}=*) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  0,
  '//[PRiVATE] VHdpc3R5cy5jb21fMTMuMDguMDkuQWlkZW4uQXNobGV5LkVsbGUuQWxleGFuZHJhLldoYXQuWW91ci5GdXR1cmUuSG9sZHMuWFhYLklNQUdFU0VULUZ1R0xp [06/10] - "89857cebff1efd7927ebddf30281b0e4.part2.rar" yEnc',
  10
), (
  1018,
  '^alt\\.binaries\\.tv$',
  '/^#?.+req (\\d+|x+)[ -]{1,}(?P<match0>.+)\\s*- ?\\[?\\d+\\/\\d+\\]?[ -]{1,3}"?.+"? yEnc$/i',
  1,
  '//#a.b.mm@efnet - req 86820 - World.Series.of.Poker.2009.E05.Celebrity.No-Limit.Holdem.Part.1.of.2.HDTV.XviD-FQM - [26/28] - "world.series.of.poker.2009.e05.hdtv.xvid-fqm.vol07+08.par2" yEnc ::: //#a.b.mm@efnet - req 60243 - Dawn.Porter.Mail.Order.Bride.PROPER.WS.PDTV.XviD-NOsegmenT - [01/28] - dawn.porter.mail.order.bride.proper.ws.pdtv.xvid-nosegment.nfo yEnc ::: //a.b.mm@EFNet - Req 58360 - Seinfeld.7x02.The_Postponement.DVDRip_XviD-FoV - [01/21] "seinfeld.7x02.the_postponement.dvdrip_xvid-fov.nfo" yEnc ::: //#a.b.mm@efnet - req xxxxx - Spin.City.S02E04.PROPER.DVDRiP.XViD-NODLABS - [07/28] - "spin.city.s02e04.proper.dvdrip.xvid.subs-nodlabs.vol0+1.par2" yEnc ::: //#a.b.mm@EFNeT - REQ 58160 - How.I.Met.Your.Mother.S03E19.DVDRip.XviD-ORPHEUS - 00/26 - how.i.met.your.mother.s03e19.dvdrip.xvid-orpheus.nzb yEnc ::: //#a.b.mm@EFNeT - REQ 81686 - Burn.Notice.S02E01.720p.HDTV.X264-2HD- 00/42 - Burn.Notice.S02E01.720p.HDTV.X264-2HD.nzb yEnc',
  5
), (
  1019,
  '^alt\\.binaries\\.tv$',
  '/^www\\.Bin-Req\\.net Presents: #\\d+[ -]{1,3}(?P<match0>.+) - \\[\\d+\\/\\d+\\].+\\(\\d+\\/\\d+\\) yEnc$/',
  1,
  '//www.Bin-Req.net Presents: #57629 - Man.vs.Wild.S05E03.Bears.Essentials.HDTV.XviD-GNARLY - [01/37] - man.vs.wild.s05e03.bears.essentials.hdtv.xvid-gnarly.sample.avi (1/27) yEnc',
  10
), (
  1020,
  '^alt\\.binaries\\.tv$',
  '/^\\((?P<match0>[a-zA-Z].+)\\) \\(\\d+\\/\\d+\\) - ".+" yEnc$/',
  1,
  '//(The.Legend.Of.Korra.S01E08.When.Extremes.Meet.720p.HDTV.h264) (00/41) - "The.Legend.Of.Korra.S01E08.When.Extremes.Meet.720p.HDTV.h264.nzb" yEnc',
  15
), (
  1021,
  '^alt\\.binaries\\.tv$',
  '/^(?P<match0>[A-Za-z0-9][a-zA-Z0-9.-]{6,})\\s+- ".+" yEnc$/',
  1,
  '//NCIS.S11E08.HDTV.x264-LOL - "NCIS.S11E08.HDTV.x264-LOL.part.par2" yEnc',
  20
), (
  1022,
  '^alt\\.binaries\\.tv$',
  '/^>ghost-of-usenet\\.org< ?(?P<match0>.+)>Sponsored.+< ?\\(\\d+\\/\\d+\\)[ _-]{0,3}("|#34;)?.+("|#34;)?[ _-]{0,3}yEnc$/i',
  1,
  '//>ghost-of-usenet.org<24.S07E01.German.SATRip.XviD-ITG>Sponsored by Astinews< (02/27) "itg-24-s07e01.nfo" yEnc',
  25
), (
  1023,
  '^alt\\.binaries\\.tv$',
  '/^(?P<match0>[\\w.\\\' -]{8,}) [\\[\\(]\\d+\\/\\d+[\\]\\)] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")([-_\\s]{0,3}[\\w.-]+)?[ _-]{0,3}yEncs$/',
  1,
  '//World\'s.Strongest.Man.2013.Episode1.Webrip [01/46] - "2013x01.nfo" yEnc',
  30
), (
  1024,
  '^alt\\.binaries\\.tv$',
  '/^Handyman Shows-(?P<match0>.+) - File \\d+ of \\d+ - yEnc$/',
  1,
  '//Handyman Shows-TOH-S32E10 - File 01 of 32 - yEnc',
  35
), (
  1025,
  '^alt\\.binaries\\.tv$',
  '/^Handyman Shows.+"(?P<match0>.+)\\.(par2|nfo|avi|nzb)" yEnc$/',
  1,
  '///^Handyman Shows.+"(.+)\.(par2|nfo|avi|nzb)" yEnc$/',
  40
), (
  1026,
  '^alt\\.binaries\\.tv$',
  '/^(?P<match0>(Kung Fu|Kids In The Hall) S\\d+\\E\\d+.+)\\.(par2|avi)\\s+yEnc$/',
  1,
  '//Kung Fu S02E15 A Dream WIthin a Dream.par2  yEnc ::: //Kids In The Hall S01E15.par2  yEnc',
  45
), (
  1027,
  '^alt\\.binaries\\.tv$',
  '/^(?P<match0>[a-zA-Z][\\w\\d\\.-]+) - \\[?\\d+\\/\\d+\\]? - "?.+\\.?(par2|nzb|nfo|avi)?"? yEnc$/',
  1,
  '//Project.Runway.Canada.S02E05.HDTV.DivX-JWo - 00/33 - project.runway.canada.205.nzb yEnc ::: //Yu-Gi-Oh.S03.DVDRip.AAC2.0.x264-DarkDream - [000/306] - "Yu-Gi-Oh.S03.DVDRip.AAC2.0.x264-DarkDream" yEnc',
  50
), (
  1028,
  '^alt\\.binaries\\.tv$',
  '/^(?P<match0>[a-zA-Z0-9.-]+) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Borgen.2x02.A.Bruxelles.Non.Ti.Sentono.Urlare.ITA.BDMux.x264-NovaRip [02/22] - "borgen.2x02.ita.bdmux.x264-novarip.par2" yEnc',
  55
), (
  1029,
  '^alt\\.binaries\\.tv$',
  '/^[\\[\\(]\\w+[\\]\\)][-_\\s]{0,3}\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(bf1) [03/31] - "The.Block.AU.Sky.High.S07E56.WS.PDTV.XviD.BF1.part01.sfv" yEnc ::: //[REPOST] - [01/33] - "Breaking.Bad.S05E16.Felina.1080p.WEB-DL.DD5.1.H.264-BS.par2" yEnc',
  60
), (
  1030,
  '^alt\\.binaries\\.tv$',
  '/^\\(\\?+\\)[-_\\s]{0,3}[\\(\\[]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>.+?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})Carrie.+"[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [01/11] - "The Carrie Diaries - S02E01 - HDTV x264-LOL.sfvCarrieDiariesS02E01" yEnc',
  65
), (
  1031,
  '^alt\\.binaries\\.tv$',
  '/^\\([\\w. ]+\\)[-_\\s]{0,3}(?P<match0>[\\w+. -]{8,})(\\[\\w+\\])?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//(noname 0307) NCIS.S11E14.HDTV.x264-LOL[rarbg].vol047+40.PAR2  yEnc',
  70
), (
  1032,
  '^alt\\.binaries\\.tv$',
  '/^\\[\\d+\\/\\d+\\][-_\\s]{0,3}(?P<match0>[\\w.\\() -]{8,}?\\b)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//[014/144] - The Bible (2013) - S1E01 - In the Beginning AVC 480p.vol31+27.PAR2  yEnc',
  75
), (
  1033,
  '^alt\\.binaries\\.tv$',
  '/^Saturday Morning Classic (?P<match0>[\\w.\\()-]{8,}?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar)?(\\d{1,3}\\.rev|\\.vol.+?|\\.[A-Za-z0-9]{2,4})[-_\\s]{0,3}yEnc$/',
  1,
  '//Saturday Morning Classic Return-to-the-Planet-of-the-Apes-S01E03 - Lagoon of Peril.avi.001  yEnc',
  80
), (
  1034,
  '^alt\\.binaries\\.tv$',
  '/^"[\\w ]+" yEnc[-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"NCIS S11E21" yEnc - [01/21] - "NCIS.S11E21.hdtv-lol.par2" yEnc',
  85
), (
  1035,
  '^alt\\.binaries\\.tv$',
  '/^(\\[\\d+\\]-)?\\[ ?(?P<match0>[a-zA-Z0-9.-]{6,}) ?\\](-\\[REAL\\])? ?- ?\\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//[ Best.Friends.Forever.S01E06.720p.WEB-DL.DD5.1.H.264-HWD ]-[01/25] - "Best.Friends.Forever.S01E06.720p.WEB-DL.DD5.1.H.264-HWD.nfo" yEnc',
  90
), (
  1036,
  '^alt\\.binaries\\.tv$',
  '/^"(?P<match0>[\\w. -]{8,})"[-_\\s]{0,3}yEnc$/',
  1,
  '//"Arrow S02E07" yEnc',
  95
), (
  1037,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>.+\\d+x\\d+.+)\\s*\\[\\d+\\/\\d+\\][ -]*".+" yEnc$/',
  1,
  '//Mr.Sunshine.1x10.Ben.E.Vivian.ITA.DVDMux.XviD-NovaRip [01/14] - "mr.sunshine.1x10.ita.dvdmux.xvid-novarip.nfo" yEnc',
  5
), (
  1038,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>.+S\\d+E\\d+.+)[ -]+\\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//Ancient.Aliens.S06E03.The.Anunnaki.Connection.HDTV.x264-SOL - [13/28] - "Ancient.Aliens.S06E03.The.Anunnaki.Connection.HDTV.x264-SOL.r10" yEnc',
  10
), (
  1039,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>[\\w\\s]+)\\[\\d+\\/\\d+\\] - ".+" [\\w\\s]+ yEnc$/',
  1,
  '//Moonlight Post Voor Dutch Release Crew [077/110] - "HLVRSM87654_S2D4.part76.rar" Wij Zoeken Nog Stafleden Meld Je Bij De Staf yEnc yEnc',
  15
), (
  1040,
  '^alt\\.binaries\\.tvseries$',
  '/\\[QWERTY\\] "(?P<match0>.+)\\.(mp4|mkv|ts)"( - \\d+[.,]\\d+ GB)?[ -]+yEnc$/',
  1,
  '//[QWERTY] "The.Real.Housewives.of.Atlanta.S06E02.HDTV.x264-CRiMSON.mp4" yEnc ::: //[QWERTY] "Air.Crash.Investigation.S10E06.HDTV.x264-TViLLAGE.mp4" - 6.76 GB - yEnc',
  20
), (
  1041,
  '^alt\\.binaries\\.tvseries$',
  '/\\(\\d+\\/\\d+\\)[ -]*"(BBC )?(?P<match0>.+)\\.(mp4|mkv|ts|nfo|par|par2)".+[GKM]B - yEnc$/',
  1,
  '//(01/32) - "Adam.Devines.House.Party.S01E04.HDTV.x264-YesTV.mp4" - 9.98 GB - yEnc ::: //(01/24) "BBC Dr Who An Unearthly Child S01E04 The Firemaker 1963.nfo" - 3.86 kB - 329.37 MB - yEnc',
  25
), (
  1042,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\.]+) \\(\\d+\\/\\d+\\) - Description - "(.+)".+yEnc$/',
  1,
  '//Touched.By.An.Angel.S09 (001/179) - Description - "Season 9.par2" - 8.10 GB - yEnc',
  30
), (
  1043,
  '^alt\\.binaries\\.tvseries$',
  '/^\\(\\d+\\/\\d+\\) - (?P<match0>.+) - "(.+)".+yEnc$/',
  1,
  '//(01/31) - Balika.Vadhu.s01e1379.2013.09.07.720p.web-dl.x264 - "Balika.Vadhu.s01e1379.2013.09.07.720p.web-dl.x264.nfo" - 340.72 MB - yEnc',
  35
), (
  1044,
  '^alt\\.binaries\\.tvseries$',
  '/\\Israeli.+\\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(mp4|mkv|ts|vol.+|)" yEnc$/',
  1,
  '//Israeli AutoRarPar0002  [54/55] - "Hameofefim.Hanoazim.E02.PDTV.XviD-Sweet-Star.vol063+64.par2" yEnc',
  40
), (
  1045,
  '^alt\\.binaries\\.tvseries$',
  '/\\Israeli.+\\[\\d+\\/\\d+\\] - "(?P<match0>.+)\\.(mp4|mkv|ts|par.+)" yEnc$/',
  1,
  '//Israeli AutoRarPar0021  [07/44] - "Hameofefim.Hanoazim.E23.PDTV.XviD-Sweet-Star.part06.rar" yEnc',
  45
), (
  1046,
  '^alt\\.binaries\\.tvseries$',
  '/AutoRarPar\\d+\\s+\\[\\d+\\/\\d+\\] - "(?P<match0>.+S\\d+\\s*E\\d+.+)\\.[vol|part].+" yEnc$/',
  1,
  '//AutoRarPar0005  [44/45] - "Prisoners of War (Hatufim) S01 E05 - Xvid - Hardcoded Subs - Sno.vol063+64.par2" yEnc',
  50
), (
  1047,
  '^alt\\.binaries\\.tvseries$',
  '/\\[ .+S\\d+.+ \\] \\w+\\.\\w+ \\(\\d+\\/\\d+\\) - "(?P<match0>.+)\\.(mp4|mkv|ts|rar)" yEnc$/',
  1,
  '//[ Skins UK - S02 - Season 2 DVDRip ] AVI.XviD (06/20) - "Skins.UK.S02E04.DVDRip.XviD-Affinity.rar" yEnc',
  55
), (
  1048,
  '^alt\\.binaries\\.tvseries$',
  '/^\\[ .+[sS]\\d+ \\[ \\w+ \\] - \\[ \\w+ \\] - \\[ \\w+ \\d+ \\] - \\[ "(?P<match0>.+[sS]\\d+[eE]\\d+).+".+yEnc$/',
  1,
  '//[ gtvg-mm.xvid.s03 [ PWP ] - [ TV ] - [ DBS 0883 ] - [ "gtvg-mm.xvid.s03e11.r09" ] 7,32 GB yEnc',
  60
), (
  1049,
  '^alt\\.binaries\\.tvseries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")( - \\d+([.,]\\d+ [kKmMgG])?[bB])? - \\d+([.,]\\d+ [kKmMgG])?[bB] - yEnc$/',
  1,
  '//"Forbrydelsen.II.S01E03.2009.DVDRip.MULTi.DD5.1.x264.nzb" - 213.54 kB - yEnc ::: //"Futurama S07E01 The Bots And The Bees.vol26+23.PAR2" - 8.49 MB - 193.51 MB - yEnc',
  65
), (
  1050,
  '^alt\\.binaries\\.tvseries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\[\\d+\\/(\\d+\\]) - yEnc$/',
  1,
  '//"Rijdende.Rechter.-.19x01.-.Huisbiggen.1080p.MKV-BNABOYZ.part38.rar" - [40/56] - yEnc',
  70
), (
  1051,
  '^alt\\.binaries\\.tvseries$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/',
  1,
  '//(003/104) "blackcave1001.part002.rar" - 4,83 GB - yEnc',
  75
), (
  1052,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\.]+) \\(\\d+(\\/\\d+\\)) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//Chuck - Season2 (015/164) - "2x04.par2" yEnc',
  80
), (
  1053,
  '^alt\\.binaries\\.tvseries$',
  '/^[a-zA-Z0-9 -_\\.]+ \\[\\d+\\/(\\d+\\]) - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//X-Men Evolution - 2000 -  [01/20] - "X-Men Evolution - 3x03 - Mainstream.par2" yEnc',
  85
), (
  1054,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\.]+) (RETRY)?[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") \\d+(\\/\\d+)( {0,2}yEnc)?$/',
  1,
  '//\'X-Files\' Season 1 XviD RETRY  "Files101.par2" 004/387 ::: //\'X-Files\' Season 5 XviD "Files502.par2" 018/321 yEnc ::: //\'X-Files\' Season 2 XviD  "Files223.part2.rar" 356/401  yEnc',
  90
), (
  1055,
  '^alt\\.binaries\\.tvseries$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"the.tudors.s03e03.nfo" yEnc',
  95
), (
  1056,
  '^alt\\.binaries\\.tvseries$',
  '/^\\(\\d+\\/(\\d+\\)) "((BBC|ITV) )?(?P<match0>.+?)(\\.part\\d+)?(\\.(par2|(vol.+?))"|\\.[a-z0-9]{3}"|") - \\d.+? - (\\d.+? -)? yEnc$/',
  1,
  '//(08/25) "Wild Russia 5 of 6 The Secret Forest 2009.part06.rar" - 47.68 MB - 771.18 MB - yEnc ::: //(01/24) "ITV Wild Britain With Ray Mears 1 of 6 Deciduous Forest 2011.nfo" - 4.34 kB - 770.97 MB - yEnc ::: //(24/24) "BBC Great British Garden Revival 03 of 10 Cottage Gardens And House Plants 2013.vol27+22.PAR2" - 48.39 MB - 808.88 MB - yEnc',
  100
), (
  1057,
  '^alt\\.binaries\\.tvseries$',
  '/^(.+?)[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//[ Angel.S01.NTSC.DVDRip.DD2.0.x264.CRF-OtakuLoser ]-[003/550] - "Angel.S01E01.City.Of.NTSC.DVDRip.DD2.0.CRF.x264-OtakuLoser.part01.rar" yEnc',
  105
), (
  1058,
  '^alt\\.binaries\\.tvseries$',
  '/^(?P<match0>[a-zA-Z0-9 -_\\.]+) - \\[\\d+(\\/\\d+\\]) - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//FIRST.WAVE.NTSC.DVD.DD2.0 - [121/512] - "FIRST_WAVE_SEASON_1_DVD2.r26" - 44,33 GB - yEnc',
  110
), (
  1059,
  '^alt\\.binaries\\.tvseries$',
  '/^\\(\\d+(\\/\\d+\\)) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(03/19) "Damages S04E02 FR.avi" - 5,49 GB yEnc',
  115
), (
  1060,
  '^alt\\.binaries\\.tv\\.deutsch$',
  '/^>ghost-of-usenet\\.org<< ?(?P<match0>.+) ?>>www.+>[ _-]{0,3}("|#34;)?.+("|#34;)? ?yEnc$/i',
  1,
  '//>ghost-of-usenet.org<< Roseanne.S03E02.Die.lieben.Verwandten.German.1990.FS.DVDRip.XviD-GM4FS >>www.SSL-News.info> - (01/32) - "gm4fs-roseannedxvid-s03e02-sample.par2" yEnc',
  5
), (
  1061,
  '^alt\\.binaries\\.u4e$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"Angry Birds USA PSN PSP-NRP.exe" yEnc',
  5
), (
  1062,
  '^alt\\.binaries\\.u-4all$',
  '/^(?P<match0>.+)\\[.+?usenet-4all\\.info\\][ _-]{0,3}\\[.+\\][ _-]{0,3}\\(\\d+\\/\\d+\\) ("|#34;).+("|#34;) yEnc$/',
  1,
  '//Breakin.1984.German.DL.720p.HDTV.x264-msd [ich for usenet-4all.info] [ich25729] [powered by ssl-news.info] (01/99) "ich25729.par2" yEnc',
  5
), (
  1063,
  '^alt\\.binaries\\.u-4all$',
  '/\\[ usenet-4all\\.info - powered by ssl\\.news -\\][-_\\s]{0,3}\\[\\d+([.,]\\d+)? [kKmMgG][bB]\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//-4y (PW)   [ usenet-4all.info - powered by ssl.news -] [1,44 GB] [08/14] "71cc4edc6R08eb7.vol00+01.PAR2" yEnc',
  10
), (
  1064,
  '^alt\\.binaries\\.u-4all$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(????) [02838/75096] - "3D  Browser v5.51.rar" yEnc',
  15
), (
  1065,
  '^alt\\.binaries\\.u-4all$',
  '/^\\(\\?{4}\\) \\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/ui',
  1,
  '//(????) [02838/75096] - "3D  Browser v5.51.rar" yEnc',
  20
), (
  1066,
  '^alt\\.binaries\\.u-4all$',
  '/^[\\[\\(]\\d+\\/\\d+[\\]\\)][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(06/10) "Christopher Paolini - Eragon 01-04.part5.rar" - 7,84 GB - yEnc ::: //[09/22] - "H56A2_20131018_038.part08.rar" - 858,20 MB yEnc',
  25
), (
  1067,
  '^alt\\.binaries\\.u-4all$',
  '/^\\(\\d+\\/\\d+\\)[-_\\s]{0,3}Description[-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(07/27) - Description - " Court Order 890879887870337.vol015+016.par2" - 1.80 GB - yEnc',
  30
), (
  1068,
  '^alt\\.binaries\\.u-4all$',
  '/^"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//"18X Girls  Mirabella  Gets Her Tight Ass Hole Plowed Hard.rar" yEnc',
  35
), (
  1069,
  '^alt\\.binaries\\.usenetrevolution$',
  '/^\\[\\d+\\/\\d+\\][ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB].+secretusenet\\.com.+yEnc$/i',
  1,
  '//[3/3] - "Berwein Saskia - Leitner und Grohmann 02 - Herzenskaelte.epub.vol0+1.par2" - 860,05 kB {UR - powered by secretusenet.com} yEnc',
  5
), (
  1070,
  '^alt\\.binaries\\.usenetrevolution$',
  '/^.secretusenet\\.com[ _-]{0,3}\\[\\d+\\/\\d+\\][ _-]{0,3}"(?P<match0>[\\w.,&! \\()\\[\\]\\\'-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}yEnc$/i',
  1,
  '//- UR-powered by secretusenet.com - [3/3] - "Berg Ellen - Zur Hoelle mit Seniorentellern!.vol0+1.par2" - 1,24 MB yEnc',
  10
), (
  1071,
  '^alt\\.binaries\\.usenetrevolution$',
  '/^"(?P<match0>[\\w.,&! \\()\\[\\]\\\'-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[ _-]{0,3}\\(\\d+\\/\\d+\\)[ _-]{0,3}[-_\\s]{0,3}\\d+[.,]\\d+ [kKmMgG][bB].+secretusenet\\.com.+yEnc$/i',
  1,
  '//- "Alcohol 120 Retail v2.0.2.5629German-UR.info.rar" - (2/3) -  13,35 MB -...:::UR.info-SecretUsenet.com:::... yEnc',
  15
), (
  1072,
  '^alt\\.binaries\\.warez$',
  '/^(?P<match0>[a-zA-Z].+) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//BabysitterMovies.13.03.11.Babysitter.Jocelyn.Pink.XXX.HR.WMV-VSEX - [7/7] - "BabysitterMovies.13.03.11.Babysitter.Jocelyn.Pink.XXX.HR.WMV-VSEX.rar.vol15+5.par2" yEnc',
  5
), (
  1073,
  '^alt\\.binaries\\.warez$',
  '/^(?P<match0>[a-z].+) - \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//ATKExotics.13.01.06.Janea.Toys.XXX.1080p.x264-SEXORS - [1/7] - #34;ATKExotics.13.01.06.Janea.Toys.XXX.1080p.x264-SEXORS.rar#34; yEnc',
  10
), (
  1074,
  '^alt\\.binaries\\.warez$',
  '/.*[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//-Panzer.Command.Kharkov-SKIDROW - [1/7] - "-Panzer.Command.Kharkov-SKIDROW.rar" yEnc ::: //-AssMasterpiece.12.07.09.Alexis.Monroe.XXX.1080p.x264-SEXORS - [1/7] - #34;-AssMasterpiece.12.07.09.Alexis.Monroe.XXX.1080p.x264-SEXORS.rar#34; yEnc',
  15
), (
  1075,
  '^alt\\.binaries\\.warez$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}")(.+?)yEnc$/',
  1,
  '//- "JH2U0H5FIK8TO7YK3Q.part12.rar" yEnc',
  20
), (
  1076,
  '^alt\\.binaries\\.warez$',
  '/^\\( (?P<match0>.+?) \\) - yEnc$/',
  1,
  '//( XS Video Converter Ultimate 7.7.0 Build 20121226 ) - yEnc',
  25
), (
  1077,
  '^alt\\.binaries\\.warez\\.0-day$',
  '/^(?P<match0>[a-zA-Z].+) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//BabysitterMovies.13.03.11.Babysitter.Jocelyn.Pink.XXX.HR.WMV-VSEX - [7/7] - "BabysitterMovies.13.03.11.Babysitter.Jocelyn.Pink.XXX.HR.WMV-VSEX.rar.vol15+5.par2" yEnc',
  5
), (
  1078,
  '^alt\\.binaries\\.warez\\.0-day$',
  '/^(?P<match0>[a-z].+) - \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//ATKExotics.13.01.06.Janea.Toys.XXX.1080p.x264-SEXORS - [1/7] - #34;ATKExotics.13.01.06.Janea.Toys.XXX.1080p.x264-SEXORS.rar#34; yEnc',
  10
), (
  1079,
  '^alt\\.binaries\\.warez\\.0-day$',
  '/.*[\\(\\[]\\d+\\/\\d+[\\)\\]][-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4})("|#34;)(.+?)yEnc$/',
  1,
  '//-Panzer.Command.Kharkov-SKIDROW - [1/7] - "-Panzer.Command.Kharkov-SKIDROW.rar" yEnc ::: //-AssMasterpiece.12.07.09.Alexis.Monroe.XXX.1080p.x264-SEXORS - [1/7] - #34;-AssMasterpiece.12.07.09.Alexis.Monroe.XXX.1080p.x264-SEXORS.rar#34; yEnc',
  15
), (
  1080,
  '^alt\\.binaries\\.warez\\.0-day$',
  '/.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}")(.+?)yEnc$/',
  1,
  '//- "JH2U0H5FIK8TO7YK3Q.part12.rar" yEnc',
  20
), (
  1081,
  '^alt\\.binaries\\.warez\\.0-day$',
  '/^\\( (?P<match0>.+?) \\) - yEnc$/',
  1,
  '//( XS Video Converter Ultimate 7.7.0 Build 20121226 ) - yEnc',
  25
), (
  1082,
  '^alt\\.binaries\\.wii$',
  '/^<kere\\.ws.+>(?P<match0>.+)>\\(\\d+\\/\\d+\\) ".+" yEnc$/',
  1,
  '//<kere.ws/illuminatenboard.org>Guitar.Hero.5-Vampire.Weekend.The.Kids.Dont.Stand.a.Chance.PAL.DLC.Wii-OneUp>(01/13) "1u-gh5-the-kids-dont-stand-a-chance-pal.nfo" yEnc',
  5
), (
  1083,
  '^alt\\.binaries\\.wii$',
  '/^\\((?P<match0>[a-zA-Z].+)\\) \\[\\d+\\/\\d+\\] - ".+".+yEnc$/',
  1,
  '//(Alice_In_Wonderland_PAL_Wii-BAHAMUT) [000/101] - "b-alicew.nzb" (1/4yEnc',
  10
), (
  1084,
  '^alt\\.binaries\\.wii$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>.+)\\.(rar|par2|avi|URL|jpg)".+yEnc$/',
  1,
  '//(13/24) "amateur.-.Deutsches.Girl.-.Erster.User.Anal.Fick.rar" - 2,40 GB -md-hobbys.com yEnc',
  15
), (
  1085,
  '^alt\\.binaries\\.wii$',
  '/^\\[\\d+\\/\\d+\\] - ".+" - (?P<match0>[A-z0-9_-]+).+yEnc$/',
  1,
  '//[000/104] - "Story_Hour_Adventures_USA_WII-ZRY.nzb" - Story_Hour_Adventures_USA_WII-ZRY (1/9yEnc',
  20
), (
  1086,
  '^alt\\.binaries\\.wii$',
  '/^www\\.theplace4you\\.org.*"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}").+?yEnc$/',
  1,
  '//www.theplace4you.org - [066/104] - "1234 Star.Wars.The.Force.Unleashed.2.PAL.Wii.part065.rar" yEnc',
  25
), (
  1087,
  '^alt\\.binaries\\.wii$',
  '/^<<www\\.illuminatenboard\\.org>>(?P<match0>.+)>\\(\\d+\\/\\d+\\) ".+" yEnc$/',
  1,
  '//<<www.illuminatenboard.org>>Super_Monkey_Ball_PAL_MULTi5_NGC_WORKING_iNTERNAL_For_Wii-SUNSHiNE>(01/35) "shine-gmbp.nfo" yEnc',
  30
), (
  1088,
  '^alt\\.binaries\\.wii$',
  '/^\\(-=\\s+R-KNORLOADING POST\\s+=-: (?P<match0>.+) FTD-NR: \\d+\\s+=-.+-= \\) \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//(-=  R-KNORLOADING POST  =-: Super Paper MarioPAL FTD-NR: 874068   =-   R-KNORLOADING   -= ) [01/19] - "R-KNORLOADING POST super paper mario PAL.sfv" yEnc',
  35
), (
  1089,
  '^alt\\.binaries\\.wii$',
  '/^.+"(?P<match0>.+)\\.nfo" - \\(\\d+\\/\\d+\\) yEnc$/',
  1,
  '//With Wii-Studio you can convert movie and music files easily so you can play it on Wii (2009) - "S.A.D.-Wii.Studio.v1.0.7.1127-incl.Patch.nfo" - (01/18) yEnc',
  40
), (
  1090,
  '^alt\\.binaries\\.wii\\.gamez$',
  '/^(?P<match0>\\w.+) - \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//Wicked_Monster_Blast_USA_WII-ZRY - [1/105] - "Wicked_Monster_Blast_USA_WII-ZRY.par2" yEnc',
  5
), (
  1091,
  '^alt\\.binaries\\.worms$',
  '/^(\\[U4A]) (?P<match0>.+?)\\[\\d+(\\/\\d+\\]) - ".+?" yEnc$/',
  1,
  '//[U4A] 2 Dudes and a Dream 2009 BRRip XvidHD 720p-NPW[01/36] - "2 Dudes and a Dream 2009 BRRip XvidHD 720p-NPW-Sample.avi" yEnc',
  5
), (
  1092,
  '^alt\\.binaries\\.worms$',
  '/^\\(\\d+\\/(\\d+\\)) ("|#34;)(?P<match0>.+)(\\.[vol|part].+)?\\.(par2|nfo|rar|nzb)("|#34;) - \\d+[.,]\\d+ [kKmMgG][bB] - yEnc$/i',
  1,
  '//(38/57) "Fright.Night.2.New.Blood.2013.UNRATED.BluRay.810p.DTS.x264-PRoDJi.part26.rar" - 4,81 GB - yEnc ::: //(14/20) "Jack.the.Giant.Slayer.2013.AC3.192Kbps.23fps.2ch.TR.Audio.BluRay-Demuxed.by.par2" - 173,15 MB - yEnc',
  10
), (
  1093,
  '^alt\\.binaries\\.worms$',
  '/^\\(\\d+\\/\\d+\\) - Description - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(01/40) - Description - "Cloudy.with.a.Chance.of.Meatballs.2009.AC3.23Fps.640Kbps.6Ch.TR.Audio.BD-Demuxed.by.DWA.nfo" - 454,60 MB - yEnc',
  15
), (
  1094,
  '^alt\\.binaries\\.worms$',
  '/^\\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(151/161) "Troy.2004.Directors.Cut.1080p.BluRay.x264.DTS.vol064+21.PAR2.bad" - 18,64 GB - yEnc',
  20
), (
  1095,
  '^alt\\.binaries\\.worms$',
  '/^(\\[(Request|Repost)\\])?\\[Macguffin Proudly Presents\\][-_\\s]{0,3}\\(\\d+\\/\\d+\\)[-_\\s]{0,3}(?P<match0>.+?) MacGuffin[-_\\s]{0,3}".+([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[- ]{0,4}\\d+[.,]\\d+ [kKmMgG][bB][-_\\s]{0,3}yEnc$/i',
  1,
  '//[Macguffin Proudly Presents] (33/75) -Reservoir Dogs 1992 720p BDRip AC3 x264 MacGuffin - "macguffin-redog720p.r30"  - 3.06 GB - yEnc ::: //[Request][MacGuffin Proudly Presents](056/229) - LOTR The Trilogy EXTENDED REPOST 720p BRRip AC3 x264 MacGuffin - "macguffin-tfotr720p.r53" - 18.54 GB - yEnc ::: //[REPOST][MacGuffin Proudly Presents](44/54) - Flight 2012 720p BRRip REPOST AC3 x264 MacGuffin - "macguffin-flit720p.rar" - 4.09 GB - yEnc',
  25
), (
  1096,
  '^alt\\.binaries\\.x$',
  '/^!!www\\.usenet4all\\.eu!![ _-]{0,3}(?P<match0>.+)\\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+("|#34;) yEnc$/i',
  1,
  '//!!www.usenet4all.eu!! - Acceptance.2009.COMPLETE.NTSC.DVDR-D0PE[001/100] - #34;d0pe-a.nfo#34; yEnc',
  5
), (
  1097,
  '^alt\\.binaries\\.x264$',
  '/^"(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+?"|\\.[A-Za-z0-9]{2,4}") \\(\\d+\\/(\\d+\\)) yEnc$/',
  1,
  '//"Batman-8 TDKR-Pittis AVCHD-ADD.English.dtsHDma.part013.rar" (042/197) yEnc',
  5
), (
  1098,
  '^alt\\.binaries\\.x264$',
  '/^\\(\\d+\\/(\\d+\\)) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB]( -)? yEnc$/',
  1,
  '//(001/108) "Wizards.of.Waverly.Place.720p.S04E01.by.sugarr.par2" - 5,15 GB - yEnc',
  10
), (
  1099,
  '^alt\\.binaries\\.x264$',
  '/^\\[NZBsRus\\.com.+\\]-\\[(?P<match0>.+)\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\] - ".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[NZBsRus.com]-[Arthur.Christmas.2011.BDRip.AC3-5.1.x264-AKS74u] [18/74] - "ac-bdrip-aks74u.r15" yEnc',
  15
), (
  1100,
  '^alt\\.binaries\\.x264$',
  '/^\\[.+\\]-\\[\\d+\\/\\d+\\] - "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[Entourage.S05.720p.WEB-DL.DD5.1.H.264-BTN]-[167/193] - "Entourage.S05E11.Playn.With.Fire.720p.WEB-DL.DD5.1.h.264-BTN.part05.rar" yEnc',
  20
), (
  1101,
  '^alt\\.binaries\\.x264$',
  '/^CTW\\d+ \\| (?P<match0>.+)  yEnc$/',
  1,
  '//CTW487678426 | Get.the.Gringo.1080p.BluRay.x264.DTS-HDChina.r43-CTW  yEnc',
  25
), (
  1102,
  '^alt\\.binaries\\.x264$',
  '/^.+?\\[\\d+\\/(\\d+\\][-_\\s]{0,3}.+?)[-_\\s]{0,3}("|#34;)(?P<match0>.+?)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}("|#34;))[-_\\s]{0,3}yEnc$/',
  1,
  '//(????) [0/8] - Crionics Post - Alice In Chains - Dirt REPOST"Alice In Chains - Dirt.nzb" yEnc',
  30
), (
  1103,
  '^alt\\.binaries\\.x264$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\][-_\\s]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [001/153] - "C4 House Party Horse Meat Disco Set 6.nfo" C4 House Party Horse Meat Disco Set 6 yEnc',
  35
), (
  1104,
  '^alt\\.binaries\\.x264$',
  '/^\\(\\?+\\) \\[\\d+\\/\\d+\\] - (?P<match0>.+)[-_\\s]{0,3}".+?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|").+yEnc$/',
  1,
  '//(????) [19/22] - C.K.N. Demo 85  "19-rotten system.mp3" yEnc',
  40
), (
  1105,
  '^alt\\.binaries\\.xbox360$',
  '/^a\\.b\\.g\\.xbox360 presents \\[ReqID: \\d+\\]\\[(?P<match0>.+)\\] \\[\\d+\\/\\d+\\] - ".+" yEnc$/',
  1,
  '//a.b.g.xbox360 presents [ReqID: 8747][Lego_Star_Wars_The_Complete_Saga_USA_XBOX360-PROTOCOL] [01/80] - "ptc-swcs.nfo" yEnc',
  5
), (
  1106,
  '^dk\\.binaer\\.tv$',
  '/^(?P<match0>[a-zA-Z0-9].+?) - \\[\\d+\\/\\d+\\] - ".+?" yEnc$/',
  1,
  '//Store.Boligdroemme.S02E06.DANiS H.HDTV.x264-TVBYEN - [01/28] - "store.boligdroemme.s02e06.danis h.hdtv.x264-tvbyen.nfo" yEnc',
  5
), (
  1107,
  '^alt\\.binaries\\.town$',
  '/^<TOWN>.+?town\\.ag.+?(www\\..+?|News)\\.[iI]nfo.+? \\[\\d+\\/\\d+\\]( -)? "(?P<match0>.+?)(-sample)?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[.,]\\d+ [kKmMgG][bB]M? yEnc$/',
  1,
  '//<TOWN><www.town.ag > <download all our files with>>> www.ssl-news.info <<< > [05/87] - "Deep.Black.Ass.5.XXX.1080p.WEBRip.x264-TBP.part03.rar" - 7,87 GB yEnc ::: //<TOWN><www.town.ag > <partner of www.ssl-news.info > [02/24] - "Dragons.Den.UK.S11E02.HDTV.x264-ANGELiC.nfo" - 288,96 MB yEnc ::: //<TOWN><www.town.ag > <SSL - News.Info> [6/6] - "TTT.Magazine.2013.08.vol0+1.par2" - 33,47 MB yEnc',
  5
), (
  1108,
  '^alt\\.binaries\\.town$',
  '/^\\[\\s*TOWN\\s*\\][-_\\s]{0,3}\\[\\s*www\\.town\\.ag\\s*\\][-_\\s]{0,3}\\[\\s*partner of www\\.ssl-news\\.info\\s*\\][-_\\s]{0,3}\\[\\s* .*\\s*\\][-_\\s]{0,3}\\[\\d+\\/\\d+\\][-_\\s]{0,4}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ]-[ 1080p ] - [320/352] - "Gq7YGEWLy8wAA2NhbZx5LukEa.vol000+5.par2" - 17.09 GB yEnc',
  10
), (
  1109,
  '^alt\\.binaries\\.town$',
  '/^<TOWN>.+?town\\.ag.+?(www\\..+?|News)\\.[iI]nfo.+? \\[\\d+\\/\\d+\\]( -)? "(?P<match0>.+?)(-sample)?([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//<TOWN><www.town.ag > <download all our files with>>> www.ssl-news.info <<< >IP Scanner Pro 3.21-Sebaro - [1/3] - "IP Scanner Pro 3.21-Sebaro.rar" yEnc',
  15
), (
  1110,
  '^alt\\.binaries\\.town$',
  '/^\\(\\d+\\/\\d+\\) -<TOWN><www\\.town\\.ag >\\s+<partner.+> - ("|#34;)(?P<match0>[\\w. \\()-]{8,}?\\b)(\\.par2|-\\.part\\d+\\.rar|\\.nfo)("|#34;) - \\d+[.,]\\d+ [kKmMgG][bB]( -)? yEnc$/',
  1,
  '//(05/10) -<TOWN><www.town.ag > <partner of www.ssl-news.info > - "D.Olivier.Wer Boeses.saet-gsx-.part4.rar" - 741,51 kB - yEnc',
  20
), (
  1111,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ partner of www\\.ssl-news\\.info \\][ _-]{0,3}\\[ .* \\] \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;)(?P<match0>.+)((\\.part\\d+\\.rar)|(\\.vol\\d+\\+\\d+\\.par2))("|#34;)[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ]-[ MOVIE ] [14/19] - "Night.Vision.2011.DVDRip.x264-IGUANA.part12.rar" - 660,80 MB yEnc',
  25
), (
  1112,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ partner of www\\.ssl-news\\.info \\][ _-]{0,3}\\[ .* \\] \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;)(?P<match0>.+)\\.(par2|rar|nfo|nzb)("|#34;)[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ]-[ MOVIE ] [01/84] - "The.Butterfly.Effect.2.2006.1080p.BluRay.x264-LCHD.par2" - 7,49 GB yEnc',
  30
), (
  1113,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ partner of www\\.ssl-news\\.info \\][ _-]{0,3}(\\[ TV \\] )?\\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;)(?P<match0>.+)((\\.part\\d+\\.rar)|(\\.vol\\d+\\+\\d+\\.par2)|\\.nfo|\\.vol\\d+\\+\\.par2)("|#34;)[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ] [22/22] - "Arsenio.Hall.2013.09.11.Magic.Johnson.720p.HDTV.x264-2HD.vol31+11.par2" - 1,45 GB yEnc',
  35
), (
  1114,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ partner of www\\.ssl-news\\.info \\][ _-]{0,3}(\\[ TV \\] )?\\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;)(?P<match0>.+)\\.par2("|#34;)[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/i',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ partner of www.ssl-news.info ] [01/28] - "Arsenio.Hall.2013.09.18.Dr.Phil.McGraw.HDTV.x264-2HD.par2" - 352,58 MB yEnc',
  40
), (
  1115,
  '^alt\\.binaries\\.town$',
  '/^\\d+\\.-\\.(?P<match0>.+) <TOWN><www\\.town\\.ag >\\s+<partner .+>\\s+<.+>\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//4675.-.Wedding.Planner.multi3.(EU) <TOWN><www.town.ag > <partner of www.ssl-news.info > <Games-NDS >  [01/10] - "4675.-.Wedding.Planner.multi3.(EU).par2" - 72,80 MB - yEnc',
  45
), (
  1116,
  '^alt\\.binaries\\.town$',
  '/^\\d+\\.-\\.(?P<match0>.+) <TOWN><www\\.town\\.ag >\\s+<partner .+>\\s+<.+>\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+/',
  1,
  '//4675.-.Wedding.Planner.multi3.(EU) <TOWN><www.town.ag > <partner of www.ssl-news.info > <Games-NDS >  [01/10] - "4675.-.Wedding.Planner.multi3.(EU).par2" - 72,80 MB - yEnc ::: // Some have no yEnc',
  50
), (
  1117,
  '^alt\\.binaries\\.town$',
  '/^(?P<match0>\\w.+) <TOWN><www\\.town\\.ag >\\s+<partner.+>\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//Marco.Fehr.-.In.the.Mix.at.Der.Club-09-01-SAT-2012-XDS <TOWN><www.town.ag > <partner of www.ssl-news.info >  [01/13] - "Marco.Fehr.-.In.the.Mix.at.Der.Club-09-01-SAT-2012-XDS.par2" - 92,12 MB - yEnc',
  55
), (
  1118,
  '^alt\\.binaries\\.town$',
  '/^(?P<match0>\\w.+) <TOWN><www\\.town\\.ag >\\s+<partner.+>\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+/',
  1,
  '//Marco.Fehr.-.In.the.Mix.at.Der.Club-09-01-SAT-2012-XDS <TOWN><www.town.ag > <partner of www.ssl-news.info >  [01/13] - "Marco.Fehr.-.In.the.Mix.at.Der.Club-09-01-SAT-2012-XDS.par2" - 92,12 MB - yEnc ::: // Some have no yEnc',
  60
), (
  1119,
  '^alt\\.binaries\\.town$',
  '/^<TOWN><www\\.town\\.ag >\\s+<partner .+>\\s+(?P<match0>.+)\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+("|#34;).+yEnc$/',
  1,
  '//<TOWN><www.town.ag > <partner of www.ssl-news.info > JetBrains.IntelliJ.IDEA.v11.1.4.Ultimate.Edition.MacOSX.Incl.Keymaker-EMBRACE  [01/18] - "JetBrains.IntelliJ.IDEA.v11.1.4.Ultimate.Edition.MacOSX.Incl.Keymaker-EMBRACE.par2" - 200,77 MB - yEnc',
  65
), (
  1120,
  '^alt\\.binaries\\.town$',
  '/^<TOWN><www\\.town\\.ag >\\s+<partner .+>\\s+(?P<match0>.+)\\s+\\[\\d+\\/\\d+\\] - ("|#34;).+/',
  1,
  '//<TOWN><www.town.ag > <partner of www.ssl-news.info > JetBrains.IntelliJ.IDEA.v11.1.4.Ultimate.Edition.MacOSX.Incl.Keymaker-EMBRACE  [01/18] - "JetBrains.IntelliJ.IDEA.v11.1.4.Ultimate.Edition.MacOSX.Incl.Keymaker-EMBRACE.par2" - 200,77 MB - yEnc ::: // Some have no yEnc',
  70
), (
  1121,
  '^alt\\.binaries\\.town$',
  '/^[ <\\[]{0,2}TOWN[ >\\]]{0,2}[ _-]{0,3}[ <\\[]{0,2}www\\.town\\.ag[ >\\]]{0,2}[ _-]{0,3}[ <\\[]{0,2}partner of www.ssl-news\\.info[ >\\]]{0,2}[ _-]{0,3}\\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;)(?P<match0>.+)\\.(par|vol|rar|nfo).*?("|#34;).+?yEnc$/i',
  1,
  '//<TOWN><www.town.ag > <partner of www.ssl-news.info > [01/18] - "2012-11.-.Supurbia.-.Volume.Tw o.Digital-1920.K6-Empire.par2" - 421,98 MB yEnc',
  75
), (
  1122,
  '^alt\\.binaries\\.town$',
  '/^<TOWN> www\\.town\\.ag > sponsored by www\\.ssl-news\\.info > \\(\\d+\\/\\d+\\) "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|") - \\d+[,.]\\d+ [mMkKgG][bB] - yEnc$/',
  1,
  '//<TOWN> www.town.ag > sponsored by www.ssl-news.info > (1/3) "HolzWerken_40.par2" - 43,89 MB - yEnc',
  80
), (
  1123,
  '^alt\\.binaries\\.town$',
  '/^\\(\\d+\\/\\d+\\).+?www\\.town\\.ag.+?sponsored by (www\\.)?ssl-news\\.info<+?.+? "(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}yEnc$/ui',
  1,
  '//(1/9)<<<www.town.ag>>> sponsored by ssl-news.info<<<[HorribleSubs]_AIURA_-_01_[480p].mkv "[HorribleSubs]_AIURA_-_01_[480p].par2" yEnc',
  85
), (
  1124,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ (?P<match0>.+?) \\][ _-]{0,3}\\[ partner of www\\.ssl-news\\.info \\][ _-]{0,3}\\[\\d+\\/(\\d+\\])[ _-]{0,3}"(.+)(\\.part\\d*|\\.rar)?(\\.vol.+ \\(\\d+\\/\\d+\\) "|\\.[A-Za-z0-9]{2,4}")[ _-]{0,3}yEnc$/i',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ Assassins.Creed.IV.Black.Flag.XBOX360-COMPLEX ]-[ partner of www.ssl-news.info ] [074/195]- "complex-ac4.bf.d1.r71" yEnc',
  90
), (
  1125,
  '^alt\\.binaries\\.town$',
  '/^\\(TOWN\\)\\(www\\.town\\.ag \\)[ _-]{0,3}\\(partner of www\\.ssl-news\\.info \\)[ _-]{0,3} (?P<match0>.+?) \\[\\d+\\/(\\d+\\][ _-]{0,3}("|#34;).+?)\\.(par2|rar|nfo|nzb)("|#34;)[ _-]{0,3}\\d+[.,]\\d+ [kKmMgG][bB][ _-]{0,3}yEnc$/',
  1,
  '//(TOWN)(www.town.ag ) (partner of www.ssl-news.info ) Twinz-Conversation-CD-FLAC-1995-CUSTODES  [01/23] - #34;Twinz-Conversation-CD-FLAC-1995-CUSTODES.par2#34; - 266,00 MB - yEnc',
  95
), (
  1126,
  '^alt\\.binaries\\.town$',
  '/^<TOWN><www\\.town\\.ag > <partner of www\\.ssl-news\\.info > (?P<match0>.+) \\[\\d+\\/\\d+\\][ _-]{0,3}("|#34;).+?("|#34;).+?yEnc$/i',
  1,
  '//<TOWN><www.town.ag > <partner of www.ssl-news.info > Greek.S04E06.Katerstimmung.German.DL.Dubbed.WEB-DL.XviD-GEZ  [01/22] - "Greek.S04E06.Katerstimmung.German.DL.Dubbed.WEB-DL.XviD-GEZ.par2" - 526,99 MB - yEnc',
  100
), (
  1127,
  '^alt\\.binaries\\.town$',
  '/^\\[ TOWN \\][ _-]{0,3}\\[ www\\.town\\.ag \\][ _-]{0,3}\\[ .* \\][ _-]{0,3}\\[\\d+\\/\\d+\\][ _-]{0,3}"(?P<match0>[\\w\\säöüÄÖÜß+¤¶!.,&_\\()\\[\\]\\\'\\{}#-]{8,}?\\b.?)([-_](proof|sample|thumbs?))*(\\.part\\d*(\\.rar)?|\\.rar|\\.7z)?(\\d{1,3}\\.rev"|\\.vol.+?"|\\.[A-Za-z0-9]{2,4}"|")[-_\\s]{0,3}\\d+([.,]\\d+)? [kKmMgG][bB][-_\\s]{0,3}[-_\\s]{0,3}yEnc$/ui',
  1,
  '//[ TOWN ]-[ www.town.ag ]-[ ANIME ] [01/17] - "[Chyuu] Nanatsu no Taizai - 12 [720p][D1F49539].par2" - 585,03 MB yEnc',
  105
), (
  1128,
  '^alt\\.binaries\\.b4e\\.erotica$',
  '/^Uploader.Presents-(?P<match0>.+?)\\[\\d+\\/\\d+\\]".+?" yEnc$/ui',
  1,
  '//Uploader.Presents-Jupiter.Ascending.2015.German.Cam.MD.XviD.Read.NFO-KMOA [01/51]"jupiter.cam.md-kmoa.nfo" yEnc',
  5
), (
  1129,
  '^alt\\.binaries\\.b4e\\.erotica$',
  '/^\\((?P<match0>.+?)\\) \\[\\d+\\/\\d+\\] - ".+?" yEnc$/ui',
  1,
  '//(Navy CIS - Drei Folgen) [35/63] - "NCIS.part34.rar" yEnc',
  10
);