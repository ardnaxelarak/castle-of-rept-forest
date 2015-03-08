#include <adv3.h>
#include <en_us.h>

gameMain: GameMainDef
    initialPlayerChar = me
;

versionInfo: GameID
    name = 'The Castle of Rept Forest'
    byline = 'by Kara Felix and Alex Firefly'
    authoremail = 'Kara Felix <karairenefelix@gmail.com>'
    desc = 'The Castle of Rept Forest'
    version = '1'
    IFID = '916FAE71-D26A-4B5A-9141-F7B6AEAF9DA0'
;

me: Actor
    location = forestCrossing
;
