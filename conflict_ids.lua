-- for path 1.07 (patch_rebel_galaxy_2.3.1.8)

local conflict = {
    [80] = "Sorcerer",
    [2745] = "Damocles",
    [5230] = "Icarus",
    [13359] = "Yes",
    [14246] = "Hammerhead",
    [14396] = "CARGO",
    [14404] = "NAVIGATION",
    [14411] = "MINING",
    [14682] = "NEUTRAL",
    [14878] = "Safe travelin'.",
    [14896] = "I'll see you in hell.",
    [15003] = "Fly safe.",
    [15009] = "Keep your nose clean in this sector.",
    [15011] = "You're not going to be any trouble, are you?",
    [15078] = "Viriax",
    [15123] = "Safe flyin'.",
    [15127] = "Take care of yourself.",
    [15181] = "TRELL",
    [15182] = "Trell",
    [15572] = "Hostile vessel, prepare to be fired upon!",
    [15675] = "Meathook",
    [16011] = "Let us proceed.",
    [16062] = "HUMAN NEUTRAL",
    [16063] = "HUMAN MILITARY",
    [16064] = "HUMAN PIRATE",
    [16065] = "SMUGGLERS",
    [16078] = "Mk1 Null-Grav Booster",
    [16082] = "Mk1 Slamjet Booster",
    [16114] = "MERCENARY GUILD",
    [16127] = "Mk1 Neutron Beams",
    [16141] = "Mk1 Proton Cannon",
    [16161] = "Mk1 Pulse Cannon",
    [16300] = "Mk1 Deflector",
    [16312] = "Mk1 Shock Deflector",
    [16322] = "Mk1 Ramming Deflector",
    [16333] = "Mk1 Rebound Deflector",
    [16380] = "MERCHANT GUILD",
    [16471] = "ENEMY_TORPEDO",
    [16473] = "ENEMY_TORPEDO_WEAK",
    [16475] = "ENEMY_TORPEDO2",
    [16477] = "ENEMY_TORPEDO3",
    [16481] = "ENEMY_TORPEDO5",
    [16491] = "ENEMY_TORPEDO_SPLITTER_SINGLE4",
    [16523] = "Mk1 HS Missile Launcher",
    [16572] = "ENEMY_KORIAN_TORP_3",
    [16652] = "Mk1 Shields",
    [16667] = "Mk1 Field Impact Shields",
    [16686] = "CORVETTE",
    [16770] = "None",
    [16859] = "ENEMY_PARTICLELASERTURRET",
    [16863] = "Mk1 Mining Laser",
    [16880] = "Mk1 Particle Laser",
    [16902] = "ENEMY_PARTICLELASERTURRET2",
    [16905] = "ENEMY_PARTICLELASERTURRET3",
    [16908] = "ENEMY_PARTICLELASERTURRET4",
    [16911] = "ENEMY_PARTICLELASERTURRET5",
    [16914] = "ENEMY_PARTICLELASERTURRET6",
    [16918] = "ENEMY_PARTICLELASERTURRETGREEN",
    [16920] = "ENEMY_PARTICLELASERTURRETGREEN2",
    [16923] = "ENEMY_PARTICLELASERTURRETGREEN3",
    [16926] = "ENEMY_PARTICLELASERTURRETGREEN4",
    [16929] = "ENEMY_PARTICLELASERTURRETGREEN5",
    [16932] = "ENEMY_PARTICLELASERTURRETGREEN6",
    [16936] = "ENEMY_PARTICLELASERTURRETTEAL",
    [16938] = "ENEMY_PARTICLELASERTURRETTEAL2",
    [16941] = "ENEMY_PARTICLELASERTURRETTEAL3",
    [16944] = "ENEMY_PARTICLELASERTURRETTEAL4",
    [16947] = "ENEMY_PARTICLELASERTURRETTEAL5",
    [16950] = "ENEMY_PARTICLELASERTURRETTEAL6",
    [16954] = "ENEMY_PARTICLELASERTURRETFIRE",
    [16956] = "ENEMY_PARTICLELASERTURRETFIRE2",
    [16959] = "ENEMY_PARTICLELASERTURRETFIRE3",
    [16962] = "ENEMY_PARTICLELASERTURRETFIRE4",
    [16965] = "ENEMY_PARTICLELASERTURRETFIRE5",
    [16968] = "ENEMY_PARTICLELASERTURRETFIRE6",
    [16971] = "ENEMY_BEAMTURRET2",
    [16974] = "ENEMY_BEAMTURRET3",
    [16977] = "ENEMY_BEAMTURRET4",
    [16980] = "ENEMY_BEAMTURRET5",
    [16983] = "ENEMY_BEAMTURRET6",
    [16987] = "ENEMY_BEAMTURRET",
    [17002] = "ENEMY_BEAMTURRET_GREEN",
    [17004] = "ENEMY_BEAMTURRET_GREEN2",
    [17007] = "ENEMY_BEAMTURRET_GREEN3",
    [17010] = "ENEMY_BEAMTURRET_GREEN4",
    [17013] = "ENEMY_BEAMTURRET_GREEN5",
    [17016] = "ENEMY_BEAMTURRET_GREEN6",
    [17020] = "ENEMY_BEAMTURRET_TEAL",
    [17022] = "ENEMY_BEAMTURRET_TEAL2",
    [17025] = "ENEMY_BEAMTURRET_TEAL3",
    [17028] = "ENEMY_BEAMTURRET_TEAL4",
    [17031] = "ENEMY_BEAMTURRET_TEAL5",
    [17034] = "ENEMY_BEAMTURRET_TEAL6",
    [17037] = "ENEMY_BEAMTURRET_MEGA6",
    [17041] = "ENEMY_BEAMTURRET_FIRE",
    [17043] = "ENEMY_BEAMTURRET_FIRE2",
    [17046] = "ENEMY_BEAMTURRET_FIRE3",
    [17049] = "ENEMY_BEAMTURRET_FIRE4",
    [17052] = "ENEMY_BEAMTURRET_FIRE5",
    [17055] = "ENEMY_BEAMTURRET_FIRE6",
    [17058] = "ENEMY_BEAMTURRET_MEGA_FIRE6",
    [17061] = "PLAYER_PARTICLELASERTURRETGREEN2",
    [17076] = "special_BEAMTURRET",
    [17080] = "special_BEAMTURRET2",
    [17084] = "special_BEAMTURRET3",
    [17088] = "special_BEAMTURRET4",
    [17092] = "special_BEAMTURRET5",
    [17096] = "special_BEAMTURRET6",
    [17107] = "player_irrocket",
    [17149] = "player_irrocket2",
    [17153] = "player_irrocket3",
    [17157] = "player_irrocket4",
    [17161] = "player_irrocket5",
    [17165] = "player_irrocket6",
    [17172] = "player_swarmrocket",
    [17179] = "player_swarmrocket2",
    [17182] = "player_swarmrocket3",
    [17185] = "player_swarmrocket4",
    [17188] = "player_swarmrocket5",
    [17191] = "player_swarmrocket6",
    [17217] = "Mk1 Leech Rocket Turret",
    [17223] = "player_leech",
    [17229] = "player_leech2",
    [17234] = "player_leech3",
    [17239] = "player_leech4",
    [17244] = "player_leech5",
    [17249] = "player_leech6",
    [17257] = "player_antimatterprobe",
    [17263] = "player_antimatterprobe2",
    [17266] = "player_antimatterprobe3",
    [17269] = "player_antimatterprobe4",
    [17272] = "player_antimatterprobe5",
    [17275] = "player_antimatterprobe6",
    [17326] = "special_MIRV5",
    [17330] = "special_MIRV6",
    [17342] = "player_protonturret",
    [17360] = "player_flakturret",
    [17365] = "player_flakturret_2",
    [17369] = "player_flakturret_3",
    [17373] = "player_flakturret_4",
    [17377] = "player_flakturret_5",
    [17381] = "player_flakturret_6",
    [17387] = "player_ionturret",
    [17393] = "player_ionturret_2",
    [17395] = "player_ionturret_3",
    [17399] = "player_ionturret_4",
    [17403] = "player_ionturret_5",
    [17407] = "player_ionturret_6",
    [17410] = "Mk1 Pulse Turret",
    [17413] = "player_pulseturret",
    [17418] = "player_pulseturret_2",
    [17420] = "player_pulseturret_3",
    [17424] = "player_pulseturret_4",
    [17428] = "player_pulseturret_5",
    [17432] = "player_pulseturret_6",
    [17438] = "player_scatterturret",
    [17443] = "player_scatterturret_2",
    [17445] = "player_scatterturret_3",
    [17449] = "player_scatterturret_4",
    [17453] = "player_scatterturret_5",
    [17457] = "player_scatterturret_6",
    [17461] = "enemy_ionturret",
    [17463] = "enemy_ionturret_2",
    [17465] = "enemy_ionturret_3",
    [17468] = "enemy_ionturret_4",
    [17471] = "enemy_ionturret_5",
    [17474] = "enemy_ionturret_6",
    [17477] = "enemy_mineturret",
    [17480] = "enemy_mineturret_2",
    [17483] = "enemy_mineturret_3",
    [17486] = "enemy_mineturret_4",
    [17489] = "enemy_mineturret_5",
    [17492] = "enemy_mineturret_6",
    [17495] = "enemy_pulseturret",
    [17497] = "enemy_pulseturret_2",
    [17499] = "enemy_pulseturret_3",
    [17502] = "enemy_pulseturret_4",
    [17505] = "enemy_pulseturret_5",
    [17508] = "enemy_pulseturret_6",
    [17511] = "enemy_scatterturret",
    [17513] = "enemy_scatterturret_2",
    [17515] = "enemy_scatterturret_3",
    [17518] = "enemy_scatterturret_4",
    [17521] = "enemy_scatterturret_5",
    [17524] = "enemy_scatterturret_6",
    [17562] = "enemy_greelscatterturret_4",
    [17565] = "enemy_greelscatterturret_5",
    [17568] = "enemy_greelscatterturret_6",
    [17571] = "enemy_firescatterturret_4",
    [17574] = "enemy_firescatterturret_5",
    [17577] = "enemy_firescatterturret_6",
    [17580] = "special_greelscatterturret_4",
    [17586] = "special_greelscatterturret_5",
    [17589] = "special_greelscatterturret_6",
    [19512] = "MISSION_DJCAPTAIN",
    [19620] = "Soy Paste",
    [19623] = "Nuts and Bolts",
    [19626] = "Metallic Ore",
    [19633] = "Data Cubes",
    [19644] = "Space Slaves",
    [19647] = "Intellectual Property",
    [19650] = "Yikyak Meat",
    [19653] = "Tachyon Salt",
    [19656] = "Nano-Fibers",
    [19659] = "Obtanium",
    [19662] = "Narco-Cola",
    [19665] = "Designer Clothes",
    [19671] = "Meteoric Diamonds",
    [19674] = "Alien Artifacts",
    [19681] = "Greel Whiskey",
    [19684] = "Pure Water",
    [19687] = "Live Organs",
    [19690] = "Religious Tracts",
    [19693] = "Dead Drop",
    [19700] = "mission_omnium",
    [19710] = "Progenitor Shard",
    [19713] = "Face of Gozu",
    [19716] = "Antimatter Speck",
    [19722] = "mission_idchip",
    [19723] = "Lightborne ID Chip",
    [19724] = "mission_infiltrator",
    [19725] = "Infiltration Mech",
    [19729] = "mission_hexxite",
    [19739] = "No Economy",
    [19741] = "Agrarian",
    [19743] = "Manufacturing",
    [19749] = "Leisure",
    [19750] = "Scientific",
    [19751] = "Prison",
    [19752] = "Bureaucratic",
    [19753] = "Mining",
    [19754] = "Criminal",
    [19781] = "Diplomatic",
    [19785] = "Democracy",
    [19790] = "Anarchy",
    [19801] = "Theocracy",
    [19839] = "RELIEF",
    [19846] = "TREATY",
    [19861] = "ARTIFACTS",
    [19877] = "PIRATE_CONTROL",
    [19883] = "CONVOY",
    [19899] = "PIRATELORD",
    [19911] = "KORIANINVADER",
    [19918] = "KORIANSIEGE",
    [19925] = "MILITARYEMBARGO",
    [19929] = "RELIEF2",
    [19930] = "TREATY2",
    [19931] = "ARTIFACTS2",
    [19932] = "PIRATE_CONTROL2",
    [19933] = "CONVOY2",
    [19934] = "PIRATELORD2",
    [19935] = "KORIANINVADER2",
    [19936] = "KORIANSIEGE2",
    [19938] = "MILITARYEMBARGO2",
    [19939] = "RELIEF3",
    [19940] = "TREATY3",
    [19941] = "ARTIFACTS3",
    [19942] = "PIRATE_CONTROL3",
    [19943] = "CONVOY3",
    [19944] = "PIRATELORD3",
    [19945] = "KORIANINVADER3",
    [19946] = "KORIANSIEGE3",
    [19947] = "MILITARYEMBARGO3",
    [19948] = "RELIEF4",
    [19949] = "TREATY4",
    [19950] = "ARTIFACTS4",
    [19951] = "PIRATE_CONTROL4",
    [19952] = "CONVOY4",
    [19953] = "PIRATELORD4",
    [19954] = "KORIANINVADER4",
    [19955] = "KORIANSIEGE4",
    [19956] = "MILITARYEMBARGO4",
    [19957] = "RELIEF5",
    [19958] = "TREATY5",
    [19959] = "ARTIFACTS5",
    [19960] = "PIRATE_CONTROL5",
    [19961] = "CONVOY5",
    [19962] = "PIRATELORD5",
    [19963] = "KORIANINVADER5",
    [19964] = "KORIANSIEGE5",
    [19965] = "MILITARYEMBARGO5",
    [19966] = "RELIEF6",
    [19967] = "TREATY6",
    [19968] = "ARTIFACTS6",
    [19969] = "PIRATE_CONTROL6",
    [19970] = "CONVOY6",
    [19971] = "PIRATELORD6",
    [19972] = "KORIANINVADER6",
    [19973] = "KORIANSIEGE6",
    [19974] = "MILITARYEMBARGO6",
    [19978] = "Human Neutral",
    [19984] = "Human Military",
    [20006] = "Murath Scavengers",
    [20699] = "TREASURE",
    [21725] = "Training Dummy",
    [21726] = "Corvette",
    [24564] = "Outpost",
    [25727] = "ENEMY_FIGHTERLASERTEAL_4",
    [25733] = "ENEMY_FIGHTERLASERTEAL_5",
    [25739] = "enemy_fighter_protoncannon_5",
    [25740] = "FIGHTER_SCATTERGUN_5",
    [25745] = "FIGHTER_PROTONCANNON_6",
    [25746] = "ENEMY_FIGHTERLASERTEAL_6",
    [25752] = "FIGHTER_SCATTERGUN_4",
    [25795] = "enemy_fighter_tachyoncannon_5",
    [25796] = "ENEMY_SWARMTORPEDO5",
    [25830] = "FIGHTER_SCATTERGUN_GREEN_5",
    [25839] = "FIGHTER_KORIANPULSE_6",
    [25840] = "ENEMY_FIGHTERLASERGREEN_6",
    [25846] = "ENEMY_FIGHTERLASERGREEN_X3_6",
    [25889] = "FIGHTER_SCATTERGUN_PURPLE_2",
    [25890] = "ENEMY_SWARMTORPEDO",
    [25894] = "FIGHTER_SCATTERGUN_PURPLE_4",
    [25895] = "ENEMY_SWARMTORPEDO4",
    [25896] = "FIGHTER_SCATTERGUN_PURPLE_6",
    [25897] = "ENEMY_SWARMTORPEDO6",
    [25912] = "FIGHTER_SCATTERGUN_PURPLE_3",
    [25917] = "FIGHTER_SCATTERGUN_PURPLE_5",
    [25925] = "enemy_fighter_protoncannon_2",
    [25926] = "ENEMY_FIGHTERLASERBLUE_2",
    [25931] = "enemy_fighter_protoncannon_4",
    [25932] = "ENEMY_FIGHTERLASERBLUE_4",
    [25933] = "enemy_fighter_protoncannon_6",
    [25934] = "ENEMY_FIGHTERLASERBLUE_6",
    [25983] = "ENEMY_TORPEDO_STRONG3",
    [25985] = "ENEMY_TORPEDO_STRONG6",
    [26004] = "ENEMY_LEECH5",
    [26014] = "ENEMY_FIGHTERLASERBLUE_3",
    [26018] = "ENEMY_FIGHTERLASERBLUE_5",
    [26119] = "ENEMY_TORPEDO_STRONG2",
    [26158] = "FIGHTER_SCATTERGUN_2",
    [26170] = "enemy_fighter_protoncannon_3",
    [26247] = "enemy_fighter_tachyoncannon_3",
    [26354] = "FIGHTER_PULSECANNON",
    [26382] = "ENEMY_FIGHTERLASERPURPLE_2",
    [26393] = "FIGHTER_SCATTERGUN_WEAK",
    [26395] = "ENEMY_TORPEDO_STRONG",
    [26404] = "FIGHTER_PROTONCANNON_5",
    [26472] = "ENEMY_FIGHTERLASERFIRE_5",
    [26473] = "FIGHTER_SCATTERGUN_FIRE_5",
    [26482] = "FIGHTER_SCATTERGUN_FIRE_4",
    [26767] = "FIGHTER_PROTONCANNON",
    [26780] = "FIGHTER_SCATTERGUN",
    [26816] = "ENEMY_MININGLASER",
    [26820] = "ENEMY_MININGLASER_2",
    [26823] = "ENEMY_MININGLASER_3",
    [26824] = "ENEMY_MININGLASER_4",
    [26826] = "ENEMY_MININGLASER_5",
    [26828] = "ENEMY_MININGLASER_6",
    [26831] = "ENEMY_FIGHTERLASERPURPLE",
    [27005] = "enemy_fighter_pulsecannon_2",
    [27008] = "enemy_fighter_pulsecannon_3",
    [27009] = "ENEMY_SWARMTORPEDO2",
    [27043] = "FIGHTER_KORIANPULSE",
    [27044] = "ENEMY_FIGHTERLASERGREEN",
    [27046] = "FIGHTER_KORIANPULSE_3",
    [27058] = "ENEMY_FIGHTERLASERGREEN_X3",
    [27061] = "FIGHTER_SCATTERGUN_GREEN",
    [27063] = "FIGHTER_SCATTERGUN_GREEN_3",
    [27128] = "Garris",
    [27129] = "Garris Pro",
    [27132] = "Grud",
    [27135] = "ENEMY_SWARMTORPEDO3",
    [27138] = "Splitter",
    [27140] = "Splitter Pro",
    [27142] = "Steve",
    [27147] = "Skiza",
    [27154] = "Skiza Pro",
    [27155] = "ENEMY_FIGHTERLASERPURPLE_5",
    [27157] = "Sparrow",
    [27161] = "FIGHTER_PROTONCANNON_2",
    [27162] = "FIGHTER_SCATTERGUN_3",
    [27163] = "FIGHTER_PROTONCANNON_3",
    [27164] = "FIGHTER_PROTONCANNON_4",
    [27166] = "FIGHTER_SCATTERGUN_6",
    [27200] = "ENEMY_FIGHTERLASERBLUE",
    [27547] = "ENEMY_IONTURRET",
    [27548] = "ENEMY_IONTURRET_2",
    [27549] = "ENEMY_IONTURRET_3",
    [27550] = "ENEMY_IONTURRET_4",
    [27551] = "ENEMY_IONTURRET_5",
    [27552] = "ENEMY_IONTURRET_6",
    [27598] = "ENEMY_PULSETURRET",
    [27599] = "ENEMY_PULSETURRET_2",
    [27600] = "ENEMY_PULSETURRET_3",
    [27601] = "ENEMY_PULSETURRET_4",
    [27602] = "ENEMY_PULSETURRET_5",
    [27603] = "ENEMY_PULSETURRET_6",
    [27622] = "ENEMY_TURRET_MINE",
    [27623] = "ENEMY_TURRET_MINE2",
    [27624] = "ENEMY_TURRET_MINE3",
    [27625] = "ENEMY_TURRET_MINE4",
    [27626] = "ENEMY_TURRET_MINE5",
    [27627] = "ENEMY_TURRET_MINE6",
    [27636] = "ENEMY_MININGLASERTURRET",
    [27657] = "ENEMY_PROTONTURRET",
    [27660] = "enemy_rapid_single5",
    [27696] = "PLAYER_MININGLASERTURRET",
    [27697] = "PLAYER_MININGLASERTURRET2",
    [27698] = "PLAYER_MININGLASERTURRET3",
    [27699] = "PLAYER_MININGLASERTURRET4",
    [27700] = "PLAYER_MININGLASERTURRET5",
    [27701] = "PLAYER_MININGLASERTURRET6",
    [27702] = "PLAYER_PARTICLELASERTURRET",
    [27703] = "PLAYER_PARTICLELASERTURRET2",
    [27704] = "PLAYER_PARTICLELASERTURRET3",
    [27705] = "PLAYER_PARTICLELASERTURRET4",
    [27706] = "PLAYER_PARTICLELASERTURRET5",
    [27707] = "PLAYER_PARTICLELASERTURRET6",
    [4294967295] = "",
}

return conflict
