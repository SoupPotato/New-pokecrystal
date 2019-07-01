	const_def 2 ; object constants
    const VIRIDIAN_FOREST_POKE_BALL1
	const VIRIDIAN_FOREST_FRUIT_TREE
	const VIRIDIAN_FOREST_BUG_CATCHER1
	const VIRIDIAN_FOREST_BUG_CATCHER2
	const VIRIDIAN_FOREST_BUG_CATCHER3
	const VIRIDIAN_FOREST_BUG_CATCHER4
	const VIRIDIAN_FOREST_BUG_CATCHER5
	
ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
ViridianForestHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

ViridianForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

ViridianForestHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE
	
ViridianForestFruitTree:
	fruittree FRUITTREE_ROUTE_2
	
ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestLeafStone:
	itemball LEAF_STONE
	
ViridianForestMaxEther:
	itemball MAX_ETHER
	
ViridianForestHiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE
	
TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, BugCatcherEllisSeenText, BugCatcherEllisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherStacey:
	trainer BUG_CATCHER, STACEY, EVENT_BEAT_BUG_CATCHER_STACEY, BugCatcherStaceySeenText, BugCatcherStaceyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherStaceyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherDion:
	trainer BUG_CATCHER, DION, EVENT_BEAT_BUG_CATCHER_DION, BugCatcherDionSeenText, BugCatcherDionBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDionAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDane:
	trainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_CATCHER_DANE, BugCatcherDaneSeenText, BugCatcherDaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDaneAfterBattleText
	waitbutton
	closetext
	end

BugCatcherAbnerSeenText:
	text "There are many"
	line "people out there"
	
	para "who prefer solid"
	line "bug #MON over"
	cont "squishy bug-"
	cont "#MON."
	done

BugCatcherAbnerBeatenText:
	text "Thanks for your"
	line "hard work, my"
	cont "lovley #MON..."
	done

BugCatcherAbnerAfterBattleText:
	text "Doesn't matter what"
	line "kind of #MON--"
	
	para "as long as you like"
	line "like them, they"
	cont "all look cute."
	done
	
BugCatcherEllisSeenText:
	text "I'm sure that"
	line "there's nothing"
	
	para "more efficient"
	line "and beautiful in"
	
	para "this world than a"
	line "Bug-type #MON."
	
	done

BugCatcherEllisBeatenText:
	text "I lost" 
	line "beautifully!"
	done

BugCatcherEllisAfterBattleText:
	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done
	
BugCatcherStaceySeenText:
	text "Wow, that's a"
	line "HUGE #MON!"

	para "..."
	line "...What kind of"
	cont "Trainer?!"
	done

BugCatcherStaceyBeatenText:
	text "I couldn't" 
	line "catch it!"
	done

BugCatcherStaceyAfterBattleText:
	text "Has anyone ever"
	line "told you that"
	cont "from behind,"
	cont "you look like a"
	cont "VENONAT?"
	done
	
BugCatcherDionSeenText:
	text "Shh! Be quiet!"

	para "The Bug #MON"
	line "will run away!"

	done

BugCatcherDionBeatenText:
	text "Phew..." 
	done

BugCatcherDionAfterBattleText:
	text "From Bug-type"
	line "#MON come the"
	
	para "sounds of munching"
	line "on grass,"
	
	para "walking on crunchy"
	line "leaves,"
	
	para "swimming in "
    line "puddles..."
	
	para "For bug #MON"
	line "fans, knowing how"
	
	para "to distinguish"
	line "these sounds"
	cont "is key!"
	done
	
BugCatcherDaneSeenText:
	text "Welcome to "
    line "VIRIDAN FOREST."
	
	para "Enjoy my Bug-"
	line "type #MON!"
	done

BugCatcherDaneBeatenText:
	text "That's wonderful..." 
	done

BugCatcherDaneAfterBattleText:
	text "Pretty impressive!"
	
	para "I'm sure you can" 
	line "go anywhere with"
	cont "that skill!"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  1,  3, VIRIDIAN_FOREST_GATE_N, 3
	warp_event 16, 51, VIRIDIAN_FOREST_GATE_S, 1
	warp_event 17, 51, VIRIDIAN_FOREST_GATE_S, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 17, 22, BGEVENT_ITEM, ViridianForestHiddenMaxEther
	bg_event 13,  6, BGEVENT_ITEM, ViridianForestHiddenFullHeal
	bg_event 10, 38, BGEVENT_ITEM, ViridianForestHiddenFullRestore
	bg_event 31, 46, BGEVENT_ITEM, ViridianForestHiddenRevive

	db 9 ; object events
    object_event 11, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
	object_event 25, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxEther, EVENT_VIRIDIAN_FOREST_MAX_ETHER
	object_event  2, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestLeafStone, EVENT_VIRIDIAN_FOREST_LEAF_STONE
	object_event 31,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree, -1
	object_event  4, 26, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherAbner, -1
	object_event 25,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherEllis, -1
	object_event 28, 22, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherStacey, -1
	object_event 28, 37, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDion, -1
	object_event 19, 46, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDane, -1
