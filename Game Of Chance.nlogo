globals
[
  winner
  champ
]
breed [teams team]
to setup
  create-teams 16
    ask patch -33 14
    [
      set plabel "team 0"
    ]
    ask team 0
    [
      set xcor -32
      set ycor 14
      set heading 90
      set pen-mode "down"
      set color 25
    ]
    ask patch -33 10
    [
      set plabel "team 1"
    ]
    ask team 1
    [
      set xcor -32
      set ycor 10
      set heading 90
      set pen-mode "down"
      set color 113
    ]
    ask patch -33 6
    [
      set plabel "team 2"
    ]
    ask team 2
    [
      set xcor -32
      set ycor 6
      set heading 90
      set pen-mode "down"
      set color 35
    ]
    ask patch -33 2
    [
      set plabel "team 3"
    ]
    ask team 3
    [
      set xcor -32
      set ycor 2
      set heading 90
      set pen-mode "down"
      set color 87
    ]
    ask patch -33 -2
    [
      set plabel "team 4"
    ]
    ask team 4
    [
      set xcor -32
      set ycor -2
      set heading 90
      set pen-mode "down"
      set color 62
    ]
    ask patch -33 -6
    [
      set plabel "team 5"
    ]
    ask team 5
    [
      set xcor -32
      set ycor -6
      set heading 90
      set pen-mode "down"
      set color 16
    ]
    ask patch -33 -10
    [
      set plabel "team 6"
    ]
    ask team 6
    [
      set xcor -32
      set ycor -10
      set heading 90
      set pen-mode "down"
      set color 9.9
    ]
    ask patch -33 -14
    [
      set plabel "team 7"
    ]
    ask team 7
    [
      set xcor -32
      set ycor -14
      set heading 90
      set pen-mode "down"
      set color 125
    ] 
;;---------------------
    ask patch 34 14
    [
       set plabel "team 8"
    ]
    ask team 8
    [
      set xcor 32
      set ycor 14
      set heading 270
      set pen-mode "down"
      set color 134
    ]
    ask patch 34 10
    [
      set plabel "team 9"
    ]
    ask team 9
    [
      set xcor 32
      set ycor 10
      set heading 270
      set pen-mode "down"
      set color 96
    ]
    ask patch 34 6
    [
      set plabel "team 10"
    ]
    ask team 10
    [
      set xcor 32
      set ycor 6
      set heading 270
      set pen-mode "down"
      set color 14
    ] 
    ask patch 34 2
    [
      set plabel "team 11"
    ]
    ask team 11
    [
      set xcor 32
      set ycor 2
      set heading 270
      set pen-mode "down"
      set color 67
    ] 
    ask patch 34 -2
    [
      set plabel "team 12"
    ]
    ask team 12
    [
      set xcor 32
      set ycor -2
      set heading 270
      set pen-mode "down"
      set color 28
    ] 
    ask patch 34 -6
    [
      set plabel "team 13"
    ]
    ask team 13
    [
      set xcor 32
      set ycor -6
      set heading 270
      set pen-mode "down"
      set color 55
    ] 
    ask patch 34 -10
    [
      set plabel "team 14"
    ]
    ask team 14
    [
      set xcor 32
      set ycor -10
      set heading 270
      set pen-mode "down"
      set color 46
    ] 
    ask patch 34 -14
    [
      set plabel "team 15"
    ]
    ask team 15
    [
      set xcor 32
      set ycor -14
      set heading 270
      set pen-mode "down"
      set color 128
    ]
    ask teams
    [
      forward 8
    ]
    let i 0
    loop
    [
      ask team i
      [
        let rem (i mod 2)
        ifelse (rem = 0)
        [
          set heading 180
          fd 2
        ]
        [
          set heading 0
          fd 2
        ] 
      ]
      set i (i + 1)
      if (i > 15) [ stop ]
    ]
end
;;end of setup-----------------------------
to go
  ask patch -24 12
  [
    let los1 one-of teams-here
    ask los1 [ die ]
    let win1 one-of teams-here
    ask win1 
    [
      set heading 90
    ]
  ]
  ask patch -24 4
  [
    let los2 one-of teams-here
    ask los2 [ die ]
    let win2 one-of teams-here
    ask win2 
    [
      set heading 90
    ]
  ]
  ask patch -24 -4
  [
    let los3 one-of teams-here
    ask los3 [ die ]
    let win3 one-of teams-here
    ask win3 
    [
      set heading 90
    ]
  ]
  ask patch -24 -12
  [
    let los4 one-of teams-here
    ask los4 [ die ]
    let win4 one-of teams-here
    ask win4 
    [
      set heading 90
    ]
  ]
  ask patch 24 12
  [
    let los5 one-of teams-here
    ask los5 [ die ]
    let win5 one-of teams-here
    ask win5 
    [
      set heading 270
    ]
  ]
  ask patch 24 4
  [
    let los6 one-of teams-here
    ask los6 [ die ]
    let win6 one-of teams-here
    ask win6 
    [
      set heading 270
    ]
  ]
  ask patch 24 -4
  [
    let los7 one-of teams-here
    ask los7 [ die ]
    let win7 one-of teams-here
    ask win7 
    [
      set heading 270
    ]
  ]
  ask patch 24 -12
  [
    let los8 one-of teams-here
    ask los8 [ die ]
    let win8 one-of teams-here
    ask win8 
    [
      set heading 270
    ]
  ] 
;;end of pre-quarter final.............................
  ask teams
  [
    forward 8
  ]
  ask teams at-points [[-16 12]]
  [
      set heading 180
      fd 4
  ]
  ask teams at-points [[-16 4]]
  [
      set heading 0
      fd 4
  ]
  ask teams at-points [[-16 -4]]
  [
      set heading 180
      fd 4
  ]
  ask teams at-points [[-16 -12]]
  [
      set heading 0
      fd 4
  ]
  ask teams at-points [[16 12]]
  [
      set heading 180
      fd 4
  ]
  ask teams at-points [[16 4]]
  [
      set heading 0
      fd 4
  ]
  ask teams at-points [[16 -4]]
  [
      set heading 180
      fd 4
  ]
  ask teams at-points [[16 -12]]
  [
      set heading 0
      fd 4
  ]
  ask patch -16 8
  [
    let llos1 one-of teams-here
    ask llos1 [ die ]
    let wwin1 one-of teams-here
    ask wwin1 
    [
      set heading 90
    ]
  ]
  ask patch -16 -8
  [
    let llos2 one-of teams-here
    ask llos2 [ die ]
    let wwin2 one-of teams-here
    ask wwin2 
    [
      set heading 90
    ]
  ]
  ask patch 16 8
  [
    let llos3 one-of teams-here
    ask llos3 [ die ]
    let wwin3 one-of teams-here
    ask wwin3 
    [
      set heading 270
    ]
  ]
  ask patch 16 -8
  [
    let llos4 one-of teams-here
    ask llos4 [ die ]
    let wwin4 one-of teams-here
    ask wwin4 
    [
      set heading 270
    ]
  ]
;;end of quarter final---------------------------------
  ask teams
  [
    forward 8
  ]
  ask teams at-points [[-8 8]]
  [
    set heading 180
    fd 8
  ]
  ask teams at-points [[-8 -8]]
  [
    set heading 0
    fd 8
  ]
  ask teams at-points [[8 8]]
  [
    set heading 180
    fd 8
  ]
  ask teams at-points [[8 -8]]
  [
    set heading 0
    fd 8
  ]
  ask patch -8 0 
  [
    let semiloss1 one-of teams-here
    ask semiloss1 [ die ]
    let semiwin1 one-of teams-here
    ask semiwin1
    [
      set heading 90
    ]
  ]
  ask patch 8 0 
  [
    let semiloss2 one-of teams-here
    ask semiloss2 [ die ]
    let semiwin2 one-of teams-here
    ask semiwin2
    [
      set heading 270
    ]
  ]
;;end of semis---------------------------
  ask teams
  [
    forward 8
  ]
  ask patch 0 0
  [
    let loser one-of teams-here
    ask loser [ die ]
    set winner one-of teams-here
    ask winner
    [
      set heading 0
      set size 5
    ]
    
  ] 
  ask patches at-points [[0 14] [1 14] [-1 14] [2 14] [-2 14] [3 14] [-3 14] [4 14] [-4 14] [0 13] [1 13] [-1 13] [2 13] [-2 13] [3 13] [-3 13] [0 12] [1 12] [-1 12] [2 12] [-2 12] 
      [0 11] [1 11] [-1 11] [0 10] [0 9] [0 8] [1 8] [-1 8]]
    [
      set pcolor 45
    ]
  user-message word "The champion is: " first_rep
  set (champ) ([who] of winner)
  ifelse (champ = choice)
     [
       ask patches at-points [[0 -16][1 -16][-1 -16][0 -15][0 -14][0 -13][0 -12][1 -12][-1 -12][3 -16][3 -15][3 -14][3 -13][3 -12][4 -13][5 -14][6 -15][7 -16][7 -15][7 -14][7 -13][7 -12]
         [-3 -12][-3 -13][-3 -14][-3 -15][-3 -16][-4 -16][-5 -16][-5 -15][-5 -14][-5 -13][-5 -12][-6 -16][-7 -16][-7 -15][-7 -14][-7 -13][-7 -12]]
       [
         set pcolor 65
       ]
     ]
     [
       ask patches at-points [[-7 -16][-6 -16][-7 -15][-7 -14][-5 -16][-3 -16][-2 -16][-1 -16][-3 -15][-1 -15][-3 -14][-3 -14][-1 -14][1 -16][2 -16][3 -16][-3 -13][-3 -12][-1 -12]
         [1 -13][1 -12][2 -12][3 -12][5 -16][6 -16][7 -16][5 -15][5 -14][5 -14][6 -14][7 -14][5 -13][5 -12][6 -12][7 -12][-7 -13][-7 -12][-2 -12][-1 -13][3 -15][3 -14][2 -14][1 -14]]
       [
         set pcolor 14
       ]
     ]     
end
to-report first_rep
  report winner
end
;;end of final-------------------------      