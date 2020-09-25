# README

###############################
##### Zones #####
###############################

An app for iOS that will allow users to create zones for their smart lights. A zone can control individual lights, groups of lights, and scenes. Light control includes color changing (if supported), strobe patterns, and on/off.

HOW TO RUN:


#############################
##### PROJECT HIERARCHY #####
#############################
.
├── Makefile       - used to build project
├── overview.pdf   - summary of project
├── README         - you are here
├── simulator.c    - code to simulate a processor using pipelining
├── tests-bin      - directory for test cases (machine code)
│   ├── beq
│   ├── datahaz
│   ├── forwarding
│   ├── given
│   ├── halt
│   ├── nand
│   ├── proj1
│   ├── st-fw
│   ├── sw
│   └── test
└── tests-code      - directory for original assembly code
    ├── beq.asm
    ├── datahaz.asm
    ├── forwarding.asm
    ├── given.asm
    ├── halt.asm
    ├── nand.asm
    ├── proj1.asm
    ├── st-fw.asm
    └── sw.asm

#################
##### TESTS #####
#################

beq
└─ tests stalling, branching forward, and data forwarding (from LW)

datahaz
└─ tests stalling, branching, and data forwarding (from ADD)

forwarding
└─ tests data forwarding (from WBEND, MEMWB, and EXMEM)

given
└─ tests calculation of statistics

halt
└─ tests most basic case

nand
└─ tests stalling, data forwarding (from LW and NAND)

proj1
└─ tests stalling, branching, and data forwarding (from BEQ)

st-fw
└─ tests stalling and data forwarding (from LW to LW)

sw
└─ tests stalling, branching, and data forwarding (from SW)

 ___      ___       __  ___________  ___________           ___   _______   _______    _______        __        _______   ________                                     
|"  \    /"  |     /""\("     _   ")("     _   ")         |"  | /"     "| /"      \  /"      \      /""\      /"      \ |"      "\                                    
 \   \  //   |    /    \)__/  \\__/  )__/  \\__/          ||  |(: ______)|:        ||:        |    /    \    |:        |(.  ___  :)                                   
 /\\  \/.    |   /' /\  \  \\_ /        \\_ /             |:  | \/    |  |_____/   )|_____/   )   /' /\  \   |_____/   )|: \   ) ||                                   
|: \.        |  //  __'  \ |.  |        |.  |          ___|  /  // ___)_  //      /  //      /   //  __'  \   //      / (| (___\ ||                                   
|.  \    /:  | /   /  \\  \\:  |        \:  |         /  :|_/ )(:      "||:  __   \ |:  __   \  /   /  \\  \ |:  __   \ |:       :)                                   
|___|\__/|___|(___/    \___)\__|         \__|        (_______/  \_______)|__|  \___)|__|  \___)(___/    \___)|__|  \___)(________/                                    
                                                                                                                                                                      
      __      _____  ___   ________            ___      __       __   ___  _______           ___   _______   _______    _______        __        _______   ________   
     /""\    (\"   \|"  \ |"      "\          |"  |    /""\     |/"| /  ")/"     "|         |"  | /"     "| /"      \  /"      \      /""\      /"      \ |"      "\  
    /    \   |.\\   \    |(.  ___  :)         ||  |   /    \    (: |/   /(: ______)         ||  |(: ______)|:        ||:        |    /    \    |:        |(.  ___  :) 
   /' /\  \  |: \.   \\  ||: \   ) ||         |:  |  /' /\  \   |    __/  \/    |           |:  | \/    |  |_____/   )|_____/   )   /' /\  \   |_____/   )|: \   ) || 
  //  __'  \ |.  \    \. |(| (___\ ||      ___|  /  //  __'  \  (// _  \  // ___)_       ___|  /  // ___)_  //      /  //      /   //  __'  \   //      / (| (___\ || 
 /   /  \\  \|    \    \ ||:       :)     /  :|_/ )/   /  \\  \ |: | \  \(:      "|     /  :|_/ )(:      "||:  __   \ |:  __   \  /   /  \\  \ |:  __   \ |:       :) 
(___/    \___)\___|\____\)(________/     (_______/(___/    \___)(__|  \__)\_______)    (_______/  \_______)|__|  \___)|__|  \___)(___/    \___)|__|  \___)(________/  
                                                                                                                                                                    
