;; collected 7/19/2011

sparser> (setq adv-n (loop for key being the hash-key in *is-an-adverb-in-comlex* when (gethash key *is-a-noun-in-comlex*) collect key))
(second-best helter-skelter flop plop square smack overall sock
 |sou'-west| tonight |nor'-west| pretty adagio inside south bang north
 ding-dong beyond second thick piano impromptu monthly steady
 second-class fore right light tandem pat home well quarterly round
 sound allegro deep |nor'-nor'-west| west open allegretto dear
 side-saddle sharp |sou'-east| way straight |nor'-east| wrong extra
 alias |sou'-sou'-east| overtime rough aside weekly small fair whang
 down daily damn wholesale south-southwest north-northwest retail
 |viva voce| yea |nor'-nor'-east| fine outside slick still short low
 tete-a-tete smash underground left piping forward hereafter
 |sou'-sou'-west| double flat firm tomorrow back ill accelerando clean
 bolt zigzag meantime collect con langsyne behind okay plonk clear pop
 slap plenty plain hugger-mugger northeast southeast bump plumb true
 north-northeast due forte broadcast express quick part close east fast
 past last southwest andante whacking middling plump much northwest
 passing south-southeast)




sparser> (setq adv-n (loop for key being the hash-key in *is-an-adverb-in-comlex* when (gethash key *is-a-verb-in-comlex*) collect key))
(flop plop direct square smack sock pretty up bang second steady right
 light pat well round sound open near wrong rough down damn sheer
 retail hotfoot upstage fine bloody still short low smash forward
 double firm back tiptoe even clean bolt zigzag collect con crisscross
 okay plonk clear pop slap bump plumb true long jolly broadcast express
 part close thin fast last slow live plump)




sparser> (setq adv-n (loop for key being the hash-key in *is-an-adverb-in-comlex* when (gethash key *is-an-adjective-in-comlex*) collect key))
(second-best double-quick coastwise direct sure presto square alike
 rent-free aloof pizzicato overall topsy-turvy upstairs post-free so-so
 precious barefoot heavenwards beastly waist-deep awry whopping
 fortnightly offstage point-blank pretty cock-a-hoop odds-on inshore
 onshore adagio haphazard post-paid part-time hourly piecemeal backward
 inside overarm higgledy-piggledy very south skywards astir
 out-of-the-way north dead above roaring just second yonder ablaze
 thick barefooted piano alone overhead staccato impromptu monthly
 steady second-class fore right tight overseas light kindly millionfold
 offhand overnight devilish |a posteriori| false well chock-a-block
 unbeknown quarterly |ultra vires| pro-rata round sound skyward staring
 |ex officio| allegro midweek slapdash round-arm eastward next deep
 loud west open |in vitro| allegretto dear near threefold barebacked
 |a priori| sharp raving cleanly first abeam straight lento after
 knee-high wrong waist-high thousandfold gingerly extra unco wide far
 large wondrous underhand rough weekly small weakly astride fresh
 |prima facie| fair halfway half-hourly bally early alright daily damn
 sheer wholesale bodily amiss heavy away likely glissando inland
 |viva voce| late upstage single-handed mighty midmost fine outside
 half-yearly damned sidelong fourfold pianissimo bloody |above board|
 deadly slick fortissimo still short low oversea high asleep sopping
 underground left extempore round-the-clock piping headlong first-class
 forward |table d'hote| same westward incognito goddam yearly
 first-hand apropos head-on aground daylong uppermost knee-deep
 leisurely |ad hoc| verbatim double little flat firm overmuch back
 |pro forma| ill homeward most even alfresco downstream alee
 accelerando clean legato downright off lengthways rallentando
 shipshape collect offside yon downstairs outward tip-top bright
 scorching ninefold crisscross okay unbeknownst leeward midway sixfold
 tongue-in-cheek clear pop prestissimo enough heavenward plain
 northeast southeast upward only rattling |de jure| astray onward
 inward true offhanded first-rate due forte nightly uphill askew
 nationwide industrywide long cram-full jolly through underarm express
 quick upcountry close hard outright uptown thin adrift deathly east
 fast past last easy beforehand southwest wild slow sevenfold stark
 andante downward full-time |pro rata| |table d'hôte| gratis
 crosscountry whacking live middling twofold plump much northwest
 nonstop passing)
