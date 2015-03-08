#include <adv3.h>
#include <en_us.h>

forestCrossing: OutdoorRoom
    'Forest Crossing'
    "{You/he} {is} standing at the crossing of two paths in the forest. One path runs from east to west, the other from north to south. Trees surround you on all sides. "
    west = w1
    east : DeadEndConnector {'the forest path' "You start down the path to the east for a bit, then return. "}
    south : DeadEndConnector {'the forest path' "You start down the path to the south for a bit, then return. "}
    north : DeadEndConnector {'the forest path' "You start down the path to the north for a bit, then return. "}
;

w1: OutdoorRoom
    'Forest Path'
    "{You/he} {is} standing on a path in the forest which runs from east to west. The forest stretches in all directions. "
    east = forestCrossing
    west = w2
;

w2: OutdoorRoom
    'Forest Path'
    "{You/he} {is} standing on a path in the forest which runs from east to west. You think you can see some sunlight streaming in from the west, and the path continues deeper into the forest to the east. "
    east = w1
    west = forestEdge
;

forestEdge: OutdoorRoom
    'Edge of the Forest'
    "{You/he} {is} standing at the edge of a forest. A path leads into the forest to the east. "
    east = w2
;

+Fixture
    'old faded sign'
    'sign'
    "The sign looks as though it has been there for many years, though you cannot be sure. The words <q>REPT FOREST</q> are written in faded blue paint. "
    specialDesc = "A sign reading <q>REPT FOREST</q> is nailed to a tree next to the path. "
    cannotTakeMsg = 'It\'s nailed to a tree. '
;

++Decoration
    'cracked faded blue paint'
    'paint'
    "The paint is cracked and faded. {You/he} get{s} the impression that whoever placed the sign there did not care much about keeping up the appearance of the sign. "
;
