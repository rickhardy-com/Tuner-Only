//
//  setupParams.swift
//  HarmonicaToolkit
//
//  Created by Richard Hardy on 09/07/2022.
//

import Foundation




let harmonicaNames:[(   baseNote:           Int,
                        harmonicaName:      String,
                        harmonicaShortName: String,
                        firstPosition:      Int,
                        secondPosition:     Int,
                        thirdPosition:      Int,
                        fourthPosition:     Int,
                        fifthPosition:      Int,
                        sixthPosition:      Int,
                        seventhPosition:    Int,
                        eighthPosition:     Int,
                        ninthPosition:      Int,
                        tenthPosition:      Int,
                        eleventhPosition:   Int,
                        twelvthPosition:    Int
                    )

                    ] =
[ // should be calculated..
(23,    "Low G", "G",     11, 6,     1,   8,      3,      10,     5,      0,      7,      2,      9,      4),
(24,    "Low Ab", "Ab",   0,  7,     2,   9,      4,      11,     6,      1,      8,      3,      10,     5),
(25,    "Low A", "A",     1,  8,     3,   10,     5,      0,      7,      2,      9,      4,      11,     6),
(26,    "Low Bb", "Bb",   2,  9,     4,   11,     6,      1,      8,      3,      10,     5,      0,      7),
(27,    "Low B", "B",     3,  10,    5,   0,      7,      2,      9,      4,      11,     6,      1,      8),
(28,    "Low C", "C",     4,  11,    6,   1,      8,      3,      10,     5,      0,      7,      2,      9),
(29,    "Low C#", "C#",   5,  0,     7,   2,      9,      4,      11,     6,      1,      8,      3,      10),
(30,    "Low D", "D",     6,  1,     8,   3,      10,     5,      0,      7,      2,      9,      4,      11),
(31,    "Low Eb", "Eb",   7,  2,     9,   4,      11,     6,      1,      8,      3,      10,     5,      0),
(32,    "Low E", "E",     8,  3,     10,  5,      0,      7,      2,      9,      4,      11,     6,      1),
(33,    "Low F", "F",     9,  4,     11,  6,      1,      8,      3,      10,     5,      0,      7,      2),
(34,    "Low F#", "F#",   10, 5,     0,   7,      2,      9,      4,      11,     6,      1,      8,      3),
(35,    "G-Maj", "G",     11, 6,     1,   8,      3,      10,     5,      0,      7,      2,      9,      4),
(36,    "Ab-Maj", "Ab",   0,  7,     2,   9,      4,      11,     6,      1,      8,      3,      10,     5),
(37,    "A-Maj", "A",     1,  8,     3,   10,     5,      0,      7,      2,      9,      4,      11,     6),
(38,    "Bb-Maj", "Bb",   2,  9,     4,   11,     6,      1,      8,      3,      10,     5,      0,      7),
(39,    "B-Maj", "B",     3,  10,    5,   0,      7,      2,      9,      4,      11,     6,      1,      8),
(40,    "C-Maj", "C",     4,  11,    6,   1,      8,      3,      10,     5,      0,      7,      2,      9),
(41,    "C#-Maj", "C#",   5,  0,     7,   2,      9,      4,      11,     6,      1,      8,      3,      10),
(42,    "D-Maj", "D",     6,  1,     8,   3,      10,     5,      0,      7,      2,      9,      4,      11),
(43,    "Eb-Maj", "Eb",   7,  2,     9,   4,      11,     6,      1,      8,      3,      10,     5,      0),
(44,    "E-Maj", "E",     8,  3,     10,  5,      0,      7,      2,      9,      4,      11,     6,      1),
(45,    "F-Maj", "F",     9,  4,     11,  6,      1,      8,      3,      10,     5,      0,      7,      2),
(46,    "F#-Maj", "F#",   10, 5,     0,   7,      2,      9,      4,      11,     6,      1,      8,      3)
]


// The same dictionary in two senses.

let harmonicaBaseDict =
[ // should be calculated..
    "Low G" : 23,
    "Low Ab" :24,
    "Low A" :25,
    "Low Bb" : 26,
    "Low B" : 27,
    "Low C" : 28,
    "Low C#" : 29,
    "Low D" : 30,
    "Low Eb" : 31,
    "Low E" : 32,
    "Low F"  : 33,
    "Low F#" : 34,
    "G-Maj" : 35,
    "Ab-Maj" : 36,
    "A-Maj"  : 37,
    "Bb-Maj" : 38,
    "B-Maj" : 39,
    "C-Maj" : 40,
    "C#-Maj" : 41,
    "D-Maj" : 42,
    "Eb-Maj" : 43,
    "E-Maj" : 44,
    "F-Maj" : 45,
    "F#-Maj" : 46
]

let harmonicaDictRev =

[ 23 : "Low G",
  24 : "Low Ab",
  25 : "Low A",
  26 : "Low Bb",
  27 : "Low B",
  28 : "Low C",
  29 : "Low C#",
  30 : "Low D",
31 : "Low Eb",
32 : "Low E",
33 : "Low F",
34 : "Low F#",
35 : "G-Maj",
36 : "Ab-Maj",
37 : "A-Maj",
38 : "Bb-Maj",
39 : "B-Maj",
40 : "C-Maj",
41 : "C#-Maj",
42 : "D-Maj",
43 : "Eb-Maj",
44 : "E-Maj",
45 : "F-Maj",
46 : "F#-Maj"
]


// Returns an ordered list

func orderHarmonicaArray () -> [String] {
    var retArray : [String] = []
    for i in stride (from : 23, to:   46, by:  1)
{
    
    retArray.append (harmonicaDictRev[i] ?? "")
}
    print (retArray)
    return retArray
}

var harmonicaBaseKeys = orderHarmonicaArray()
