include <./includes.scad>
//skin() // I suck at math and can't translate [rounded_square] might not display
center = [
  ["esc",      "1" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "0"  , ""   , "delete"],
  ["tab",      "Q" , "W" , "E" , "R" , "T" , "Y" , "U" , "I" , "O" , "P"  , "backspace"    ],
  ["capslock", "A" , "S" , "D" , "F" , "G" , "H" , "J" , "K" , "L" , ""   , ""   , "enter" ],
  ["shift",    ""  , "Z" , "X" , "C" , "V" , "B" , "N" , "M" , ""  , ""   , "↑"            ],
  [            ""  , ""                                                                    ],
  ["ctrl",     "⊞" , "lt", ""                                , ""  , "←"  , "↓"  , "→"     ],
];

bottom_left = [
  ["",         "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12"   ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""   , ""             ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "["  , "]"  , ""      ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "," , "."  , ""             ],
  [            ""  , ""                                                                    ],
  ["",         ""  , ""  , ""                                , "'" , ""   , ""   , ""      ],
];

top_left = [
  ["",         "~" , "!" , "?" , "£" , "$" , "#" , "%" , "@" , "^" , "*"  , "_"  , ""      ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""   , ""             ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "{"  , "}"  , ""      ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ":" , ";"  , ""             ],
  [            ""  , ""                                                                    ],
  ["",         ""  , ""  , ""  ,                               "'" , ""   , ""   , ""      ],
];

top_right = [
  ["",         "#" , "#" , "#" , "#" , "#" , "#" , "#" , "#" , "#" , "#"  , "#"  , ""      ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""   , ""             ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "("  , ")"  , ""      ],
  ["",         ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "<" , ">"  , ""             ],
  [            ""  , ""                                                                    ],
  ["",         ""  , ""  , ""  ,                               "|" , ""   , ""   , ""      ],
];

bottom_right = [
  ["",          "`", "¬" , "×" , "÷" , "+" , "-" , "=" , "α" , "β" , "π"  , "Ω"  , ""      ],
  ["",          "" , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""   , ""             ],
  ["",          "" , ""  , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "⟨"  , "⟩"  , ""      ],
  ["",          "" , ""  , ""  , ""  , ""  , ""  , ""  , ""  , "/" , "//"  , ""            ],
  [             "" , ""                                                                    ],
  ["",          "" , ""  , ""  ,                               "|" , ""   , ""   , ""      ],
];

$font_size = 4;
$font="DejaVu Sans Mono:style=Book";
$stem_type = "rounded_cherry";
$support_type = "bars";
$stem_support_type = "disable";
$dish_type = "disable";

$rounded_key = true;
$minkowski_radius = 1.75;

$key_height = 1.0;
$key_length = 1.0;
$total_depth = 11.5;

$bottom_key_width = 18.16;
$bottom_key_height = 18.16;
$width_difference = 0;
$height_difference = 0;

$top_tilt = 0;
$top_tilt_y = 0;
$top_skew = 0;
$top_skew_x = 0;

key();

for (y=[0:len(center)-1]) {
  for (x=[0:len(center[y])-1]) {
    translate_u(x,-y) {
      legend(center[y][x], [0,0]) {
        legend(bottom_left[y][x], [-1,1], size=2) {
          legend(bottom_right[y][x], [1,1], size=2) {
            legend(top_left[y][x], [-1,-1], size=2) {
              legend(top_right[y][x], [1,-1], size=2) {
                key();
              }
            }
          }
        }
      }
    }
  }
}