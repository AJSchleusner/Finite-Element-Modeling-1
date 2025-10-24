// den0 = 3.5; 
den1 = 20.0; 
den2 =  4.0; 
den3 =  0.4; 

// Parameters --------------------------------------------------------------------------------------------------------------------
fg  = 3.6;        // gap fingers occupy between microchannel electrodes (um, x-axis)
hch = 11;         // full height of channel electrodes (um, y-axis)
gch = 7;          // full gap between channel walls, width of channel (um, y-axis)
dch = 1.5;        // depth of channel, wall height (um, z-axis)
dHe = 1.38;       // depth of helium in the channel (um, z-axis)
mt  = 0.1 + dch;  // thickness of the metal on the gate electrode (um, z-axis)
wd  = 80;         // wafer depth (um, z-axis)
tv  = 80;         // wafer surface to top of vacuum (um, z-axis)

// For purposes of layers in the z-axis, the thousands place will denote the different layer (0 being bottom),
// and all points, lines, and surfaces that exist above prior points, lines, and surfaces will have the same
// last three digits.

// Base Layer (0000 Series) ------------------------------------------------------------------------------------------------------

// Left Channel Electrode (index: 1-39)

// Points on edge of Left Channel Electrode
Point(1)  = {-fg/2 - 1.2,  hch/2 + 3.5, 0, den3};
Point(2)  = {-fg/2,        hch/2 + 3.1, 0, den3};
Point(3)  = {-fg/2,        gch/2 + 3.5, 0, den3};
Point(4)  = {-fg/2,       -gch/2 + 3.5, 0, den3};
Point(5)  = {-fg/2,       -hch/2 + 3.9, 0, den3};
Point(6)  = {-fg/2 - 1.2, -hch/2 + 3.5, 0, den3};
Point(7)  = {-40, -hch/2 + 3.5, 0, den3};
Point(8)  = {-42, -hch/2 + 3.5, 0, den3};
Point(9)  = {-47, -hch/2 + 3.5, 0, den3};
Point(10) = {-47, -0.4, 0, den3};
Point(11) = {-47,    7, 0, den3};
Point(12) = {-47,    9, 0, den3};
Point(13) = {-48.4, 10, 0, den3};
Point(14) = {-52,   11, 0, den3};
Point(15) = {-52,   12, 0, den3};
Point(16) = {-457,  12, 0, den3};
Point(17) = {-457,  29, 0, den3};
Point(18) = {-453,  29, 0, den3};
Point(19) = {-453,  16, 0, den3};
Point(20) = {-52,   16, 0, den3};
Point(21) = {-52,   17, 0, den3};
Point(22) = {-49,   17, 0, den3};
Point(23) = {-45,   10, 0, den3};
Point(24) = {-43, hch/2 + 3.5, 0, den3};
Point(25) = {-42, hch/2 + 3.5, 0, den3};
Point(26) = {-40, hch/2 + 3.5, 0, den3};

// Points internal to Left Channel Electrode
Point(30) = {-40, gch/2 + 3.5, 0, den3};
Point(31) = {-40,-gch/2 + 3.5, 0, den3};
Point(32) = {-42, 0, 0, den3};
Point(33) = {-46, 0, 0, den3};
Point(34) = {-42, 7, 0, den3};

// Lines on edge of Left Channel Electrode
Line(1)  = {1,2};
Line(2)  = {2,3};
Line(3)  = {3,4};
Line(4)  = {4,5};
Line(5)  = {5,6};
Line(6)  = {6,7};
Line(7)  = {7,8};
Line(8)  = {8,9};
Line(9)  = {9,10};
Line(10) = {10,11};
Line(11) = {11,12};
Line(12) = {12,13};
Line(13) = {13,14};
Line(14) = {14,15};
Line(15) = {15,16};
Line(16) = {16,17};
Line(17) = {17,18};
Line(18) = {18,19};
Line(19) = {19,20};
Line(20) = {20,21};
Line(21) = {21,22};
Line(22) = {22,23};
Line(23) = {23,24};
Line(24) = {24,25};
Line(25) = {25,26};
Line(26) = {26, 1};

// Lines internal to Left Channel Electrode
Line(30) = {10,33};
Line(31) = {33,32};
Line(32) = {32, 8};
Line(33) = { 7,31};
Line(34) = {31, 4};
Line(35) = { 3,30};
Line(36) = {30,26};
Line(37) = {25,34};
Line(38) = {34,11};

// Curve Loops internal to Left Channel Electrode
Curve Loop(1) = {30,31,32,8,9};
Curve Loop(2) = {33,34, 4,5,6};
Curve Loop(3) = {35,36,26,1,2};
Curve Loop(4) = {37,38,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
Curve Loop(5) = {-3,35,36,-25,37,38,-10,30,31,32,-7,33,34};

// Plane Surfaces of Left Channel Electrode
Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};

// Right Channel Electrode (index: 40-79)

Point(40) = {fg/2 + 1.2,  hch/2 + 3.5, 0, den3};
Point(41) = {fg/2,        hch/2 + 3.1, 0, den3};
Point(42) = {fg/2,        gch/2 + 3.5, 0, den3};
Point(43) = {fg/2,       -gch/2 + 3.5, 0, den3};
Point(44) = {fg/2,       -hch/2 + 3.9, 0, den3};
Point(45) = {fg/2 + 1.2, -hch/2 + 3.5, 0, den3};
Point(46) = {40, -hch/2 + 3.5, 0, den3};
Point(47) = {42, -hch/2 + 3.5, 0, den3};
Point(48) = {47, -hch/2 + 3.5, 0, den3};
Point(49) = {47, -0.4, 0, den3};
Point(50) = {47,    7, 0, den3};
Point(51) = {47,    9, 0, den3};
Point(52) = {48.4, 10, 0, den3};
Point(53) = {52,   11, 0, den3};
Point(54) = {52,   12, 0, den3};
Point(55) = {457,  12, 0, den3};
Point(56) = {457,  29, 0, den3};
Point(57) = {453,  29, 0, den3};
Point(58) = {453,  16, 0, den3};
Point(59) = {52,   16, 0, den3};
Point(60) = {52,   17, 0, den3};
Point(61) = {49,   17, 0, den3};
Point(62) = {45,   10, 0, den3};
Point(63) = {43, hch/2 + 3.5, 0, den3};
Point(64) = {42, hch/2 + 3.5, 0, den3};
Point(65) = {40, hch/2 + 3.5, 0, den3};

// Points internal to Right Channel Electrode
Point(70) = {40, gch/2 + 3.5, 0, den3};
Point(71) = {40,-gch/2 + 3.5, 0, den3};
Point(72) = {42, 0, 0, den3};
Point(73) = {46, 0, 0, den3};
Point(74) = {42, 7, 0, den3};

// Lines on edge of Right Channel Electrode
Line(40) = {40,41};
Line(41) = {41,42};
Line(42) = {42,43};
Line(43) = {43,44};
Line(44) = {44,45};
Line(45) = {45,46};
Line(46) = {46,47};
Line(47) = {47,48};
Line(48) = {48,49};
Line(49) = {49,50};
Line(50) = {50,51};
Line(51) = {51,52};
Line(52) = {52,53};
Line(53) = {53,54};
Line(54) = {54,55};
Line(55) = {55,56};
Line(56) = {56,57};
Line(57) = {57,58};
Line(58) = {58,59};
Line(59) = {59,60};
Line(60) = {60,61};
Line(61) = {61,62};
Line(62) = {62,63};
Line(63) = {63,64};
Line(64) = {64,65};
Line(65) = {65,40};

// Lines internal to Right Channel Electrode
Line(70) = {49,73};
Line(71) = {73,72};
Line(72) = {72,47};
Line(73) = {46,71};
Line(74) = {71,43};
Line(75) = {42,70};
Line(76) = {70,65};
Line(77) = {64,74};
Line(78) = {74,50};

// Curve Loops internal to Right Channel Electrode
Curve Loop(41) = {70,71,72,47,48};
Curve Loop(42) = {73,74,43,44,45};
Curve Loop(43) = {75,76,65,40,41};
Curve Loop(44) = {77,78,50,51,52,53,54,55,56,57,58,59,60,61,62,63};
Curve Loop(45) = {-42,75,76,-64,77,78,-49,70,71,72,-46,73,74};

// Plane Surfaces of Right Channel Electrode
Plane Surface(41) = {41};
Plane Surface(42) = {42};
Plane Surface(43) = {43};
Plane Surface(44) = {44};
Plane Surface(45) = {45};

// Left Reservoir Electrode (index: 100-199)

// Points on edge of Left Reservoir Electrode
Point(101) = {-49.25,    9, 0, den3};
Point(102) = { -47.4, 8.25, 0, den3};
Point(103) = { -47.4,    7, 0, den3};
Point(104) = { -47.4,-0.56, 0, den3};
Point(105) = { -47.4,   -7, 0, den3};
Point(106) = {-48,   -7, 0, den3};
Point(107) = {-48, -278, 0, den3};
Point(108) = {-449,-278, 0, den3};
Point(109) = {-453,-282, 0, den3};
Point(110) = {-453,-304, 0, den3};
Point(111) = {-457,-304, 0, den3};
Point(112) = {-457,   9, 0, den3};

// Lines on edge of Left Reservoir Electrode
Line(101) = {101,102};
Line(102) = {102,103};
Line(103) = {103,104};
Line(104) = {104,105};
Line(105) = {105,106};
Line(106) = {106,107};
Line(107) = {107,108};
Line(108) = {108,109};
Line(109) = {109,110};
Line(110) = {110,111};
Line(111) = {111,112};
Line(112) = {112,101};

// Left Reservoir internal points
Point(113) = { -62,  -4, 0, den3}; // Inner Rectangle 1
Point(114) = { -62,  -7, 0, den3};
Point(115) = {-451,  -7, 0, den2};
Point(116) = {-451,  -4, 0, den2};
Point(117) = { -62, -21, 0, den3}; // Inner Rectangle 2
Point(118) = { -62, -24, 0, den3};
Point(119) = {-451, -24, 0, den2};
Point(120) = {-451, -21, 0, den2};
Point(121) = { -62, -38, 0, den3}; // Inner Rectangle 3
Point(122) = { -62, -41, 0, den3};
Point(123) = {-451, -41, 0, den2};
Point(124) = {-451, -38, 0, den2};
Point(125) = { -62, -55, 0, den3}; // Inner Rectangle 4
Point(126) = { -62, -58, 0, den3};
Point(127) = {-451, -58, 0, den2};
Point(128) = {-451, -55, 0, den2};
Point(129) = { -62, -72, 0, den3}; // Inner Rectangle 5
Point(130) = { -62, -75, 0, den3};
Point(131) = {-451, -75, 0, den2};
Point(132) = {-451, -72, 0, den2};
Point(133) = { -62, -89, 0, den3}; // Inner Rectangle 6
Point(134) = { -62, -92, 0, den3};
Point(135) = {-451, -92, 0, den2};
Point(136) = {-451, -89, 0, den2};
Point(137) = { -62,-106, 0, den3}; // Inner Rectangle 7
Point(138) = { -62,-109, 0, den3};
Point(139) = {-451,-109, 0, den2};
Point(140) = {-451,-106, 0, den2};
Point(141) = { -62,-123, 0, den3}; // Inner Rectangle 8
Point(142) = { -62,-126, 0, den3};
Point(143) = {-451,-126, 0, den2};
Point(144) = {-451,-123, 0, den2};
Point(145) = { -62,-140, 0, den3}; // Inner Rectangle 8
Point(146) = { -62,-143, 0, den3};
Point(147) = {-451,-143, 0, den2};
Point(148) = {-451,-140, 0, den2};
Point(149) = { -62,-157, 0, den3}; // Inner Rectangle 10
Point(150) = { -62,-160, 0, den3};
Point(151) = {-451,-160, 0, den2};
Point(152) = {-451,-157, 0, den2};
Point(153) = { -62,-174, 0, den3}; // Inner Rectangle 11
Point(154) = { -62,-177, 0, den3};
Point(155) = {-451,-177, 0, den2};
Point(156) = {-451,-174, 0, den2};
Point(157) = { -62,-191, 0, den3}; // Inner Rectangle 12
Point(158) = { -62,-194, 0, den3};
Point(159) = {-451,-194, 0, den2};
Point(160) = {-451,-191, 0, den2};
Point(161) = { -62,-208, 0, den3}; // Inner Rectangle 13
Point(162) = { -62,-211, 0, den3};
Point(163) = {-451,-211, 0, den2};
Point(164) = {-451,-208, 0, den2};
Point(165) = { -62,-225, 0, den3}; // Inner Rectangle 14
Point(166) = { -62,-228, 0, den3};
Point(167) = {-451,-228, 0, den2};
Point(168) = {-451,-225, 0, den2};
Point(169) = { -62,-242, 0, den3}; // Inner Rectangle 15
Point(170) = { -62,-245, 0, den3};
Point(171) = {-451,-245, 0, den2};
Point(172) = {-451,-242, 0, den2};
Point(173) = { -62,-259, 0, den3}; // Inner Rectangle 16
Point(174) = { -62,-262, 0, den3};
Point(175) = {-451,-262, 0, den2};
Point(176) = {-451,-259, 0, den2};

// Left Reservoir internal lines 
Line(113) = {113,114}; // Inner Rectangle 1
Line(114) = {114,115};
Line(115) = {115,116};
Line(116) = {116,113};
Line(117) = {117,118}; // Inner Rectangle 2
Line(118) = {118,119};
Line(119) = {119,120};
Line(120) = {120,117};
Line(121) = {121,122}; // Inner Rectangle 3
Line(122) = {122,123};
Line(123) = {123,124};
Line(124) = {124,121};
Line(125) = {125,126}; // Inner Rectangle 4
Line(126) = {126,127};
Line(127) = {127,128};
Line(128) = {128,125};
Line(129) = {129,130}; // Inner Rectangle 5
Line(130) = {130,131};
Line(131) = {131,132};
Line(132) = {132,129};
Line(133) = {133,134}; // Inner Rectangle 6
Line(134) = {134,135};
Line(135) = {135,136};
Line(136) = {136,133};
Line(137) = {137,138}; // Inner Rectangle 7
Line(138) = {138,139};
Line(139) = {139,140};
Line(140) = {140,137};
Line(141) = {141,142}; // Inner Rectangle 8
Line(142) = {142,143};
Line(143) = {143,144};
Line(144) = {144,141};
Line(145) = {145,146}; // Inner Rectangle 9
Line(146) = {146,147};
Line(147) = {147,148};
Line(148) = {148,145};
Line(149) = {149,150}; // Inner Rectangle 10
Line(150) = {150,151};
Line(151) = {151,152};
Line(152) = {152,149};
Line(153) = {153,154}; // Inner Rectangle 11
Line(154) = {154,155};
Line(155) = {155,156};
Line(156) = {156,153};
Line(157) = {157,158}; // Inner Rectangle 12
Line(158) = {158,159};
Line(159) = {159,160};
Line(160) = {160,157};
Line(161) = {161,162}; // Inner Rectangle 13
Line(162) = {162,163};
Line(163) = {163,164};
Line(164) = {164,161};
Line(165) = {165,166}; // Inner Rectangle 14
Line(166) = {166,167};
Line(167) = {167,168};
Line(168) = {168,165};
Line(169) = {169,170}; // Inner Rectangle 15
Line(170) = {170,171};
Line(171) = {171,172};
Line(172) = {172,169};
Line(173) = {173,174}; // Inner Rectangle 16
Line(174) = {174,175};
Line(175) = {175,176};
Line(176) = {176,173};

// Left Reservoir internal Curve Loops
Curve Loop(113) = {113,114,115,116}; // Inner Rectangle 1
Curve Loop(117) = {117,118,119,120}; // Inner Rectangle 2
Curve Loop(121) = {121,122,123,124}; // Inner Rectangle 3
Curve Loop(125) = {125,126,127,128}; // Inner Rectangle 4
Curve Loop(129) = {129,130,131,132}; // Inner Rectangle 5
Curve Loop(133) = {133,134,135,136}; // Inner Rectangle 6
Curve Loop(137) = {137,138,139,140}; // Inner Rectangle 7
Curve Loop(141) = {141,142,143,144}; // Inner Rectangle 8
Curve Loop(145) = {145,146,147,148}; // Inner Rectangle 9
Curve Loop(149) = {149,150,151,152}; // Inner Rectangle 10
Curve Loop(153) = {153,154,155,156}; // Inner Rectangle 11
Curve Loop(157) = {157,158,159,160}; // Inner Rectangle 12
Curve Loop(161) = {161,162,163,164}; // Inner Rectangle 13
Curve Loop(165) = {165,166,167,168}; // Inner Rectangle 14
Curve Loop(169) = {169,170,171,172}; // Inner Rectangle 15
Curve Loop(173) = {173,174,175,176}; // Inner Rectangle 16

// Left Reservoir internal Plane Surfaces
Plane Surface(113) = {113};          // Inner Rectangle 1
Plane Surface(117) = {117};          // Inner Rectangle 2
Plane Surface(121) = {121};          // Inner Rectangle 3
Plane Surface(125) = {125};          // Inner Rectangle 4
Plane Surface(129) = {129};          // Inner Rectangle 5
Plane Surface(133) = {133};          // Inner Rectangle 6
Plane Surface(137) = {137};          // Inner Rectangle 7
Plane Surface(141) = {141};          // Inner Rectangle 8
Plane Surface(145) = {145};          // Inner Rectangle 9
Plane Surface(149) = {149};          // Inner Rectangle 10
Plane Surface(153) = {153};          // Inner Rectangle 11
Plane Surface(157) = {157};          // Inner Rectangle 12
Plane Surface(161) = {161};          // Inner Rectangle 13
Plane Surface(165) = {165};          // Inner Rectangle 14
Plane Surface(169) = {169};          // Inner Rectangle 15
Plane Surface(173) = {173};          // Inner Rectangle 16

// Right Reservoir Electrode (index: 200-299)

// Points on edge of Right Reservoir Electrode
Point(201) = {49.25,    9, 0, den3};
Point(202) = { 47.4, 8.25, 0, den3};
Point(203) = { 47.4,    7, 0, den3};
Point(204) = { 47.4,-0.56, 0, den3};
Point(205) = { 47.4,   -7, 0, den3};
Point(206) = {48,   -7, 0, den3};
Point(207) = {48, -278, 0, den3};
Point(208) = {449,-278, 0, den3};
Point(209) = {453,-282, 0, den3};
Point(210) = {453,-304, 0, den3};
Point(211) = {457,-304, 0, den3};
Point(212) = {457,   9, 0, den3};

// Lines on edge of Right Reservoir Electrode
Line(201) = {201,202};
Line(202) = {202,203};
Line(203) = {203,204};
Line(204) = {204,205};
Line(205) = {205,206};
Line(206) = {206,207};
Line(207) = {207,208};
Line(208) = {208,209};
Line(209) = {209,210};
Line(210) = {210,211};
Line(211) = {211,212};
Line(212) = {212,201};

// Right Reservoir internal points
Point(213) = { 62,  -4, 0, den3}; // Inner Rectangle 1
Point(214) = { 62,  -7, 0, den3};
Point(215) = {451,  -7, 0, den2};
Point(216) = {451,  -4, 0, den2};
Point(217) = { 62, -21, 0, den3}; // Inner Rectangle 2
Point(218) = { 62, -24, 0, den3};
Point(219) = {451, -24, 0, den2};
Point(220) = {451, -21, 0, den2};
Point(221) = { 62, -38, 0, den3}; // Inner Rectangle 3
Point(222) = { 62, -41, 0, den3};
Point(223) = {451, -41, 0, den2};
Point(224) = {451, -38, 0, den2};
Point(225) = { 62, -55, 0, den3}; // Inner Rectangle 4
Point(226) = { 62, -58, 0, den3};
Point(227) = {451, -58, 0, den2};
Point(228) = {451, -55, 0, den2};
Point(229) = { 62, -72, 0, den3}; // Inner Rectangle 5
Point(230) = { 62, -75, 0, den3};
Point(231) = {451, -75, 0, den2};
Point(232) = {451, -72, 0, den2};
Point(233) = { 62, -89, 0, den3}; // Inner Rectangle 6
Point(234) = { 62, -92, 0, den3};
Point(235) = {451, -92, 0, den2};
Point(236) = {451, -89, 0, den2};
Point(237) = { 62,-106, 0, den3}; // Inner Rectangle 7
Point(238) = { 62,-109, 0, den3};
Point(239) = {451,-109, 0, den2};
Point(240) = {451,-106, 0, den2};
Point(241) = { 62,-123, 0, den3}; // Inner Rectangle 8
Point(242) = { 62,-126, 0, den3};
Point(243) = {451,-126, 0, den2};
Point(244) = {451,-123, 0, den2};
Point(245) = { 62,-140, 0, den3}; // Inner Rectangle 8
Point(246) = { 62,-143, 0, den3};
Point(247) = {451,-143, 0, den2};
Point(248) = {451,-140, 0, den2};
Point(249) = { 62,-157, 0, den3}; // Inner Rectangle 10
Point(250) = { 62,-160, 0, den3};
Point(251) = {451,-160, 0, den2};
Point(252) = {451,-157, 0, den2};
Point(253) = { 62,-174, 0, den3}; // Inner Rectangle 11
Point(254) = { 62,-177, 0, den3};
Point(255) = {451,-177, 0, den2};
Point(256) = {451,-174, 0, den2};
Point(257) = { 62,-191, 0, den3}; // Inner Rectangle 12
Point(258) = { 62,-194, 0, den3};
Point(259) = {451,-194, 0, den2};
Point(260) = {451,-191, 0, den2};
Point(261) = { 62,-208, 0, den3}; // Inner Rectangle 13
Point(262) = { 62,-211, 0, den3};
Point(263) = {451,-211, 0, den2};
Point(264) = {451,-208, 0, den2};
Point(265) = { 62,-225, 0, den3}; // Inner Rectangle 14
Point(266) = { 62,-228, 0, den3};
Point(267) = {451,-228, 0, den2};
Point(268) = {451,-225, 0, den2};
Point(269) = { 62,-242, 0, den3}; // Inner Rectangle 15
Point(270) = { 62,-245, 0, den3};
Point(271) = {451,-245, 0, den2};
Point(272) = {451,-242, 0, den2};
Point(273) = { 62,-259, 0, den3}; // Inner Rectangle 16
Point(274) = { 62,-262, 0, den3};
Point(275) = {451,-262, 0, den2};
Point(276) = {451,-259, 0, den2};

// Right Reservoir internal lines 
Line(213) = {213,214}; // Inner Rectangle 1
Line(214) = {214,215};
Line(215) = {215,216};
Line(216) = {216,213};
Line(217) = {217,218}; // Inner Rectangle 2
Line(218) = {218,219};
Line(219) = {219,220};
Line(220) = {220,217};
Line(221) = {221,222}; // Inner Rectangle 3
Line(222) = {222,223};
Line(223) = {223,224};
Line(224) = {224,221};
Line(225) = {225,226}; // Inner Rectangle 4
Line(226) = {226,227};
Line(227) = {227,228};
Line(228) = {228,225};
Line(229) = {229,230}; // Inner Rectangle 5
Line(230) = {230,231};
Line(231) = {231,232};
Line(232) = {232,229};
Line(233) = {233,234}; // Inner Rectangle 6
Line(234) = {234,235};
Line(235) = {235,236};
Line(236) = {236,233};
Line(237) = {237,238}; // Inner Rectangle 7
Line(238) = {238,239};
Line(239) = {239,240};
Line(240) = {240,237};
Line(241) = {241,242}; // Inner Rectangle 8
Line(242) = {242,243};
Line(243) = {243,244};
Line(244) = {244,241};
Line(245) = {245,246}; // Inner Rectangle 9
Line(246) = {246,247};
Line(247) = {247,248};
Line(248) = {248,245};
Line(249) = {249,250}; // Inner Rectangle 10
Line(250) = {250,251};
Line(251) = {251,252};
Line(252) = {252,249};
Line(253) = {253,254}; // Inner Rectangle 11
Line(254) = {254,255};
Line(255) = {255,256};
Line(256) = {256,253};
Line(257) = {257,258}; // Inner Rectangle 12
Line(258) = {258,259};
Line(259) = {259,260};
Line(260) = {260,257};
Line(261) = {261,262}; // Inner Rectangle 13
Line(262) = {262,263};
Line(263) = {263,264};
Line(264) = {264,261};
Line(265) = {265,266}; // Inner Rectangle 14
Line(266) = {266,267};
Line(267) = {267,268};
Line(268) = {268,265};
Line(269) = {269,270}; // Inner Rectangle 15
Line(270) = {270,271};
Line(271) = {271,272};
Line(272) = {272,269};
Line(273) = {273,274}; // Inner Rectangle 16
Line(274) = {274,275};
Line(275) = {275,276};
Line(276) = {276,273};

// Right Reservoir internal Curve Loops
Curve Loop(213) = {213,214,215,216}; // Inner Rectangle 1
Curve Loop(217) = {217,218,219,220}; // Inner Rectangle 2
Curve Loop(221) = {221,222,223,224}; // Inner Rectangle 3
Curve Loop(225) = {225,226,227,228}; // Inner Rectangle 4
Curve Loop(229) = {229,230,231,232}; // Inner Rectangle 5
Curve Loop(233) = {233,234,235,236}; // Inner Rectangle 6
Curve Loop(237) = {237,238,239,240}; // Inner Rectangle 7
Curve Loop(241) = {241,242,243,244}; // Inner Rectangle 8
Curve Loop(245) = {245,246,247,248}; // Inner Rectangle 9
Curve Loop(249) = {249,250,251,252}; // Inner Rectangle 10
Curve Loop(253) = {253,254,255,256}; // Inner Rectangle 11
Curve Loop(257) = {257,258,259,260}; // Inner Rectangle 12
Curve Loop(261) = {261,262,263,264}; // Inner Rectangle 13
Curve Loop(265) = {265,266,267,268}; // Inner Rectangle 14
Curve Loop(269) = {269,270,271,272}; // Inner Rectangle 15
Curve Loop(273) = {273,274,275,276}; // Inner Rectangle 16

// Right Reservoir internal Plane Surfaces
Plane Surface(213) = {213};          // Inner Rectangle 1
Plane Surface(217) = {217};          // Inner Rectangle 2
Plane Surface(221) = {221};          // Inner Rectangle 3
Plane Surface(225) = {225};          // Inner Rectangle 4
Plane Surface(229) = {229};          // Inner Rectangle 5
Plane Surface(233) = {233};          // Inner Rectangle 6
Plane Surface(237) = {237};          // Inner Rectangle 7
Plane Surface(241) = {241};          // Inner Rectangle 8
Plane Surface(245) = {245};          // Inner Rectangle 9
Plane Surface(249) = {249};          // Inner Rectangle 10
Plane Surface(253) = {253};          // Inner Rectangle 11
Plane Surface(257) = {257};          // Inner Rectangle 12
Plane Surface(261) = {261};          // Inner Rectangle 13
Plane Surface(265) = {265};          // Inner Rectangle 14
Plane Surface(269) = {269};          // Inner Rectangle 15
Plane Surface(273) = {273};          // Inner Rectangle 16

// Right Reservoir Electrode Trapezoids  





// Y-Positive Gate Electrode remainder, not already defined as part of channel electrodes (index: 300-309)

// Points on edge of Y-PGE remainder
// 65
// 40
// 41
// 42
//  3
//  2
//  1
// 26
Point(301) = {-40, 29, 0, den2};
Point(302) = { 40, 29, 0, den2};

// Lines on edge of Y-PGE remainder
Line(301) = { 42,  3};
Line(302) = { 26,301};
Line(303) = {301,302};
Line(304) = {302, 65};

// Curve Loop of Y-PGE remainder
Curve Loop(301)    = {65,40,41,301,-2,-1,-26,302,303,304};
Plane Surface(301) = {301};

// Y-Negative Gate Electrode remainder, not already defined as part of channel electrodes (index: 310-319)

// Points on edge of Y-NGE remainder
//  7
//  6
//  5
//  4
// 43
// 44
// 45
// 46
Point(310) = { 40,  -24, 0, den2};
Point(311) = { 17,  -46, 0, den2};
Point(312) = { 17, -304, 0, den2};
Point(313) = {-17, -304, 0, den2};
Point(314) = {-17,  -46, 0, den2};
Point(315) = {-40,  -24, 0, den2};

// Lines on edge of Y-NGE remainder
Line(310) = { 46,310};
Line(311) = {310,311};
Line(312) = {311,312};
Line(313) = {312,313};
Line(314) = {313,314};
Line(315) = {314,315};
Line(316) = {315,  7};
Line(317) = {  4, 43};

// Curve Loop of Y-NGE remainder
Curve Loop(310) = {317,43,44,45,310,311,312,313,314,315,316,-6,-5,-4};
Plane Surface(310) = {310};

// Substrate in Channel (index: 320-329)
Curve Loop(320)    = {3,317,-42,301};
Plane Surface(320) = {320};

// Below Left Guard Electrode (index: 400-499)

// Points on edge of Left Guard Electrode
Point(401) = { -51,  -2, 0, den2};
Point(402) = { -51,-273, 0, den2};
Point(403) = {-454,-273, 0, den2};
Point(404) = {-454,-265, 0, den2};
Point(405) = { -59,-265, 0, den2};
Point(406) = { -59,-256, 0, den2};
Point(407) = {-454,-256, 0, den2};
Point(408) = {-454,-248, 0, den2};
Point(409) = { -59,-248, 0, den2};
Point(410) = { -59,-239, 0, den2};
Point(411) = {-454,-239, 0, den2};
Point(412) = {-454,-231, 0, den2};
Point(413) = { -59,-231, 0, den2};
Point(414) = { -59,-222, 0, den2};
Point(415) = {-454,-222, 0, den2};
Point(416) = {-454,-214, 0, den2};
Point(417) = { -59,-214, 0, den2};
Point(418) = { -59,-205, 0, den2};
Point(419) = {-454,-205, 0, den2};
Point(420) = {-454,-197, 0, den2};
Point(421) = { -59,-197, 0, den2};
Point(422) = { -59,-188, 0, den2};
Point(423) = {-454,-188, 0, den2};
Point(424) = {-454,-180, 0, den2};
Point(425) = { -59,-180, 0, den2};
Point(426) = { -59,-171, 0, den2};
Point(427) = {-454,-171, 0, den2};
Point(428) = {-454,-163, 0, den2};
Point(429) = { -59,-163, 0, den2};
Point(430) = { -59,-154, 0, den2};
Point(431) = {-454,-154, 0, den2};
Point(432) = {-454,-146, 0, den2};
Point(433) = { -59,-146, 0, den2};
Point(434) = { -59,-137, 0, den2};
Point(435) = {-454,-137, 0, den2};
Point(436) = {-454,-129, 0, den2};
Point(437) = { -59,-129, 0, den2};
Point(438) = { -59,-120, 0, den2};
Point(439) = {-454,-120, 0, den2};
Point(440) = {-454,-112, 0, den2};
Point(441) = { -59,-112, 0, den2};
Point(442) = { -59,-103, 0, den2};
Point(443) = {-454,-103, 0, den2};
Point(444) = {-454, -95, 0, den2};
Point(445) = { -59, -95, 0, den2};
Point(446) = { -59, -86, 0, den2};
Point(447) = {-454, -86, 0, den2};
Point(448) = {-454, -78, 0, den2};
Point(449) = { -59, -78, 0, den2};
Point(450) = { -59, -69, 0, den2};
Point(451) = {-454, -69, 0, den2};
Point(452) = {-454, -61, 0, den2};
Point(453) = { -59, -61, 0, den2};
Point(454) = { -59, -52, 0, den2};
Point(455) = {-454, -52, 0, den2};
Point(456) = {-454, -44, 0, den2};
Point(457) = { -59, -44, 0, den2};
Point(458) = { -59, -35, 0, den2};
Point(459) = {-454, -35, 0, den2};
Point(460) = {-454, -27, 0, den2};
Point(461) = { -59, -27, 0, den2};
Point(462) = { -59, -18, 0, den2};
Point(463) = {-454, -18, 0, den2};
Point(464) = {-454, -10, 0, den2};
Point(465) = { -59, -10, 0, den2};
Point(466) = { -59,  -1, 0, den2};
Point(467) = {-454,  -1, 0, den2};
Point(468) = {-454,   7, 0, den2};

Point(470) = { -42,  29, 0, den2};
Point(471) = {-499,  29, 0, den2};
Point(472) = {-499,-304, 0, den2};
Point(473) = { -21,-304, 0, den2};
Point(474) = { -21, -49, 0, den2};
Point(475) = { -42, -27, 0, den2};

// Lines on edge of Left Guard Electrode
Line(401) = {401,402};
Line(402) = {402,403};
Line(403) = {403,404};
Line(404) = {404,405};
Line(405) = {405,406};
Line(406) = {406,407};
Line(407) = {407,408};
Line(408) = {408,409};
Line(409) = {409,410};
Line(410) = {410,411};
Line(411) = {411,412};
Line(412) = {412,413};
Line(413) = {413,414};
Line(414) = {414,415};
Line(415) = {415,416};
Line(416) = {416,417};
Line(417) = {417,418};
Line(418) = {418,419};
Line(419) = {419,420};
Line(420) = {420,421};
Line(421) = {421,422};
Line(422) = {422,423};
Line(423) = {423,424};
Line(424) = {424,425};
Line(425) = {425,426};
Line(426) = {426,427};
Line(427) = {427,428};
Line(428) = {428,429};
Line(429) = {429,430};
Line(430) = {430,431};
Line(431) = {431,432};
Line(432) = {432,433};
Line(433) = {433,434};
Line(434) = {434,435};
Line(435) = {435,436};
Line(436) = {436,437};
Line(437) = {437,438};
Line(438) = {438,439};
Line(439) = {439,440};
Line(440) = {440,441};
Line(441) = {441,442};
Line(442) = {442,443};
Line(443) = {443,444};
Line(444) = {444,445};
Line(445) = {445,446};
Line(446) = {446,447};
Line(447) = {447,448};
Line(448) = {448,449};
Line(449) = {449,450};
Line(450) = {450,451};
Line(451) = {451,452};
Line(452) = {452,453};
Line(453) = {453,454};
Line(454) = {454,455};
Line(455) = {455,456};
Line(456) = {456,457};
Line(457) = {457,458};
Line(458) = {458,459};
Line(459) = {459,460};
Line(460) = {460,461};
Line(461) = {461,462};
Line(462) = {462,463};
Line(463) = {463,464};
Line(464) = {464,465};
Line(465) = {465,466};
Line(466) = {466,467};
Line(467) = {467,468};
Line(468) = {468,103};

Line(470) = {104,401};
Line(471) = {104, 10};
Line(472) = { 11,103};
Line(473) = { 25,470};
Line(474) = {470, 18};
Line(475) = { 17,471};
Line(476) = {471,472};
Line(477) = {472,111};
Line(478) = {110,473};
Line(479) = {473,474};
Line(480) = {474,475};
Line(481) = {475,  8};

// Curve Loops below Helium 
Curve Loop(401)    = {471,10,472,103}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(401) = {401};
Curve Loop(402)    = {103,470,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,
                      419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,
                      439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,
                      459,460,461,462,463,464,465,466,467,468}; // Bottom of Left Reservoir
Plane Surface(402) = {402};

// Left Reservoir Electrode Trapezoids  (index: 800-899)
Line(813) = {113,466};  // Trapezoid  1, Replacement: 465 -> 814,114,115,116,813
Line(814) = {465,114};
Line(817) = {117,462};  // Trapezoid  2, Replacement: 461 -> 818,118,119,120,817
Line(818) = {461,118};
Line(821) = {121,458};  // Trapezoid  3, Replacement: 457 -> 822,122,123,124,821
Line(822) = {457,122};
Line(825) = {125,454};  // Trapezoid  4, Replacement: 453 -> 826,126,127,128,825
Line(826) = {453,126};
Line(829) = {129,450};  // Trapezoid  5, Replacement: 449 -> 830,130,131,132,829
Line(830) = {449,130};
Line(833) = {133,446};  // Trapezoid  6, Replacement: 445 -> 834,134,135,136,833
Line(834) = {445,134};
Line(837) = {137,442};  // Trapezoid  7, Replacement: 441 -> 838,138,139,140,837
Line(838) = {441,138};
Line(841) = {141,438};  // Trapezoid  8, Replacement: 437 -> 842,142,143,144,841
Line(842) = {437,142};
Line(845) = {145,434};  // Trapezoid  9, Replacement: 433 -> 846,146,147,148,845
Line(846) = {433,146};
Line(849) = {149,430};  // Trapezoid 10, Replacement: 429 -> 850,150,151,152,849
Line(850) = {429,150};
Line(853) = {153,426};  // Trapezoid 11, Replacement: 425 -> 854,154,155,156,853
Line(854) = {425,154};
Line(857) = {157,422};  // Trapezoid 12, Replacement: 421 -> 858,158,159,160,857
Line(858) = {421,158};
Line(861) = {161,418};  // Trapezoid 13, Replacement: 417 -> 862,162,163,164,861
Line(862) = {417,162};
Line(865) = {165,414};  // Trapezoid 14, Replacement: 413 -> 866,166,167,168,865
Line(866) = {413,166};
Line(869) = {169,410};  // Trapezoid 15, Replacement: 409 -> 870,170,171,172,869
Line(870) = {409,170};
Line(873) = {173,406};  // Trapezoid 16, Replacement: 405 -> 874,174,175,176,873
Line(874) = {405,174};

Curve Loop(813)    = {813,-465,814,-113}; // Left Trapezoid  1
Plane Surface(813) = {813};
Curve Loop(817)    = {817,-461,818,-117}; // Left Trapezoid  2 
Plane Surface(817) = {817};
Curve Loop(821)    = {821,-457,822,-121}; // Left Trapezoid  3 
Plane Surface(821) = {821};
Curve Loop(825)    = {825,-453,826,-125}; // Left Trapezoid  4 
Plane Surface(825) = {825};
Curve Loop(829)    = {829,-449,830,-129}; // Left Trapezoid  5
Plane Surface(829) = {829};
Curve Loop(833)    = {833,-445,834,-133}; // Left Trapezoid  6
Plane Surface(833) = {833};
Curve Loop(837)    = {837,-441,838,-137}; // Left Trapezoid  7
Plane Surface(837) = {837};
Curve Loop(841)    = {841,-437,842,-141}; // Left Trapezoid  8
Plane Surface(841) = {841};
Curve Loop(845)    = {845,-433,846,-145}; // Left Trapezoid  9
Plane Surface(845) = {845};
Curve Loop(849)    = {849,-429,850,-149}; // Left Trapezoid 10
Plane Surface(849) = {849};
Curve Loop(853)    = {853,-425,854,-153}; // Left Trapezoid 11
Plane Surface(853) = {853};
Curve Loop(857)    = {857,-421,858,-157}; // Left Trapezoid 12
Plane Surface(857) = {857};
Curve Loop(861)    = {861,-417,862,-161}; // Left Trapezoid 13
Plane Surface(861) = {861};
Curve Loop(865)    = {865,-413,866,-165}; // Left Trapezoid 14
Plane Surface(865) = {865};
Curve Loop(869)    = {869,-409,870,-169}; // Left Trapezoid 15
Plane Surface(869) = {869};
Curve Loop(873)    = {873,-405,874,-173}; // Left Trapezoid 16
Plane Surface(873) = {873};

// Left Reservoir below dielectric Curve Loop (Trapezoid Version)
Curve Loop(801)    = {470,401,402,403,404,874,174,175,176,873,406,407,408,870,170,171,172,869,410,411,
                      412,866,166,167,168,865,414,415,416,862,162,163,164,861,418,419,420,858,158,159,
                      160,857,422,423,424,854,154,155,156,853,426,427,428,850,150,151,152,849,430,431,
                      432,846,146,147,148,845,434,435,436,842,142,143,144,841,438,439,440,838,138,139,
                      140,837,442,443,444,834,134,135,136,833,446,447,448,830,130,131,132,829,450,451,
                      452,826,126,127,128,825,454,455,456,822,122,123,124,821,458,459,460,818,118,119,
                      120,817,462,463,464,814,114,115,116,813,466,467,468,-102,-101,-112,-111,-110,
                      -109,-108,-107,-106,-105,-104}; // Bottom of Left Reservoir
Plane Surface(801) = {801};


// Only Left Guard Surfaces
Curve Loop(410)    = {101,102,-472,11,12,13,14,15,16,475,476,477,111,112};
Plane Surface(410) = {410};
Curve Loop(411)    = {478,479,480,481,8,9,-471,104,105,106,107,108,109};
Plane Surface(411) = {411};
Curve Loop(412)    = {18,19,20,21,22,23,24,473,474};
Plane Surface(412) = {412};

// Below Right Guard Electrode (index: 500-599)

// Points on edge of Right Guard Electrode
Point(501) = {  51,  -2, 0, den2};
Point(502) = {  51,-273, 0, den2};
Point(503) = { 454,-273, 0, den2};
Point(504) = { 454,-265, 0, den2};
Point(505) = {  59,-265, 0, den2};
Point(506) = {  59,-256, 0, den2};
Point(507) = { 454,-256, 0, den2};
Point(508) = { 454,-248, 0, den2};
Point(509) = {  59,-248, 0, den2};
Point(510) = {  59,-239, 0, den2};
Point(511) = { 454,-239, 0, den2};
Point(512) = { 454,-231, 0, den2};
Point(513) = {  59,-231, 0, den2};
Point(514) = {  59,-222, 0, den2};
Point(515) = { 454,-222, 0, den2};
Point(516) = { 454,-214, 0, den2};
Point(517) = {  59,-214, 0, den2};
Point(518) = {  59,-205, 0, den2};
Point(519) = { 454,-205, 0, den2};
Point(520) = { 454,-197, 0, den2};
Point(521) = {  59,-197, 0, den2};
Point(522) = {  59,-188, 0, den2};
Point(523) = { 454,-188, 0, den2};
Point(524) = { 454,-180, 0, den2};
Point(525) = {  59,-180, 0, den2};
Point(526) = {  59,-171, 0, den2};
Point(527) = { 454,-171, 0, den2};
Point(528) = { 454,-163, 0, den2};
Point(529) = {  59,-163, 0, den2};
Point(530) = {  59,-154, 0, den2};
Point(531) = { 454,-154, 0, den2};
Point(532) = { 454,-146, 0, den2};
Point(533) = {  59,-146, 0, den2};
Point(534) = {  59,-137, 0, den2};
Point(535) = { 454,-137, 0, den2};
Point(536) = { 454,-129, 0, den2};
Point(537) = {  59,-129, 0, den2};
Point(538) = {  59,-120, 0, den2};
Point(539) = { 454,-120, 0, den2};
Point(540) = { 454,-112, 0, den2};
Point(541) = {  59,-112, 0, den2};
Point(542) = {  59,-103, 0, den2};
Point(543) = { 454,-103, 0, den2};
Point(544) = { 454, -95, 0, den2};
Point(545) = {  59, -95, 0, den2};
Point(546) = {  59, -86, 0, den2};
Point(547) = { 454, -86, 0, den2};
Point(548) = { 454, -78, 0, den2};
Point(549) = {  59, -78, 0, den2};
Point(550) = {  59, -69, 0, den2};
Point(551) = { 454, -69, 0, den2};
Point(552) = { 454, -61, 0, den2};
Point(553) = {  59, -61, 0, den2};
Point(554) = {  59, -52, 0, den2};
Point(555) = { 454, -52, 0, den2};
Point(556) = { 454, -44, 0, den2};
Point(557) = {  59, -44, 0, den2};
Point(558) = {  59, -35, 0, den2};
Point(559) = { 454, -35, 0, den2};
Point(560) = { 454, -27, 0, den2};
Point(561) = {  59, -27, 0, den2};
Point(562) = {  59, -18, 0, den2};
Point(563) = { 454, -18, 0, den2};
Point(564) = { 454, -10, 0, den2};
Point(565) = {  59, -10, 0, den2};
Point(566) = {  59,  -1, 0, den2};
Point(567) = { 454,  -1, 0, den2};
Point(568) = { 454,   7, 0, den2};

Point(570) = {  42,  29, 0, den2};
Point(571) = { 499,  29, 0, den2};
Point(572) = { 499,-304, 0, den2};
Point(573) = {  21,-304, 0, den2};
Point(574) = {  21, -49, 0, den2};
Point(575) = {  42, -27, 0, den2};

// Lines on edge of Left Guard Electrode
Line(501) = {501,502};
Line(502) = {502,503};
Line(503) = {503,504};
Line(504) = {504,505};
Line(505) = {505,506};
Line(506) = {506,507};
Line(507) = {507,508};
Line(508) = {508,509};
Line(509) = {509,510};
Line(510) = {510,511};
Line(511) = {511,512};
Line(512) = {512,513};
Line(513) = {513,514};
Line(514) = {514,515};
Line(515) = {515,516};
Line(516) = {516,517};
Line(517) = {517,518};
Line(518) = {518,519};
Line(519) = {519,520};
Line(520) = {520,521};
Line(521) = {521,522};
Line(522) = {522,523};
Line(523) = {523,524};
Line(524) = {524,525};
Line(525) = {525,526};
Line(526) = {526,527};
Line(527) = {527,528};
Line(528) = {528,529};
Line(529) = {529,530};
Line(530) = {530,531};
Line(531) = {531,532};
Line(532) = {532,533};
Line(533) = {533,534};
Line(534) = {534,535};
Line(535) = {535,536};
Line(536) = {536,537};
Line(537) = {537,538};
Line(538) = {538,539};
Line(539) = {539,540};
Line(540) = {540,541};
Line(541) = {541,542};
Line(542) = {542,543};
Line(543) = {543,544};
Line(544) = {544,545};
Line(545) = {545,546};
Line(546) = {546,547};
Line(547) = {547,548};
Line(548) = {548,549};
Line(549) = {549,550};
Line(550) = {550,551};
Line(551) = {551,552};
Line(552) = {552,553};
Line(553) = {553,554};
Line(554) = {554,555};
Line(555) = {555,556};
Line(556) = {556,557};
Line(557) = {557,558};
Line(558) = {558,559};
Line(559) = {559,560};
Line(560) = {560,561};
Line(561) = {561,562};
Line(562) = {562,563};
Line(563) = {563,564};
Line(564) = {564,565};
Line(565) = {565,566};
Line(566) = {566,567};
Line(567) = {567,568};
Line(568) = {568,203};

Line(570) = {204,501};
Line(571) = {204, 49};
Line(572) = { 50,203};
Line(573) = { 64,570};
Line(574) = {570, 57};
Line(575) = { 56,571};
Line(576) = {571,572};
Line(577) = {572,211};
Line(578) = {210,573};
Line(579) = {573,574};
Line(580) = {574,575};
Line(581) = {575, 47};

// Curve Loops below Helium 
Curve Loop(501)    = {571,49,572,203}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(501) = {501};
Curve Loop(502)    = {203,570,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,
                      519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,
                      539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,
                      559,560,561,562,563,564,565,566,567,568}; // Bottom of Right Reservoir
Plane Surface(502) = {502};

// Right Reservoir Electrode Trapezoids  (index: 900-999)
Line(913) = {213,566};  // Trapezoid  1, Replacement: 565 -> 914,214,215,216,913
Line(914) = {565,214};
Line(917) = {217,562};  // Trapezoid  2, Replacement: 561 -> 918,218,219,220,917
Line(918) = {561,218};
Line(921) = {221,558};  // Trapezoid  3, Replacement: 557 -> 922,222,223,224,921
Line(922) = {557,222};
Line(925) = {225,554};  // Trapezoid  4, Replacement: 553 -> 926,226,227,228,925
Line(926) = {553,226};
Line(929) = {229,550};  // Trapezoid  5, Replacement: 549 -> 930,230,231,232,929
Line(930) = {549,230};
Line(933) = {233,546};  // Trapezoid  6, Replacement: 545 -> 934,234,235,236,933
Line(934) = {545,234};
Line(937) = {237,542};  // Trapezoid  7, Replacement: 541 -> 938,238,239,240,937
Line(938) = {541,238};
Line(941) = {241,538};  // Trapezoid  8, Replacement: 537 -> 942,242,243,244,941
Line(942) = {537,242};
Line(945) = {245,534};  // Trapezoid  9, Replacement: 533 -> 946,246,247,248,945
Line(946) = {533,246};
Line(949) = {249,530};  // Trapezoid 10, Replacement: 529 -> 950,250,251,252,949
Line(950) = {529,250};
Line(953) = {253,526};  // Trapezoid 11, Replacement: 525 -> 954,254,255,256,953
Line(954) = {525,254};
Line(957) = {257,522};  // Trapezoid 12, Replacement: 521 -> 958,258,259,260,957
Line(958) = {521,258};
Line(961) = {261,518};  // Trapezoid 13, Replacement: 517 -> 962,262,263,264,961
Line(962) = {517,262};
Line(965) = {265,514};  // Trapezoid 14, Replacement: 513 -> 966,266,267,268,965
Line(966) = {513,266};
Line(969) = {269,510};  // Trapezoid 15, Replacement: 509 -> 970,270,271,272,969
Line(970) = {509,270};
Line(973) = {273,506};  // Trapezoid 16, Replacement: 505 -> 974,274,275,276,973
Line(974) = {505,274};

Curve Loop(913)    = {913,-565,914,-213}; // Right Trapezoid  1
Plane Surface(913) = {913};
Curve Loop(917)    = {917,-561,918,-217}; // Right Trapezoid  2 
Plane Surface(917) = {917};
Curve Loop(921)    = {921,-557,922,-221}; // Right Trapezoid  3 
Plane Surface(921) = {921};
Curve Loop(925)    = {925,-553,926,-225}; // Right Trapezoid  4 
Plane Surface(925) = {925};
Curve Loop(929)    = {929,-549,930,-229}; // Right Trapezoid  5
Plane Surface(929) = {929};
Curve Loop(933)    = {933,-545,934,-233}; // Right Trapezoid  6
Plane Surface(933) = {933};
Curve Loop(937)    = {937,-541,938,-237}; // Right Trapezoid  7
Plane Surface(937) = {937};
Curve Loop(941)    = {941,-537,942,-241}; // Right Trapezoid  8
Plane Surface(941) = {941};
Curve Loop(945)    = {945,-533,946,-245}; // Right Trapezoid  9
Plane Surface(945) = {945};
Curve Loop(949)    = {949,-529,950,-249}; // Right Trapezoid 10
Plane Surface(949) = {949};
Curve Loop(953)    = {953,-525,954,-253}; // Right Trapezoid 11
Plane Surface(953) = {953};
Curve Loop(957)    = {957,-521,958,-257}; // Right Trapezoid 12
Plane Surface(957) = {957};
Curve Loop(961)    = {961,-517,962,-261}; // Right Trapezoid 13
Plane Surface(961) = {961};
Curve Loop(965)    = {965,-513,966,-265}; // Right Trapezoid 14
Plane Surface(965) = {965};
Curve Loop(969)    = {969,-509,970,-269}; // Right Trapezoid 15
Plane Surface(969) = {969};
Curve Loop(973)    = {973,-505,974,-273}; // Right Trapezoid 16
Plane Surface(973) = {973};

// Right Reservoir below dielectric Curve Loop (Trapezoid Version)
Curve Loop(901)    = {570,501,502,503,504,974,274,275,276,973,506,507,508,970,270,271,272,969,510,511,
                      512,966,266,267,268,965,514,515,516,962,262,263,264,961,518,519,520,958,258,259,
                      260,957,522,523,524,954,254,255,256,953,526,527,528,950,250,251,252,949,530,531,
                      532,946,246,247,248,945,534,535,536,942,242,243,244,941,538,539,540,938,238,239,
                      240,937,542,543,544,934,234,235,236,933,546,547,548,930,230,231,232,929,550,551,
                      552,926,226,227,228,925,554,555,556,922,222,223,224,921,558,559,560,918,218,219,
                      220,917,562,563,564,914,214,215,216,913,566,567,568,-202,-201,-212,-211,-210,
                      -209,-208,-207,-206,-205,-204}; // Bottom of Left Reservoir
Plane Surface(901) = {901};

// Only Left Guard Surfaces
Curve Loop(510)    = {201,202,-572,50,51,52,53,54,55,575,576,577,211,212};
Plane Surface(510) = {510};
Curve Loop(511)    = {578,579,580,581,47,48,-571,204,205,206,207,208,209};
Plane Surface(511) = {511};
Curve Loop(512)    = {57,58,59,60,61,62,63,573,574};
Plane Surface(512) = {512};

// Only Dielectric (index: 600-610)
Line(601)          = {301,470};
Curve Loop(601)    = {25,302,601,-473};
Plane Surface(601) = {601};
Line(602)          = {570,302};
Curve Loop(602)    = {573,602,304,-64};
Plane Surface(602) = {602};
Line(603)          = {473,313};
Curve Loop(603)    = {603,314,315,316,7,-481,-480,-479};
Plane Surface(603) = {603};
Line(604)          = {312,573};
Curve Loop(604)    = {604,579,580,581,-46,310,311,312};
Plane Surface(604) = {604};





// Helium Top Layer (2000 Series) ------------------------------------------------------------------------------------------------

// Left Channel Electrode (index: 1-39)

// Points on edge of Left Channel Electrode
Point(2003) = {-fg/2, gch/2 + 3.5, dHe, den3};
Point(2004) = {-fg/2,-gch/2 + 3.5, dHe, den3};
Point(2007) = {-40,  -hch/2 + 3.5, dHe, den3};
Point(2008) = {-42,  -hch/2 + 3.5, dHe, den3};
Point(2010) = {-47,          -0.4, dHe, den3};
Point(2011) = {-47,             7, dHe, den3};
Point(2025) = {-42,   hch/2 + 3.5, dHe, den3};
Point(2026) = {-40,   hch/2 + 3.5, dHe, den3};

// Points internal to Left Channel Electrode
Point(2030) = {-40, gch/2 + 3.5, dHe, den3};
Point(2031) = {-40,-gch/2 + 3.5, dHe, den3};
Point(2032) = {-42,           0, dHe, den3};
Point(2033) = {-46,           0, dHe, den3};
Point(2034) = {-42,           7, dHe, den3};

// Lines on edge of Left Channel Electrode
Line(2003)  = {2003,2004};
Line(2007)  = {2007,2008};
Line(2010)  = {2010,2011};
Line(2025)  = {2025,2026};

// Lines internal to Left Channel Electrode
Line(2030)  = {2010,2033};
Line(2031)  = {2033,2032};
Line(2032)  = {2032,2008};
Line(2033)  = {2007,2031};
Line(2034)  = {2031,2004};
Line(2035)  = {2003,2030};
Line(2036)  = {2030,2026};
Line(2037)  = {2025,2034};
Line(2038)  = {2034,2011};

// Curve Loops internal to Left Channel Electrode
Curve Loop(2005)    = {-2003,2035,2036,-2025,2037,2038,-2010,2030,2031,2032,-2007,2033,2034};
Plane Surface(2005) = {2005};

// Right Channel Electrode (index: 40-79)

Point(2042) = {fg/2, gch/2 + 3.5, dHe, den3};
Point(2043) = {fg/2,-gch/2 + 3.5, dHe, den3};
Point(2046) = {40,  -hch/2 + 3.5, dHe, den3};
Point(2047) = {42,  -hch/2 + 3.5, dHe, den3};
Point(2049) = {47,          -0.4, dHe, den3};
Point(2050) = {47,             7, dHe, den3};
Point(2064) = {42,   hch/2 + 3.5, dHe, den3};
Point(2065) = {40,   hch/2 + 3.5, dHe, den3};

// Points internal to Right Channel Electrode
Point(2070) = {40, gch/2 + 3.5, dHe, den3};
Point(2071) = {40,-gch/2 + 3.5, dHe, den3};
Point(2072) = {42,           0, dHe, den3};
Point(2073) = {46,           0, dHe, den3};
Point(2074) = {42,           7, dHe, den3};

// Lines on edge of Right Channel Electrode
Line(2042) = {2042,2043};
Line(2046) = {2046,2047};
Line(2049) = {2049,2050};
Line(2064) = {2064,2065};

// Lines internal to Right Channel Electrode
Line(2070) = {2049,2073};
Line(2071) = {2073,2072};
Line(2072) = {2072,2047};
Line(2073) = {2046,2071};
Line(2074) = {2071,2043};
Line(2075) = {2042,2070};
Line(2076) = {2070,2065};
Line(2077) = {2064,2074};
Line(2078) = {2074,2050};

// Curve Loops internal to Right Channel Electrode
Curve Loop(2045)    = {-2042,2075,2076,-2064,2077,2078,-2049,2070,2071,2072,-2046,2073,2074};
Plane Surface(2045) = {2045};

// Left Reservoir Electrode (index: 100-199)

// Points on edge of Left Reservoir Electrode
Point(2103) = { -47.4,    7, dHe, den3};
Point(2104) = { -47.4,-0.56, dHe, den3};

// Lines on edge of Left Reservoir Electrode
Line(2103)  = {2103,2104};

// Right Reservoir Electrode (index: 200-299)

// Points on edge of Right Reservoir Electrode
Point(2203) = { 47.4,    7, dHe, den3};
Point(2204) = { 47.4,-0.56, dHe, den3};

// Lines on edge of Right Reservoir Electrode
Line(2203) = {2203,2204};

// Y-Positive Gate Electrode remainder, not already defined as part of channel electrodes (index: 300-309)

// Points on edge of Y-PGE remainder
Point(2301) = {-40, 29, dHe, den2};
Point(2302) = { 40, 29, dHe, den2};

// Lines on edge of Y-PGE remainder
Line(2301)  = {2042,2003};
Line(2302)  = {2026,2301};
Line(2304)  = {2302,2065};

// Y-Negative Gate Electrode remainder, not already defined as part of channel electrodes (index: 310-319)

// Points on edge of Y-NGE remainder
Point(2310) = { 40,  -24, dHe, den2};
Point(2311) = { 17,  -46, dHe, den2};
Point(2312) = { 17, -304, dHe, den2};
Point(2313) = {-17, -304, dHe, den2};
Point(2314) = {-17,  -46, dHe, den2};
Point(2315) = {-40,  -24, dHe, den2};

// Lines on edge of Y-NGE remainder
Line(2310) = {2046,2310};
Line(2311) = {2310,2311};
Line(2312) = {2311,2312};
Line(2314) = {2313,2314};
Line(2315) = {2314,2315};
Line(2316) = {2315,2007};
Line(2317) = {2004,2043};

// Substrate in Channel (index: 320-329)
Curve Loop(2320)    = {2003,2317,-2042,2301};
Plane Surface(2320) = {2320};

// Helium level edge of Left Guard Electrode (index: 2400-2499)

// Points on edge of Left Guard Electrode
Point(2401) = { -51,  -2, dHe, den2};
Point(2402) = { -51,-273, dHe, den2};
Point(2403) = {-454,-273, dHe, den2};
Point(2404) = {-454,-265, dHe, den2};
Point(2405) = { -59,-265, dHe, den2};
Point(2406) = { -59,-256, dHe, den2};
Point(2407) = {-454,-256, dHe, den2};
Point(2408) = {-454,-248, dHe, den2};
Point(2409) = { -59,-248, dHe, den2};
Point(2410) = { -59,-239, dHe, den2};
Point(2411) = {-454,-239, dHe, den2};
Point(2412) = {-454,-231, dHe, den2};
Point(2413) = { -59,-231, dHe, den2};
Point(2414) = { -59,-222, dHe, den2};
Point(2415) = {-454,-222, dHe, den2};
Point(2416) = {-454,-214, dHe, den2};
Point(2417) = { -59,-214, dHe, den2};
Point(2418) = { -59,-205, dHe, den2};
Point(2419) = {-454,-205, dHe, den2};
Point(2420) = {-454,-197, dHe, den2};
Point(2421) = { -59,-197, dHe, den2};
Point(2422) = { -59,-188, dHe, den2};
Point(2423) = {-454,-188, dHe, den2};
Point(2424) = {-454,-180, dHe, den2};
Point(2425) = { -59,-180, dHe, den2};
Point(2426) = { -59,-171, dHe, den2};
Point(2427) = {-454,-171, dHe, den2};
Point(2428) = {-454,-163, dHe, den2};
Point(2429) = { -59,-163, dHe, den2};
Point(2430) = { -59,-154, dHe, den2};
Point(2431) = {-454,-154, dHe, den2};
Point(2432) = {-454,-146, dHe, den2};
Point(2433) = { -59,-146, dHe, den2};
Point(2434) = { -59,-137, dHe, den2};
Point(2435) = {-454,-137, dHe, den2};
Point(2436) = {-454,-129, dHe, den2};
Point(2437) = { -59,-129, dHe, den2};
Point(2438) = { -59,-120, dHe, den2};
Point(2439) = {-454,-120, dHe, den2};
Point(2440) = {-454,-112, dHe, den2};
Point(2441) = { -59,-112, dHe, den2};
Point(2442) = { -59,-103, dHe, den2};
Point(2443) = {-454,-103, dHe, den2};
Point(2444) = {-454, -95, dHe, den2};
Point(2445) = { -59, -95, dHe, den2};
Point(2446) = { -59, -86, dHe, den2};
Point(2447) = {-454, -86, dHe, den2};
Point(2448) = {-454, -78, dHe, den2};
Point(2449) = { -59, -78, dHe, den2};
Point(2450) = { -59, -69, dHe, den2};
Point(2451) = {-454, -69, dHe, den2};
Point(2452) = {-454, -61, dHe, den2};
Point(2453) = { -59, -61, dHe, den2};
Point(2454) = { -59, -52, dHe, den2};
Point(2455) = {-454, -52, dHe, den2};
Point(2456) = {-454, -44, dHe, den2};
Point(2457) = { -59, -44, dHe, den2};
Point(2458) = { -59, -35, dHe, den2};
Point(2459) = {-454, -35, dHe, den2};
Point(2460) = {-454, -27, dHe, den2};
Point(2461) = { -59, -27, dHe, den2};
Point(2462) = { -59, -18, dHe, den2};
Point(2463) = {-454, -18, dHe, den2};
Point(2464) = {-454, -10, dHe, den2};
Point(2465) = { -59, -10, dHe, den2};
Point(2466) = { -59,  -1, dHe, den2};
Point(2467) = {-454,  -1, dHe, den2};
Point(2468) = {-454,   7, dHe, den2};
Point(2470) = { -42,  29, dHe, den2};
Point(2473) = { -21,-304, dHe, den2};
Point(2474) = { -21, -49, dHe, den2};
Point(2475) = { -42, -27, dHe, den2};

// Lines on edge of Left Guard Electrode
Line(2401) = {2401,2402};
Line(2402) = {2402,2403};
Line(2403) = {2403,2404};
Line(2404) = {2404,2405};
Line(2405) = {2405,2406};
Line(2406) = {2406,2407};
Line(2407) = {2407,2408};
Line(2408) = {2408,2409};
Line(2409) = {2409,2410};
Line(2410) = {2410,2411};
Line(2411) = {2411,2412};
Line(2412) = {2412,2413};
Line(2413) = {2413,2414};
Line(2414) = {2414,2415};
Line(2415) = {2415,2416};
Line(2416) = {2416,2417};
Line(2417) = {2417,2418};
Line(2418) = {2418,2419};
Line(2419) = {2419,2420};
Line(2420) = {2420,2421};
Line(2421) = {2421,2422};
Line(2422) = {2422,2423};
Line(2423) = {2423,2424};
Line(2424) = {2424,2425};
Line(2425) = {2425,2426};
Line(2426) = {2426,2427};
Line(2427) = {2427,2428};
Line(2428) = {2428,2429};
Line(2429) = {2429,2430};
Line(2430) = {2430,2431};
Line(2431) = {2431,2432};
Line(2432) = {2432,2433};
Line(2433) = {2433,2434};
Line(2434) = {2434,2435};
Line(2435) = {2435,2436};
Line(2436) = {2436,2437};
Line(2437) = {2437,2438};
Line(2438) = {2438,2439};
Line(2439) = {2439,2440};
Line(2440) = {2440,2441};
Line(2441) = {2441,2442};
Line(2442) = {2442,2443};
Line(2443) = {2443,2444};
Line(2444) = {2444,2445};
Line(2445) = {2445,2446};
Line(2446) = {2446,2447};
Line(2447) = {2447,2448};
Line(2448) = {2448,2449};
Line(2449) = {2449,2450};
Line(2450) = {2450,2451};
Line(2451) = {2451,2452};
Line(2452) = {2452,2453};
Line(2453) = {2453,2454};
Line(2454) = {2454,2455};
Line(2455) = {2455,2456};
Line(2456) = {2456,2457};
Line(2457) = {2457,2458};
Line(2458) = {2458,2459};
Line(2459) = {2459,2460};
Line(2460) = {2460,2461};
Line(2461) = {2461,2462};
Line(2462) = {2462,2463};
Line(2463) = {2463,2464};
Line(2464) = {2464,2465};
Line(2465) = {2465,2466};
Line(2466) = {2466,2467};
Line(2467) = {2467,2468};
Line(2468) = {2468,2103};
Line(2470) = {2104,2401};
Line(2471) = {2104,2010};
Line(2472) = {2011,2103};
Line(2473) = {2025,2470};
Line(2479) = {2473,2474};
Line(2480) = {2474,2475};
Line(2481) = {2475,2008};

// Curve Loops below Helium 
Curve Loop(2401)    = {2471,2010,2472,2103}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(2401) = {2401};
Curve Loop(2402)    = {2103,2470,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,
                       2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431,2432,2433,2434,2435,2436,2437,2438,
                       2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,
                       2459,2460,2461,2462,2463,2464,2465,2466,2467,2468}; // Bottom of Left Reservoir
Plane Surface(2402) = {2402};

// Helium level edge of Right Guard Electrode (index: 2500-2599)

// Points on edge of Right Guard Electrode
Point(2501) = {  51,  -2, dHe, den2};
Point(2502) = {  51,-273, dHe, den2};
Point(2503) = { 454,-273, dHe, den2};
Point(2504) = { 454,-265, dHe, den2};
Point(2505) = {  59,-265, dHe, den2};
Point(2506) = {  59,-256, dHe, den2};
Point(2507) = { 454,-256, dHe, den2};
Point(2508) = { 454,-248, dHe, den2};
Point(2509) = {  59,-248, dHe, den2};
Point(2510) = {  59,-239, dHe, den2};
Point(2511) = { 454,-239, dHe, den2};
Point(2512) = { 454,-231, dHe, den2};
Point(2513) = {  59,-231, dHe, den2};
Point(2514) = {  59,-222, dHe, den2};
Point(2515) = { 454,-222, dHe, den2};
Point(2516) = { 454,-214, dHe, den2};
Point(2517) = {  59,-214, dHe, den2};
Point(2518) = {  59,-205, dHe, den2};
Point(2519) = { 454,-205, dHe, den2};
Point(2520) = { 454,-197, dHe, den2};
Point(2521) = {  59,-197, dHe, den2};
Point(2522) = {  59,-188, dHe, den2};
Point(2523) = { 454,-188, dHe, den2};
Point(2524) = { 454,-180, dHe, den2};
Point(2525) = {  59,-180, dHe, den2};
Point(2526) = {  59,-171, dHe, den2};
Point(2527) = { 454,-171, dHe, den2};
Point(2528) = { 454,-163, dHe, den2};
Point(2529) = {  59,-163, dHe, den2};
Point(2530) = {  59,-154, dHe, den2};
Point(2531) = { 454,-154, dHe, den2};
Point(2532) = { 454,-146, dHe, den2};
Point(2533) = {  59,-146, dHe, den2};
Point(2534) = {  59,-137, dHe, den2};
Point(2535) = { 454,-137, dHe, den2};
Point(2536) = { 454,-129, dHe, den2};
Point(2537) = {  59,-129, dHe, den2};
Point(2538) = {  59,-120, dHe, den2};
Point(2539) = { 454,-120, dHe, den2};
Point(2540) = { 454,-112, dHe, den2};
Point(2541) = {  59,-112, dHe, den2};
Point(2542) = {  59,-103, dHe, den2};
Point(2543) = { 454,-103, dHe, den2};
Point(2544) = { 454, -95, dHe, den2};
Point(2545) = {  59, -95, dHe, den2};
Point(2546) = {  59, -86, dHe, den2};
Point(2547) = { 454, -86, dHe, den2};
Point(2548) = { 454, -78, dHe, den2};
Point(2549) = {  59, -78, dHe, den2};
Point(2550) = {  59, -69, dHe, den2};
Point(2551) = { 454, -69, dHe, den2};
Point(2552) = { 454, -61, dHe, den2};
Point(2553) = {  59, -61, dHe, den2};
Point(2554) = {  59, -52, dHe, den2};
Point(2555) = { 454, -52, dHe, den2};
Point(2556) = { 454, -44, dHe, den2};
Point(2557) = {  59, -44, dHe, den2};
Point(2558) = {  59, -35, dHe, den2};
Point(2559) = { 454, -35, dHe, den2};
Point(2560) = { 454, -27, dHe, den2};
Point(2561) = {  59, -27, dHe, den2};
Point(2562) = {  59, -18, dHe, den2};
Point(2563) = { 454, -18, dHe, den2};
Point(2564) = { 454, -10, dHe, den2};
Point(2565) = {  59, -10, dHe, den2};
Point(2566) = {  59,  -1, dHe, den2};
Point(2567) = { 454,  -1, dHe, den2};
Point(2568) = { 454,   7, dHe, den2};
Point(2570) = {  42,  29, dHe, den2};
Point(2573) = {  21,-304, dHe, den2};
Point(2574) = {  21, -49, dHe, den2};
Point(2575) = {  42, -27, dHe, den2};

// Lines on Helium top edge of Right Guard Electrode
Line(2501) = {2501,2502};
Line(2502) = {2502,2503};
Line(2503) = {2503,2504};
Line(2504) = {2504,2505};
Line(2505) = {2505,2506};
Line(2506) = {2506,2507};
Line(2507) = {2507,2508};
Line(2508) = {2508,2509};
Line(2509) = {2509,2510};
Line(2510) = {2510,2511};
Line(2511) = {2511,2512};
Line(2512) = {2512,2513};
Line(2513) = {2513,2514};
Line(2514) = {2514,2515};
Line(2515) = {2515,2516};
Line(2516) = {2516,2517};
Line(2517) = {2517,2518};
Line(2518) = {2518,2519};
Line(2519) = {2519,2520};
Line(2520) = {2520,2521};
Line(2521) = {2521,2522};
Line(2522) = {2522,2523};
Line(2523) = {2523,2524};
Line(2524) = {2524,2525};
Line(2525) = {2525,2526};
Line(2526) = {2526,2527};
Line(2527) = {2527,2528};
Line(2528) = {2528,2529};
Line(2529) = {2529,2530};
Line(2530) = {2530,2531};
Line(2531) = {2531,2532};
Line(2532) = {2532,2533};
Line(2533) = {2533,2534};
Line(2534) = {2534,2535};
Line(2535) = {2535,2536};
Line(2536) = {2536,2537};
Line(2537) = {2537,2538};
Line(2538) = {2538,2539};
Line(2539) = {2539,2540};
Line(2540) = {2540,2541};
Line(2541) = {2541,2542};
Line(2542) = {2542,2543};
Line(2543) = {2543,2544};
Line(2544) = {2544,2545};
Line(2545) = {2545,2546};
Line(2546) = {2546,2547};
Line(2547) = {2547,2548};
Line(2548) = {2548,2549};
Line(2549) = {2549,2550};
Line(2550) = {2550,2551};
Line(2551) = {2551,2552};
Line(2552) = {2552,2553};
Line(2553) = {2553,2554};
Line(2554) = {2554,2555};
Line(2555) = {2555,2556};
Line(2556) = {2556,2557};
Line(2557) = {2557,2558};
Line(2558) = {2558,2559};
Line(2559) = {2559,2560};
Line(2560) = {2560,2561};
Line(2561) = {2561,2562};
Line(2562) = {2562,2563};
Line(2563) = {2563,2564};
Line(2564) = {2564,2565};
Line(2565) = {2565,2566};
Line(2566) = {2566,2567};
Line(2567) = {2567,2568};
Line(2568) = {2568,2203};
Line(2570) = {2204,2501};
Line(2571) = {2204,2049};
Line(2572) = {2050,2203};
Line(2573) = {2064,2570};
Line(2579) = {2573,2574};
Line(2580) = {2574,2575};
Line(2581) = {2575,2047};

// Curve Loops below Helium 
Curve Loop(2501)    = {2571,2049,2572,2203}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(2501) = {2501};
Curve Loop(2502)    = {2203,2570,2501,2502,2503,2504,2505,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,
                       2519,2520,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2537,2538,
                       2539,2540,2541,2542,2543,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,2554,2555,2556,2557,2558,
                       2559,2560,2561,2562,2563,2564,2565,2566,2567,2568}; // Bottom of Right Reservoir
Plane Surface(2502) = {2502};

// Only Dielectric (index: 600-610)
Line(2601)          = {2301,2470};
Curve Loop(2601)    = {2025,2302,2601,-2473};
Plane Surface(2601) = {2601};
Line(2602)          = {2570,2302};
Curve Loop(2602)    = {2573,2602,2304,-2064};
Plane Surface(2602) = {2602};
Line(2603)          = {2473,2313};
Curve Loop(2603)    = {2603,2314,2315,2316,2007,-2481,-2480,-2479};
Plane Surface(2603) = {2603};
Line(2604)          = {2312,2573};
Curve Loop(2604)    = {2604,2579,2580,2581,-2046,2310,2311,2312};
Plane Surface(2604) = {2604};





// V-Lines from Base Layer to Helium Top Layer (1000 Series) ---------------------------------------------------------------------

// Left Channel Electrode Points (index:  1-39)
Line(1003) = {   3,2003};
Line(1004) = {   4,2004};
Line(1007) = {   7,2007};
Line(1008) = {   8,2008};
Line(1010) = {  10,2010};
Line(1011) = {  11,2011};
Line(1025) = {  25,2025};
Line(1026) = {  26,2026};
Line(1030) = {  30,2030};
Line(1031) = {  31,2031};
Line(1032) = {  32,2032};
Line(1033) = {  33,2033};
Line(1034) = {  34,2034};

// Right Channel Electrode Points (index: 40-79)
Line(1042) = {  42,2042};
Line(1043) = {  43,2043};
Line(1046) = {  46,2046};
Line(1047) = {  47,2047};
Line(1049) = {  49,2049};
Line(1050) = {  50,2050};
Line(1064) = {  64,2064};
Line(1065) = {  65,2065};
Line(1070) = {  70,2070};
Line(1071) = {  71,2071};
Line(1072) = {  72,2072};
Line(1073) = {  73,2073};
Line(1074) = {  74,2074};

// Points on edge of Left Reservoir Electrode
Line(1103) = { 103,2103};
Line(1104) = { 104,2104};

// Points on edge of Right Reservoir Electrode
Line(1203) = { 203,2203};
Line(1204) = { 204,2204};

// Points on edge of Y-PGE remainder (index: 300-309)
Line(1301) = { 301,2301};
Line(1302) = { 302,2302};

// Points on edge of Y-NGE remainder (index: 310-319)
Line(1310) = { 310,2310};
Line(1311) = { 311,2311};
Line(1312) = { 312,2312};
Line(1313) = { 313,2313};
Line(1314) = { 314,2314};
Line(1315) = { 315,2315};

// Points on edge of Left Guard Electrode (index: 400-499)
Line(1401) = { 401,2401};
Line(1402) = { 402,2402};
Line(1403) = { 403,2403};
Line(1404) = { 404,2404};
Line(1405) = { 405,2405};
Line(1406) = { 406,2406};
Line(1407) = { 407,2407};
Line(1408) = { 408,2408};
Line(1409) = { 409,2409};
Line(1410) = { 410,2410};
Line(1411) = { 411,2411};
Line(1412) = { 412,2412};
Line(1413) = { 413,2413};
Line(1414) = { 414,2414};
Line(1415) = { 415,2415};
Line(1416) = { 416,2416};
Line(1417) = { 417,2417};
Line(1418) = { 418,2418};
Line(1419) = { 419,2419};
Line(1420) = { 420,2420};
Line(1421) = { 421,2421};
Line(1422) = { 422,2422};
Line(1423) = { 423,2423};
Line(1424) = { 424,2424};
Line(1425) = { 425,2425};
Line(1426) = { 426,2426};
Line(1427) = { 427,2427};
Line(1428) = { 428,2428};
Line(1429) = { 429,2429};
Line(1430) = { 430,2430};
Line(1431) = { 431,2431};
Line(1432) = { 432,2432};
Line(1433) = { 433,2433};
Line(1434) = { 434,2434};
Line(1435) = { 435,2435};
Line(1436) = { 436,2436};
Line(1437) = { 437,2437};
Line(1438) = { 438,2438};
Line(1439) = { 439,2439};
Line(1440) = { 440,2440};
Line(1441) = { 441,2441};
Line(1442) = { 442,2442};
Line(1443) = { 443,2443};
Line(1444) = { 444,2444};
Line(1445) = { 445,2445};
Line(1446) = { 446,2446};
Line(1447) = { 447,2447};
Line(1448) = { 448,2448};
Line(1449) = { 449,2449};
Line(1450) = { 450,2450};
Line(1451) = { 451,2451};
Line(1452) = { 452,2452};
Line(1453) = { 453,2453};
Line(1454) = { 454,2454};
Line(1455) = { 455,2455};
Line(1456) = { 456,2456};
Line(1457) = { 457,2457};
Line(1458) = { 458,2458};
Line(1459) = { 459,2459};
Line(1460) = { 460,2460};
Line(1461) = { 461,2461};
Line(1462) = { 462,2462};
Line(1463) = { 463,2463};
Line(1464) = { 464,2464};
Line(1465) = { 465,2465};
Line(1466) = { 466,2466};
Line(1467) = { 467,2467};
Line(1468) = { 468,2468};

Line(1470) = { 470,2470};
Line(1473) = { 473,2473};
Line(1474) = { 474,2474};
Line(1475) = { 475,2475};

// Points on edge of Right Guard Electrode (index: 500-599)
Line(1501) = { 501,2501};
Line(1502) = { 502,2502};
Line(1503) = { 503,2503};
Line(1504) = { 504,2504};
Line(1505) = { 505,2505};
Line(1506) = { 506,2506};
Line(1507) = { 507,2507};
Line(1508) = { 508,2508};
Line(1509) = { 509,2509};
Line(1510) = { 510,2510};
Line(1511) = { 511,2511};
Line(1512) = { 512,2512};
Line(1513) = { 513,2513};
Line(1514) = { 514,2514};
Line(1515) = { 515,2515};
Line(1516) = { 516,2516};
Line(1517) = { 517,2517};
Line(1518) = { 518,2518};
Line(1519) = { 519,2519};
Line(1520) = { 520,2520};
Line(1521) = { 521,2521};
Line(1522) = { 522,2522};
Line(1523) = { 523,2523};
Line(1524) = { 524,2524};
Line(1525) = { 525,2525};
Line(1526) = { 526,2526};
Line(1527) = { 527,2527};
Line(1528) = { 528,2528};
Line(1529) = { 529,2529};
Line(1530) = { 530,2530};
Line(1531) = { 531,2531};
Line(1532) = { 532,2532};
Line(1533) = { 533,2533};
Line(1534) = { 534,2534};
Line(1535) = { 535,2535};
Line(1536) = { 536,2536};
Line(1537) = { 537,2537};
Line(1538) = { 538,2538};
Line(1539) = { 539,2539};
Line(1540) = { 540,2540};
Line(1541) = { 541,2541};
Line(1542) = { 542,2542};
Line(1543) = { 543,2543};
Line(1544) = { 544,2544};
Line(1545) = { 545,2545};
Line(1546) = { 546,2546};
Line(1547) = { 547,2547};
Line(1548) = { 548,2548};
Line(1549) = { 549,2549};
Line(1550) = { 550,2550};
Line(1551) = { 551,2551};
Line(1552) = { 552,2552};
Line(1553) = { 553,2553};
Line(1554) = { 554,2554};
Line(1555) = { 555,2555};
Line(1556) = { 556,2556};
Line(1557) = { 557,2557};
Line(1558) = { 558,2558};
Line(1559) = { 559,2559};
Line(1560) = { 560,2560};
Line(1561) = { 561,2561};
Line(1562) = { 562,2562};
Line(1563) = { 563,2563};
Line(1564) = { 564,2564};
Line(1565) = { 565,2565};
Line(1566) = { 566,2566};
Line(1567) = { 567,2567};
Line(1568) = { 568,2568};

Line(1570) = { 570,2570};
Line(1573) = { 573,2573};
Line(1574) = { 574,2574};
Line(1575) = { 575,2575};

// Vertical Curve Loops Between 0000 Series and 2000 Series -----------------------------------------------------------------------

// Clockwise

// Helium Edge Along Y-PGE
Curve Loop(1302)    = {1026,2302,-1301, -302};
Plane Surface(1302) = {1302};
Curve Loop(1036)    = {1030,2036,-1026,  -36};
Plane Surface(1036) = {1036};
Curve Loop(1035)    = {1003,2035,-1030,  -35};
Plane Surface(1035) = {1035};
Curve Loop(1301)    = {1042,2301,-1003, -301};
Plane Surface(1301) = {1301};
Curve Loop(1075)    = {1042,2075,-1070,  -75};
Plane Surface(1075) = {1075};
Curve Loop(1076)    = {1070,2076,-1065,  -76};
Plane Surface(1076) = {1076};
Curve Loop(1304)    = {1302,2304,-1065, -304};
Plane Surface(1304) = {1304};
// Helium Along Model Edge 
Curve Loop(1602)    = {1570,2602,-1302, -602};
Plane Surface(1602) = {1602};
// Helium Along Right Guard Electrode
Curve Loop(1573)    = {1064,2573,-1570, -573};
Plane Surface(1573) = {1573};
Curve Loop(1077)    = {1064,2077,-1074,  -77};
Plane Surface(1077) = {1077};
Curve Loop(1078)    = {1074,2078,-1050,  -78};
Plane Surface(1078) = {1078};
Curve Loop(1572)    = {1050,2572,-1203, -572};
Plane Surface(1572) = {1572};
Curve Loop(1568)    = {1568,2568,-1203, -568};
Plane Surface(1568) = {1568};
Curve Loop(1567)    = {1567,2567,-1568, -567};
Plane Surface(1567) = {1567};
Curve Loop(1566)    = {1566,2566,-1567, -566};
Plane Surface(1566) = {1566};
Curve Loop(1565)    = {1565,2565,-1566, -565};
Plane Surface(1565) = {1565};
Curve Loop(1564)    = {1564,2564,-1565, -564};
Plane Surface(1564) = {1564};
Curve Loop(1563)    = {1563,2563,-1564, -563};
Plane Surface(1563) = {1563};
Curve Loop(1562)    = {1562,2562,-1563, -562};
Plane Surface(1562) = {1562};
Curve Loop(1561)    = {1561,2561,-1562, -561};
Plane Surface(1561) = {1561};
Curve Loop(1560)    = {1560,2560,-1561, -560};
Plane Surface(1560) = {1560};
Curve Loop(1559)    = {1559,2559,-1560, -559};
Plane Surface(1559) = {1559};
Curve Loop(1558)    = {1558,2558,-1559, -558};
Plane Surface(1558) = {1558};
Curve Loop(1557)    = {1557,2557,-1558, -557};
Plane Surface(1557) = {1557};
Curve Loop(1556)    = {1556,2556,-1557, -556};
Plane Surface(1556) = {1556};
Curve Loop(1555)    = {1555,2555,-1556, -555};
Plane Surface(1555) = {1555};
Curve Loop(1554)    = {1554,2554,-1555, -554};
Plane Surface(1554) = {1554};
Curve Loop(1553)    = {1553,2553,-1554, -553};
Plane Surface(1553) = {1553};
Curve Loop(1552)    = {1552,2552,-1553, -552};
Plane Surface(1552) = {1552};
Curve Loop(1551)    = {1551,2551,-1552, -551};
Plane Surface(1551) = {1551};
Curve Loop(1550)    = {1550,2550,-1551, -550};
Plane Surface(1550) = {1550};
Curve Loop(1549)    = {1549,2549,-1550, -549};
Plane Surface(1549) = {1549};
Curve Loop(1548)    = {1548,2548,-1549, -548};
Plane Surface(1548) = {1548};
Curve Loop(1547)    = {1547,2547,-1548, -547};
Plane Surface(1547) = {1547};
Curve Loop(1546)    = {1546,2546,-1547, -546};
Plane Surface(1546) = {1546};
Curve Loop(1545)    = {1545,2545,-1546, -545};
Plane Surface(1545) = {1545};
Curve Loop(1544)    = {1544,2544,-1545, -544};
Plane Surface(1544) = {1544};
Curve Loop(1543)    = {1543,2543,-1544, -543};
Plane Surface(1543) = {1543};
Curve Loop(1542)    = {1542,2542,-1543, -542};
Plane Surface(1542) = {1542};
Curve Loop(1541)    = {1541,2541,-1542, -541};
Plane Surface(1541) = {1541};
Curve Loop(1540)    = {1540,2540,-1541, -540};
Plane Surface(1540) = {1540};
Curve Loop(1539)    = {1539,2539,-1540, -539};
Plane Surface(1539) = {1539};
Curve Loop(1538)    = {1538,2538,-1539, -538};
Plane Surface(1538) = {1538};
Curve Loop(1537)    = {1537,2537,-1538, -537};
Plane Surface(1537) = {1537};
Curve Loop(1536)    = {1536,2536,-1537, -536};
Plane Surface(1536) = {1536};
Curve Loop(1535)    = {1535,2535,-1536, -535};
Plane Surface(1535) = {1535};
Curve Loop(1534)    = {1534,2534,-1535, -534};
Plane Surface(1534) = {1534};
Curve Loop(1533)    = {1533,2533,-1534, -533};
Plane Surface(1533) = {1533};
Curve Loop(1532)    = {1532,2532,-1533, -532};
Plane Surface(1532) = {1532};
Curve Loop(1531)    = {1531,2531,-1532, -531};
Plane Surface(1531) = {1531};
Curve Loop(1530)    = {1530,2530,-1531, -530};
Plane Surface(1530) = {1530};
Curve Loop(1529)    = {1529,2529,-1530, -529};
Plane Surface(1529) = {1529};
Curve Loop(1528)    = {1528,2528,-1529, -528};
Plane Surface(1528) = {1528};
Curve Loop(1527)    = {1527,2527,-1528, -527};
Plane Surface(1527) = {1527};
Curve Loop(1526)    = {1526,2526,-1527, -526};
Plane Surface(1526) = {1526};
Curve Loop(1525)    = {1525,2525,-1526, -525};
Plane Surface(1525) = {1525};
Curve Loop(1524)    = {1524,2524,-1525, -524};
Plane Surface(1524) = {1524};
Curve Loop(1523)    = {1523,2523,-1524, -523};
Plane Surface(1523) = {1523};
Curve Loop(1522)    = {1522,2522,-1523, -522};
Plane Surface(1522) = {1522};
Curve Loop(1521)    = {1521,2521,-1522, -521};
Plane Surface(1521) = {1521};
Curve Loop(1520)    = {1520,2520,-1521, -520};
Plane Surface(1520) = {1520};
Curve Loop(1519)    = {1519,2519,-1520, -519};
Plane Surface(1519) = {1519};
Curve Loop(1518)    = {1518,2518,-1519, -518};
Plane Surface(1518) = {1518};
Curve Loop(1517)    = {1517,2517,-1518, -517};
Plane Surface(1517) = {1517};
Curve Loop(1516)    = {1516,2516,-1517, -516};
Plane Surface(1516) = {1516};
Curve Loop(1515)    = {1515,2515,-1516, -515};
Plane Surface(1515) = {1515};
Curve Loop(1514)    = {1514,2514,-1515, -514};
Plane Surface(1514) = {1514};
Curve Loop(1513)    = {1513,2513,-1514, -513};
Plane Surface(1513) = {1513};
Curve Loop(1512)    = {1512,2512,-1513, -512};
Plane Surface(1512) = {1512};
Curve Loop(1511)    = {1511,2511,-1512, -511};
Plane Surface(1511) = {1511};
Curve Loop(1510)    = {1510,2510,-1511, -510};
Plane Surface(1510) = {1510};
Curve Loop(1509)    = {1509,2509,-1510, -509};
Plane Surface(1509) = {1509};
Curve Loop(1508)    = {1508,2508,-1509, -508};
Plane Surface(1508) = {1508};
Curve Loop(1507)    = {1507,2507,-1508, -507};
Plane Surface(1507) = {1507};
Curve Loop(1506)    = {1506,2506,-1507, -506};
Plane Surface(1506) = {1506};
Curve Loop(1505)    = {1505,2505,-1506, -505};
Plane Surface(1505) = {1505};
Curve Loop(1504)    = {1504,2504,-1505, -504};
Plane Surface(1504) = {1504};
Curve Loop(1503)    = {1503,2503,-1504, -503};
Plane Surface(1503) = {1503};
Curve Loop(1502)    = {1502,2502,-1503, -502};
Plane Surface(1502) = {1502};
Curve Loop(1501)    = {1501,2501,-1502, -501};
Plane Surface(1501) = {1501};
Curve Loop(1570)    = {1204,2570,-1501, -570};
Plane Surface(1570) = {1570};
Curve Loop(1571)    = {1204,2571,-1049, -571};
Plane Surface(1571) = {1571};
Curve Loop(1070)    = {1049,2070,-1073,  -70};
Plane Surface(1070) = {1070};
Curve Loop(1071)    = {1073,2071,-1072,  -71};
Plane Surface(1071) = {1071};
Curve Loop(1072)    = {1072,2072,-1047,  -72};
Plane Surface(1072) = {1072};
Curve Loop(1581)    = {1575,2581,-1047, -581};
Plane Surface(1581) = {1581};
Curve Loop(1580)    = {1574,2580,-1575, -580};
Plane Surface(1580) = {1580};
Curve Loop(1579)    = {1573,2579,-1574, -579};
Plane Surface(1579) = {1579};
// Helium Along Model Edge
Curve Loop(1604)    = {1312,2604,-1573, -604};
Plane Surface(1604) = {1604};
// Helium Along Y-NGE
Curve Loop(1312)    = {1311,2312,-1312, -312};
Plane Surface(1312) = {1312};
Curve Loop(1311)    = {1310,2311,-1311, -311};
Plane Surface(1311) = {1311};
Curve Loop(1310)    = {1046,2310,-1310, -310};
Plane Surface(1310) = {1310};
Curve Loop(1073)    = {1046,2073,-1071,  -73};
Plane Surface(1073) = {1073};
Curve Loop(1074)    = {1071,2074,-1043,  -74};
Plane Surface(1074) = {1074};
Curve Loop(1317)    = {1004,2317,-1043, -317};
Plane Surface(1317) = {1317};
Curve Loop(1034)    = {1031,2034,-1004,  -34};
Plane Surface(1034) = {1034};
Curve Loop(1033)    = {1007,2033,-1031,  -33};
Plane Surface(1033) = {1033};
Curve Loop(1316)    = {1315,2316,-1007, -316};
Plane Surface(1316) = {1316};
Curve Loop(1315)    = {1314,2315,-1315, -315};
Plane Surface(1315) = {1315};
Curve Loop(1314)    = {1313,2314,-1314, -314};
Plane Surface(1314) = {1314};
// Helium Along Model Edge
Curve Loop(1603)    = {1473,2603,-1313, -603};
Plane Surface(1603) = {1603};
// Helium Along Left Guard Electrode
Curve Loop(1479)    = {1473,2479,-1474, -479};
Plane Surface(1479) = {1479};
Curve Loop(1480)    = {1474,2480,-1475, -480};
Plane Surface(1480) = {1480};
Curve Loop(1481)    = {1475,2481,-1008, -481};
Plane Surface(1481) = {1481};
Curve Loop(1032)    = {1032,2032,-1008,  -32};
Plane Surface(1032) = {1032};
Curve Loop(1031)    = {1033,2031,-1032,  -31};
Plane Surface(1031) = {1031};
Curve Loop(1030)    = {1010,2030,-1033,  -30};
Plane Surface(1030) = {1030};
Curve Loop(1471)    = {1104,2471,-1010, -471};
Plane Surface(1471) = {1471};
Curve Loop(1470)    = {1104,2470,-1401, -470};
Plane Surface(1470) = {1470};

Curve Loop(1401)    = {1401,2401,-1402, -401};
Plane Surface(1401) = {1401};
Curve Loop(1402)    = {1402,2402,-1403, -402};
Plane Surface(1402) = {1402};
Curve Loop(1403)    = {1403,2403,-1404, -403};
Plane Surface(1403) = {1403};
Curve Loop(1404)    = {1404,2404,-1405, -404};
Plane Surface(1404) = {1404};
Curve Loop(1405)    = {1405,2405,-1406, -405};
Plane Surface(1405) = {1405};
Curve Loop(1406)    = {1406,2406,-1407, -406};
Plane Surface(1406) = {1406};
Curve Loop(1407)    = {1407,2407,-1408, -407};
Plane Surface(1407) = {1407};
Curve Loop(1408)    = {1408,2408,-1409, -408};
Plane Surface(1408) = {1408};
Curve Loop(1409)    = {1409,2409,-1410, -409};
Plane Surface(1409) = {1409};
Curve Loop(1410)    = {1410,2410,-1411, -410};
Plane Surface(1410) = {1410};
Curve Loop(1411)    = {1411,2411,-1412, -411};
Plane Surface(1411) = {1411};
Curve Loop(1412)    = {1412,2412,-1413, -412};
Plane Surface(1412) = {1412};
Curve Loop(1413)    = {1413,2413,-1414, -413};
Plane Surface(1413) = {1413};
Curve Loop(1414)    = {1414,2414,-1415, -414};
Plane Surface(1414) = {1414};
Curve Loop(1415)    = {1415,2415,-1416, -415};
Plane Surface(1415) = {1415};
Curve Loop(1416)    = {1416,2416,-1417, -416};
Plane Surface(1416) = {1416};
Curve Loop(1417)    = {1417,2417,-1418, -417};
Plane Surface(1417) = {1417};
Curve Loop(1418)    = {1418,2418,-1419, -418};
Plane Surface(1418) = {1418};
Curve Loop(1419)    = {1419,2419,-1420, -419};
Plane Surface(1419) = {1419};
Curve Loop(1420)    = {1420,2420,-1421, -420};
Plane Surface(1420) = {1420};
Curve Loop(1421)    = {1421,2421,-1422, -421};
Plane Surface(1421) = {1421};
Curve Loop(1422)    = {1422,2422,-1423, -422};
Plane Surface(1422) = {1422};
Curve Loop(1423)    = {1423,2423,-1424, -423};
Plane Surface(1423) = {1423};
Curve Loop(1424)    = {1424,2424,-1425, -424};
Plane Surface(1424) = {1424};
Curve Loop(1425)    = {1425,2425,-1426, -425};
Plane Surface(1425) = {1425};
Curve Loop(1426)    = {1426,2426,-1427, -426};
Plane Surface(1426) = {1426};
Curve Loop(1427)    = {1427,2427,-1428, -427};
Plane Surface(1427) = {1427};
Curve Loop(1428)    = {1428,2428,-1429, -428};
Plane Surface(1428) = {1428};
Curve Loop(1429)    = {1429,2429,-1430, -429};
Plane Surface(1429) = {1429};
Curve Loop(1430)    = {1430,2430,-1431, -430};
Plane Surface(1430) = {1430};
Curve Loop(1431)    = {1431,2431,-1432, -431};
Plane Surface(1431) = {1431};
Curve Loop(1432)    = {1432,2432,-1433, -432};
Plane Surface(1432) = {1432};
Curve Loop(1433)    = {1433,2433,-1434, -433};
Plane Surface(1433) = {1433};
Curve Loop(1434)    = {1434,2434,-1435, -434};
Plane Surface(1434) = {1434};
Curve Loop(1435)    = {1435,2435,-1436, -435};
Plane Surface(1435) = {1435};
Curve Loop(1436)    = {1436,2436,-1437, -436};
Plane Surface(1436) = {1436};
Curve Loop(1437)    = {1437,2437,-1438, -437};
Plane Surface(1437) = {1437};
Curve Loop(1438)    = {1438,2438,-1439, -438};
Plane Surface(1438) = {1438};
Curve Loop(1439)    = {1439,2439,-1440, -439};
Plane Surface(1439) = {1439};
Curve Loop(1440)    = {1440,2440,-1441, -440};
Plane Surface(1440) = {1440};
Curve Loop(1441)    = {1441,2441,-1442, -441};
Plane Surface(1441) = {1441};
Curve Loop(1442)    = {1442,2442,-1443, -442};
Plane Surface(1442) = {1442};
Curve Loop(1443)    = {1443,2443,-1444, -443};
Plane Surface(1443) = {1443};
Curve Loop(1444)    = {1444,2444,-1445, -444};
Plane Surface(1444) = {1444};
Curve Loop(1445)    = {1445,2445,-1446, -445};
Plane Surface(1445) = {1445};
Curve Loop(1446)    = {1446,2446,-1447, -446};
Plane Surface(1446) = {1446};
Curve Loop(1447)    = {1447,2447,-1448, -447};
Plane Surface(1447) = {1447};
Curve Loop(1448)    = {1448,2448,-1449, -448};
Plane Surface(1448) = {1448};
Curve Loop(1449)    = {1449,2449,-1450, -449};
Plane Surface(1449) = {1449};
Curve Loop(1450)    = {1450,2450,-1451, -450};
Plane Surface(1450) = {1450};
Curve Loop(1451)    = {1451,2451,-1452, -451};
Plane Surface(1451) = {1451};
Curve Loop(1452)    = {1452,2452,-1453, -452};
Plane Surface(1452) = {1452};
Curve Loop(1453)    = {1453,2453,-1454, -453};
Plane Surface(1453) = {1453};
Curve Loop(1454)    = {1454,2454,-1455, -454};
Plane Surface(1454) = {1454};
Curve Loop(1455)    = {1455,2455,-1456, -455};
Plane Surface(1455) = {1455};
Curve Loop(1456)    = {1456,2456,-1457, -456};
Plane Surface(1456) = {1456};
Curve Loop(1457)    = {1457,2457,-1458, -457};
Plane Surface(1457) = {1457};
Curve Loop(1458)    = {1458,2458,-1459, -458};
Plane Surface(1458) = {1458};
Curve Loop(1459)    = {1459,2459,-1460, -459};
Plane Surface(1459) = {1459};
Curve Loop(1460)    = {1460,2460,-1461, -460};
Plane Surface(1460) = {1460};
Curve Loop(1461)    = {1461,2461,-1462, -461};
Plane Surface(1461) = {1461};
Curve Loop(1462)    = {1462,2462,-1463, -462};
Plane Surface(1462) = {1462};
Curve Loop(1463)    = {1463,2463,-1464, -463};
Plane Surface(1463) = {1463};
Curve Loop(1464)    = {1464,2464,-1465, -464};
Plane Surface(1464) = {1464};
Curve Loop(1465)    = {1465,2465,-1466, -465};
Plane Surface(1465) = {1465};
Curve Loop(1466)    = {1466,2466,-1467, -466};
Plane Surface(1466) = {1466};
Curve Loop(1467)    = {1467,2467,-1468, -467};
Plane Surface(1467) = {1467};
Curve Loop(1468)    = {1468,2468,-1103, -468};
Plane Surface(1468) = {1468};
Curve Loop(1472)    = {1011,2472,-1103, -472};
Plane Surface(1472) = {1472};
Curve Loop(1038)    = {1034,2038,-1011,  -38};
Plane Surface(1038) = {1038};
Curve Loop(1037)    = {1025,2037,-1034,  -37};
Plane Surface(1037) = {1037};
Curve Loop(1473)    = {1025,2473,-1470, -473};
Plane Surface(1473) = {1473};
// Helium Along Model Edge 
Curve Loop(1601)    = {1301,2601,-1470, -601};
Plane Surface(1601) = {1601};






// Channel Top Layer (4000 Series) ------------------------------------------------------------------------------------------------

// Left Channel Electrode (index: 1-39)
// Points on edge of Left Channel Electrode
Point(4003) = {-fg/2, gch/2 + 3.5, dch, den3};
Point(4004) = {-fg/2,-gch/2 + 3.5, dch, den3};
Point(4007) = {-40,  -hch/2 + 3.5, dch, den3};
Point(4008) = {-42,  -hch/2 + 3.5, dch, den3};
Point(4010) = {-47,          -0.4, dch, den3};
Point(4011) = {-47,             7, dch, den3};
Point(4025) = {-42,   hch/2 + 3.5, dch, den3};
Point(4026) = {-40,   hch/2 + 3.5, dch, den3};
// Points internal to Left Channel Electrode
Point(4030) = {-40, gch/2 + 3.5, dch, den3};
Point(4031) = {-40,-gch/2 + 3.5, dch, den3};
Point(4032) = {-42,           0, dch, den3};
Point(4033) = {-46,           0, dch, den3};
Point(4034) = {-42,           7, dch, den3};
// Lines on edge of Left Channel Electrode
Line(4003)  = {4003,4004};
Line(4007)  = {4007,4008};
Line(4010)  = {4010,4011};
Line(4025)  = {4025,4026};
// Lines internal to Left Channel Electrode
Line(4030)  = {4010,4033};
Line(4031)  = {4033,4032};
Line(4032)  = {4032,4008};
Line(4033)  = {4007,4031};
Line(4034)  = {4031,4004};
Line(4035)  = {4003,4030};
Line(4036)  = {4030,4026};
Line(4037)  = {4025,4034};
Line(4038)  = {4034,4011};
// Curve Loops internal to Left Channel Electrode
Curve Loop(4005)    = {-4003,4035,4036,-4025,4037,4038,-4010,4030,4031,4032,-4007,4033,4034};
Plane Surface(4005) = {4005};

// Right Channel Electrode (index: 40-79)
Point(4042) = {fg/2, gch/2 + 3.5, dch, den3};
Point(4043) = {fg/2,-gch/2 + 3.5, dch, den3};
Point(4046) = {40,  -hch/2 + 3.5, dch, den3};
Point(4047) = {42,  -hch/2 + 3.5, dch, den3};
Point(4049) = {47,          -0.4, dch, den3};
Point(4050) = {47,             7, dch, den3};
Point(4064) = {42,   hch/2 + 3.5, dch, den3};
Point(4065) = {40,   hch/2 + 3.5, dch, den3};
// Points internal to Right Channel Electrode
Point(4070) = {40, gch/2 + 3.5, dch, den3};
Point(4071) = {40,-gch/2 + 3.5, dch, den3};
Point(4072) = {42,           0, dch, den3};
Point(4073) = {46,           0, dch, den3};
Point(4074) = {42,           7, dch, den3};
// Lines on edge of Right Channel Electrode
Line(4042) = {4042,4043};
Line(4046) = {4046,4047};
Line(4049) = {4049,4050};
Line(4064) = {4064,4065};
// Lines internal to Right Channel Electrode
Line(4070) = {4049,4073};
Line(4071) = {4073,4072};
Line(4072) = {4072,4047};
Line(4073) = {4046,4071};
Line(4074) = {4071,4043};
Line(4075) = {4042,4070};
Line(4076) = {4070,4065};
Line(4077) = {4064,4074};
Line(4078) = {4074,4050};
// Curve Loops internal to Right Channel Electrode
Curve Loop(4045)    = {-4042,4075,4076,-4064,4077,4078,-4049,4070,4071,4072,-4046,4073,4074};
Plane Surface(4045) = {4045};

// Left Reservoir Electrode (index: 100-199)
// Points on edge of Left Reservoir Electrode
Point(4103) = { -47.4,    7, dch, den3};
Point(4104) = { -47.4,-0.56, dch, den3};
// Lines on edge of Left Reservoir Electrode
Line(4103)  = {4103,4104};

// Right Reservoir Electrode (index: 200-299)
// Points on edge of Right Reservoir Electrode
Point(4203) = { 47.4,    7, dch, den3};
Point(4204) = { 47.4,-0.56, dch, den3};
// Lines on edge of Right Reservoir Electrode
Line(4203) = {4203,4204};

// Y-Positive Gate Electrode remainder, not already defined as part of channel electrodes (index: 300-309)
// Points on edge of Y-PGE remainder
Point(4301) = {-40, 29, dch, den2};
Point(4302) = { 40, 29, dch, den2};
// Lines on edge of Y-PGE remainder
Line(4301)  = {4042,4003};
Line(4302)  = {4026,4301};
Line(4304)  = {4302,4065};

// Y-Negative Gate Electrode remainder, not already defined as part of channel electrodes (index: 310-319)
// Points on edge of Y-NGE remainder
Point(4310) = { 40,  -24, dch, den2};
Point(4311) = { 17,  -46, dch, den2};
Point(4312) = { 17, -304, dch, den2};
Point(4313) = {-17, -304, dch, den2};
Point(4314) = {-17,  -46, dch, den2};
Point(4315) = {-40,  -24, dch, den2};
// Lines on edge of Y-NGE remainder
Line(4310) = {4046,4310};
Line(4311) = {4310,4311};
Line(4312) = {4311,4312};
Line(4314) = {4313,4314};
Line(4315) = {4314,4315};
Line(4316) = {4315,4007};
Line(4317) = {4004,4043};

// Substrate in Channel (index: 320-329)
Curve Loop(4320)    = {4003,4317,-4042,4301};
Plane Surface(4320) = {4320};

// Helium level edge of Left Guard Electrode (index: 400-499)
// Points on edge of Left Guard Electrode
Point(4401) = { -51,  -2, dch, den2};
Point(4402) = { -51,-273, dch, den2};
Point(4403) = {-454,-273, dch, den2};
Point(4404) = {-454,-265, dch, den2};
Point(4405) = { -59,-265, dch, den2};
Point(4406) = { -59,-256, dch, den2};
Point(4407) = {-454,-256, dch, den2};
Point(4408) = {-454,-248, dch, den2};
Point(4409) = { -59,-248, dch, den2};
Point(4410) = { -59,-239, dch, den2};
Point(4411) = {-454,-239, dch, den2};
Point(4412) = {-454,-231, dch, den2};
Point(4413) = { -59,-231, dch, den2};
Point(4414) = { -59,-222, dch, den2};
Point(4415) = {-454,-222, dch, den2};
Point(4416) = {-454,-214, dch, den2};
Point(4417) = { -59,-214, dch, den2};
Point(4418) = { -59,-205, dch, den2};
Point(4419) = {-454,-205, dch, den2};
Point(4420) = {-454,-197, dch, den2};
Point(4421) = { -59,-197, dch, den2};
Point(4422) = { -59,-188, dch, den2};
Point(4423) = {-454,-188, dch, den2};
Point(4424) = {-454,-180, dch, den2};
Point(4425) = { -59,-180, dch, den2};
Point(4426) = { -59,-171, dch, den2};
Point(4427) = {-454,-171, dch, den2};
Point(4428) = {-454,-163, dch, den2};
Point(4429) = { -59,-163, dch, den2};
Point(4430) = { -59,-154, dch, den2};
Point(4431) = {-454,-154, dch, den2};
Point(4432) = {-454,-146, dch, den2};
Point(4433) = { -59,-146, dch, den2};
Point(4434) = { -59,-137, dch, den2};
Point(4435) = {-454,-137, dch, den2};
Point(4436) = {-454,-129, dch, den2};
Point(4437) = { -59,-129, dch, den2};
Point(4438) = { -59,-120, dch, den2};
Point(4439) = {-454,-120, dch, den2};
Point(4440) = {-454,-112, dch, den2};
Point(4441) = { -59,-112, dch, den2};
Point(4442) = { -59,-103, dch, den2};
Point(4443) = {-454,-103, dch, den2};
Point(4444) = {-454, -95, dch, den2};
Point(4445) = { -59, -95, dch, den2};
Point(4446) = { -59, -86, dch, den2};
Point(4447) = {-454, -86, dch, den2};
Point(4448) = {-454, -78, dch, den2};
Point(4449) = { -59, -78, dch, den2};
Point(4450) = { -59, -69, dch, den2};
Point(4451) = {-454, -69, dch, den2};
Point(4452) = {-454, -61, dch, den2};
Point(4453) = { -59, -61, dch, den2};
Point(4454) = { -59, -52, dch, den2};
Point(4455) = {-454, -52, dch, den2};
Point(4456) = {-454, -44, dch, den2};
Point(4457) = { -59, -44, dch, den2};
Point(4458) = { -59, -35, dch, den2};
Point(4459) = {-454, -35, dch, den2};
Point(4460) = {-454, -27, dch, den2};
Point(4461) = { -59, -27, dch, den2};
Point(4462) = { -59, -18, dch, den2};
Point(4463) = {-454, -18, dch, den2};
Point(4464) = {-454, -10, dch, den2};
Point(4465) = { -59, -10, dch, den2};
Point(4466) = { -59,  -1, dch, den2};
Point(4467) = {-454,  -1, dch, den2};
Point(4468) = {-454,   7, dch, den2};
Point(4470) = { -42,  29, dch, den2};
Point(4473) = { -21,-304, dch, den2};
Point(4474) = { -21, -49, dch, den2};
Point(4475) = { -42, -27, dch, den2};
// Lines on edge of Left Guard Electrode
Line(4401) = {4401,4402};
Line(4402) = {4402,4403};
Line(4403) = {4403,4404};
Line(4404) = {4404,4405};
Line(4405) = {4405,4406};
Line(4406) = {4406,4407};
Line(4407) = {4407,4408};
Line(4408) = {4408,4409};
Line(4409) = {4409,4410};
Line(4410) = {4410,4411};
Line(4411) = {4411,4412};
Line(4412) = {4412,4413};
Line(4413) = {4413,4414};
Line(4414) = {4414,4415};
Line(4415) = {4415,4416};
Line(4416) = {4416,4417};
Line(4417) = {4417,4418};
Line(4418) = {4418,4419};
Line(4419) = {4419,4420};
Line(4420) = {4420,4421};
Line(4421) = {4421,4422};
Line(4422) = {4422,4423};
Line(4423) = {4423,4424};
Line(4424) = {4424,4425};
Line(4425) = {4425,4426};
Line(4426) = {4426,4427};
Line(4427) = {4427,4428};
Line(4428) = {4428,4429};
Line(4429) = {4429,4430};
Line(4430) = {4430,4431};
Line(4431) = {4431,4432};
Line(4432) = {4432,4433};
Line(4433) = {4433,4434};
Line(4434) = {4434,4435};
Line(4435) = {4435,4436};
Line(4436) = {4436,4437};
Line(4437) = {4437,4438};
Line(4438) = {4438,4439};
Line(4439) = {4439,4440};
Line(4440) = {4440,4441};
Line(4441) = {4441,4442};
Line(4442) = {4442,4443};
Line(4443) = {4443,4444};
Line(4444) = {4444,4445};
Line(4445) = {4445,4446};
Line(4446) = {4446,4447};
Line(4447) = {4447,4448};
Line(4448) = {4448,4449};
Line(4449) = {4449,4450};
Line(4450) = {4450,4451};
Line(4451) = {4451,4452};
Line(4452) = {4452,4453};
Line(4453) = {4453,4454};
Line(4454) = {4454,4455};
Line(4455) = {4455,4456};
Line(4456) = {4456,4457};
Line(4457) = {4457,4458};
Line(4458) = {4458,4459};
Line(4459) = {4459,4460};
Line(4460) = {4460,4461};
Line(4461) = {4461,4462};
Line(4462) = {4462,4463};
Line(4463) = {4463,4464};
Line(4464) = {4464,4465};
Line(4465) = {4465,4466};
Line(4466) = {4466,4467};
Line(4467) = {4467,4468};
Line(4468) = {4468,4103};
Line(4470) = {4104,4401};
Line(4471) = {4104,4010};
Line(4472) = {4011,4103};
Line(4473) = {4025,4470};
Line(4479) = {4473,4474};
Line(4480) = {4474,4475};
Line(4481) = {4475,4008};

// Curve Loops below Helium 
Curve Loop(4401)    = {4471,4010,4472,4103}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(4401) = {4401};
Curve Loop(4402)    = {4103,4470,4401,4402,4403,4404,4405,4406,4407,4408,4409,4410,4411,4412,4413,4414,4415,4416,4417,4418,
                       4419,4420,4421,4422,4423,4424,4425,4426,4427,4428,4429,4430,4431,4432,4433,4434,4435,4436,4437,4438,
                       4439,4440,4441,4442,4443,4444,4445,4446,4447,4448,4449,4450,4451,4452,4453,4454,4455,4456,4457,4458,
                       4459,4460,4461,4462,4463,4464,4465,4466,4467,4468}; // Bottom of Left Reservoir
Plane Surface(4402) = {4402};

// Helium level edge of Right Guard Electrode (index: 500-599)

// Points on edge of Right Guard Electrode
Point(4501) = {  51,  -2, dch, den2};
Point(4502) = {  51,-273, dch, den2};
Point(4503) = { 454,-273, dch, den2};
Point(4504) = { 454,-265, dch, den2};
Point(4505) = {  59,-265, dch, den2};
Point(4506) = {  59,-256, dch, den2};
Point(4507) = { 454,-256, dch, den2};
Point(4508) = { 454,-248, dch, den2};
Point(4509) = {  59,-248, dch, den2};
Point(4510) = {  59,-239, dch, den2};
Point(4511) = { 454,-239, dch, den2};
Point(4512) = { 454,-231, dch, den2};
Point(4513) = {  59,-231, dch, den2};
Point(4514) = {  59,-222, dch, den2};
Point(4515) = { 454,-222, dch, den2};
Point(4516) = { 454,-214, dch, den2};
Point(4517) = {  59,-214, dch, den2};
Point(4518) = {  59,-205, dch, den2};
Point(4519) = { 454,-205, dch, den2};
Point(4520) = { 454,-197, dch, den2};
Point(4521) = {  59,-197, dch, den2};
Point(4522) = {  59,-188, dch, den2};
Point(4523) = { 454,-188, dch, den2};
Point(4524) = { 454,-180, dch, den2};
Point(4525) = {  59,-180, dch, den2};
Point(4526) = {  59,-171, dch, den2};
Point(4527) = { 454,-171, dch, den2};
Point(4528) = { 454,-163, dch, den2};
Point(4529) = {  59,-163, dch, den2};
Point(4530) = {  59,-154, dch, den2};
Point(4531) = { 454,-154, dch, den2};
Point(4532) = { 454,-146, dch, den2};
Point(4533) = {  59,-146, dch, den2};
Point(4534) = {  59,-137, dch, den2};
Point(4535) = { 454,-137, dch, den2};
Point(4536) = { 454,-129, dch, den2};
Point(4537) = {  59,-129, dch, den2};
Point(4538) = {  59,-120, dch, den2};
Point(4539) = { 454,-120, dch, den2};
Point(4540) = { 454,-112, dch, den2};
Point(4541) = {  59,-112, dch, den2};
Point(4542) = {  59,-103, dch, den2};
Point(4543) = { 454,-103, dch, den2};
Point(4544) = { 454, -95, dch, den2};
Point(4545) = {  59, -95, dch, den2};
Point(4546) = {  59, -86, dch, den2};
Point(4547) = { 454, -86, dch, den2};
Point(4548) = { 454, -78, dch, den2};
Point(4549) = {  59, -78, dch, den2};
Point(4550) = {  59, -69, dch, den2};
Point(4551) = { 454, -69, dch, den2};
Point(4552) = { 454, -61, dch, den2};
Point(4553) = {  59, -61, dch, den2};
Point(4554) = {  59, -52, dch, den2};
Point(4555) = { 454, -52, dch, den2};
Point(4556) = { 454, -44, dch, den2};
Point(4557) = {  59, -44, dch, den2};
Point(4558) = {  59, -35, dch, den2};
Point(4559) = { 454, -35, dch, den2};
Point(4560) = { 454, -27, dch, den2};
Point(4561) = {  59, -27, dch, den2};
Point(4562) = {  59, -18, dch, den2};
Point(4563) = { 454, -18, dch, den2};
Point(4564) = { 454, -10, dch, den2};
Point(4565) = {  59, -10, dch, den2};
Point(4566) = {  59,  -1, dch, den2};
Point(4567) = { 454,  -1, dch, den2};
Point(4568) = { 454,   7, dch, den2};
Point(4570) = {  42,  29, dch, den2};
Point(4573) = {  21,-304, dch, den2};
Point(4574) = {  21, -49, dch, den2};
Point(4575) = {  42, -27, dch, den2};

// Lines on channel top edge of Right Guard Electrode
Line(4501) = {4501,4502};
Line(4502) = {4502,4503};
Line(4503) = {4503,4504};
Line(4504) = {4504,4505};
Line(4505) = {4505,4506};
Line(4506) = {4506,4507};
Line(4507) = {4507,4508};
Line(4508) = {4508,4509};
Line(4509) = {4509,4510};
Line(4510) = {4510,4511};
Line(4511) = {4511,4512};
Line(4512) = {4512,4513};
Line(4513) = {4513,4514};
Line(4514) = {4514,4515};
Line(4515) = {4515,4516};
Line(4516) = {4516,4517};
Line(4517) = {4517,4518};
Line(4518) = {4518,4519};
Line(4519) = {4519,4520};
Line(4520) = {4520,4521};
Line(4521) = {4521,4522};
Line(4522) = {4522,4523};
Line(4523) = {4523,4524};
Line(4524) = {4524,4525};
Line(4525) = {4525,4526};
Line(4526) = {4526,4527};
Line(4527) = {4527,4528};
Line(4528) = {4528,4529};
Line(4529) = {4529,4530};
Line(4530) = {4530,4531};
Line(4531) = {4531,4532};
Line(4532) = {4532,4533};
Line(4533) = {4533,4534};
Line(4534) = {4534,4535};
Line(4535) = {4535,4536};
Line(4536) = {4536,4537};
Line(4537) = {4537,4538};
Line(4538) = {4538,4539};
Line(4539) = {4539,4540};
Line(4540) = {4540,4541};
Line(4541) = {4541,4542};
Line(4542) = {4542,4543};
Line(4543) = {4543,4544};
Line(4544) = {4544,4545};
Line(4545) = {4545,4546};
Line(4546) = {4546,4547};
Line(4547) = {4547,4548};
Line(4548) = {4548,4549};
Line(4549) = {4549,4550};
Line(4550) = {4550,4551};
Line(4551) = {4551,4552};
Line(4552) = {4552,4553};
Line(4553) = {4553,4554};
Line(4554) = {4554,4555};
Line(4555) = {4555,4556};
Line(4556) = {4556,4557};
Line(4557) = {4557,4558};
Line(4558) = {4558,4559};
Line(4559) = {4559,4560};
Line(4560) = {4560,4561};
Line(4561) = {4561,4562};
Line(4562) = {4562,4563};
Line(4563) = {4563,4564};
Line(4564) = {4564,4565};
Line(4565) = {4565,4566};
Line(4566) = {4566,4567};
Line(4567) = {4567,4568};
Line(4568) = {4568,4203};
Line(4570) = {4204,4501};
Line(4571) = {4204,4049};
Line(4572) = {4050,4203};
Line(4573) = {4064,4570};
Line(4579) = {4573,4574};
Line(4580) = {4574,4575};
Line(4581) = {4575,4047};

// Curve Loops below Helium 
Curve Loop(4501)    = {4571,4049,4572,4203}; // Dielectric between Reservoir and Channel Electrodes
Plane Surface(4501) = {4501};
Curve Loop(4502)    = {4203,4570,4501,4502,4503,4504,4505,4506,4507,4508,4509,4510,4511,4512,4513,4514,4515,4516,4517,4518,
                       4519,4520,4521,4522,4523,4524,4525,4526,4527,4528,4529,4530,4531,4532,4533,4534,4535,4536,4537,4538,
                       4539,4540,4541,4542,4543,4544,4545,4546,4547,4548,4549,4550,4551,4552,4553,4554,4555,4556,4557,4558,
                       4559,4560,4561,4562,4563,4564,4565,4566,4567,4568}; // Bottom of Right Reservoir
Plane Surface(4502) = {4502};

// Only Dielectric (index: 600-610)

Line(4601)          = {4301,4470};
Curve Loop(4601)    = {4025,4302,4601,-4473};
Plane Surface(4601) = {4601};
Line(4602)          = {4570,4302};
Curve Loop(4602)    = {4573,4602,4304,-4064};
Plane Surface(4602) = {4602};
Line(4603)          = {4473,4313};
Curve Loop(4603)    = {4603,4314,4315,4316,4007,-4481,-4480,-4479};
Plane Surface(4603) = {4603};
Line(4604)          = {4312,4573};
Curve Loop(4604)    = {4604,4579,4580,4581,-4046,4310,4311,4312};
Plane Surface(4604) = {4604};

// Outer Edge Points
Point(4017) = {-457,  29, dch, den3};
Point(4018) = {-453,  29, dch, den3};
Point(4056) = { 457,  29, dch, den3};
Point(4057) = { 453,  29, dch, den3};
Point(4110) = {-453,-304, dch, den3};
Point(4111) = {-457,-304, dch, den3};
Point(4210) = { 453,-304, dch, den3};
Point(4211) = { 457,-304, dch, den3};
Point(4471) = {-499,  29, dch, den2};
Point(4472) = {-499,-304, dch, den2};
Point(4571) = { 499,  29, dch, den2};
Point(4572) = { 499,-304, dch, den2};

// Out Edge Lines (counterclockwise)
// 4602
Line(4303) = {4301,4302};
// 4601 
Line(4474) = {4470,4018};
Line(4017) = {4017,4018};
Line(4475) = {4017,4471};
Line(4476) = {4471,4472};
Line(4477) = {4472,4111};
Line(4110) = {4110,4111};
Line(4478) = {4110,4473};
// 4603
Line(4313) = {4312,4313};
// 4604
Line(4578) = {4210,4573};
Line(4210) = {4210,4211};
Line(4577) = {4572,4211};
Line(4576) = {4571,4572};
Line(4575) = {4056,4571};
Line(4056) = {4056,4057};
Line(4574) = {4570,4057};

Curve Loop(4101)    = {4470,4401,4402,4403,4404,4405,4406,4407,4408,4409,4410,4411,4412,4413,4414,4415,4416,4417,4418,4419,
                       4420,4421,4422,4423,4424,4425,4426,4427,4428,4429,4430,4431,4432,4433,4434,4435,4436,4437,4438,4439,
                       4440,4441,4442,4443,4444,4445,4446,4447,4448,4449,4450,4451,4452,4453,4454,4455,4456,4457,4458,4459,
                       4460,4461,4462,4463,4464,4465,4466,4467,4468,-4472,-4038,-4037,4473,4474,-4017,4475,4476,4477,-4110,
                       4478,4479,4480,4481,-4032,-4031,-4030,-4471}; // Bottom of Left Guard
Plane Surface(4101) = {4101};

Curve Loop(4201)    = {4570,4501,4502,4503,4504,4505,4506,4507,4508,4509,4510,4511,4512,4513,4514,4515,4516,4517,4518,4519,
                       4520,4521,4522,4523,4524,4525,4526,4527,4528,4529,4530,4531,4532,4533,4534,4535,4536,4537,4538,4539,
                       4540,4541,4542,4543,4544,4545,4546,4547,4548,4549,4550,4551,4552,4553,4554,4555,4556,4557,4558,4559,
                       4560,4561,4562,4563,4564,4565,4566,4567,4568,-4572,-4078,-4077,4573,4574,-4056,4575,4576,4577,-4210,
                       4578,4579,4580,4581,-4072,-4071,-4070,-4571}; // Bottom of Right Guard
Plane Surface(4201) = {4201};

// Curve Loop of Y-NGE remainder
Curve Loop(4310) = {4317,-4074,-4073,4310,4311,4312,4313,4314,4315,4316,4033,4034};
Plane Surface(4310) = {4310};
// Curve Loop of Y-PGE remainder
Curve Loop(4301) = {4304,-4076,-4075,4301,4035,4036,4302,4303};
Plane Surface(4301) = {4301};





// V-Lines from Helium Top Layer, Base Layer to Channel Top Layer (3000 Series) -----------------------------------------------------------

// Left Channel Electrode Points (index:  1-39)
Line(3003) = {2003,4003};
Line(3004) = {2004,4004};
Line(3007) = {2007,4007};
Line(3008) = {2008,4008};
Line(3010) = {2010,4010};
Line(3011) = {2011,4011};
Line(3025) = {2025,4025};
Line(3026) = {2026,4026};
Line(3030) = {2030,4030};
Line(3031) = {2031,4031};
Line(3032) = {2032,4032};
Line(3033) = {2033,4033};
Line(3034) = {2034,4034};

// Right Channel Electrode Points (index: 40-79)
Line(3042) = {2042,4042};
Line(3043) = {2043,4043};
Line(3046) = {2046,4046};
Line(3047) = {2047,4047};
Line(3049) = {2049,4049};
Line(3050) = {2050,4050};
Line(3064) = {2064,4064};
Line(3065) = {2065,4065};
Line(3070) = {2070,4070};
Line(3071) = {2071,4071};
Line(3072) = {2072,4072};
Line(3073) = {2073,4073};
Line(3074) = {2074,4074};

// Points on edge of Left Reservoir Electrode
Line(3103) = {2103,4103};
Line(3104) = {2104,4104};

// Points on edge of Right Reservoir Electrode
Line(3203) = {2203,4203};
Line(3204) = {2204,4204};

// Points on edge of Y-PGE remainder (index: 300-309)
Line(3301) = {2301,4301};
Line(3302) = {2302,4302};

// Points on edge of Y-NGE remainder (index: 310-319)
Line(3310) = {2310,4310};
Line(3311) = {2311,4311};
Line(3312) = {2312,4312};
Line(3313) = {2313,4313};
Line(3314) = {2314,4314};
Line(3315) = {2315,4315};

// Points on edge of Left Guard Electrode (index: 400-499)
Line(3401) = {2401,4401};
Line(3402) = {2402,4402};
Line(3403) = {2403,4403};
Line(3404) = {2404,4404};
Line(3405) = {2405,4405};
Line(3406) = {2406,4406};
Line(3407) = {2407,4407};
Line(3408) = {2408,4408};
Line(3409) = {2409,4409};
Line(3410) = {2410,4410};
Line(3411) = {2411,4411};
Line(3412) = {2412,4412};
Line(3413) = {2413,4413};
Line(3414) = {2414,4414};
Line(3415) = {2415,4415};
Line(3416) = {2416,4416};
Line(3417) = {2417,4417};
Line(3418) = {2418,4418};
Line(3419) = {2419,4419};
Line(3420) = {2420,4420};
Line(3421) = {2421,4421};
Line(3422) = {2422,4422};
Line(3423) = {2423,4423};
Line(3424) = {2424,4424};
Line(3425) = {2425,4425};
Line(3426) = {2426,4426};
Line(3427) = {2427,4427};
Line(3428) = {2428,4428};
Line(3429) = {2429,4429};
Line(3430) = {2430,4430};
Line(3431) = {2431,4431};
Line(3432) = {2432,4432};
Line(3433) = {2433,4433};
Line(3434) = {2434,4434};
Line(3435) = {2435,4435};
Line(3436) = {2436,4436};
Line(3437) = {2437,4437};
Line(3438) = {2438,4438};
Line(3439) = {2439,4439};
Line(3440) = {2440,4440};
Line(3441) = {2441,4441};
Line(3442) = {2442,4442};
Line(3443) = {2443,4443};
Line(3444) = {2444,4444};
Line(3445) = {2445,4445};
Line(3446) = {2446,4446};
Line(3447) = {2447,4447};
Line(3448) = {2448,4448};
Line(3449) = {2449,4449};
Line(3450) = {2450,4450};
Line(3451) = {2451,4451};
Line(3452) = {2452,4452};
Line(3453) = {2453,4453};
Line(3454) = {2454,4454};
Line(3455) = {2455,4455};
Line(3456) = {2456,4456};
Line(3457) = {2457,4457};
Line(3458) = {2458,4458};
Line(3459) = {2459,4459};
Line(3460) = {2460,4460};
Line(3461) = {2461,4461};
Line(3462) = {2462,4462};
Line(3463) = {2463,4463};
Line(3464) = {2464,4464};
Line(3465) = {2465,4465};
Line(3466) = {2466,4466};
Line(3467) = {2467,4467};
Line(3468) = {2468,4468};

Line(3470) = {2470,4470};
Line(3473) = {2473,4473};
Line(3474) = {2474,4474};
Line(3475) = {2475,4475};




// Points on edge of Right Guard Electrode (index: 500-599)
Line(3501) = {2501,4501};
Line(3502) = {2502,4502};
Line(3503) = {2503,4503};
Line(3504) = {2504,4504};
Line(3505) = {2505,4505};
Line(3506) = {2506,4506};
Line(3507) = {2507,4507};
Line(3508) = {2508,4508};
Line(3509) = {2509,4509};
Line(3510) = {2510,4510};
Line(3511) = {2511,4511};
Line(3512) = {2512,4512};
Line(3513) = {2513,4513};
Line(3514) = {2514,4514};
Line(3515) = {2515,4515};
Line(3516) = {2516,4516};
Line(3517) = {2517,4517};
Line(3518) = {2518,4518};
Line(3519) = {2519,4519};
Line(3520) = {2520,4520};
Line(3521) = {2521,4521};
Line(3522) = {2522,4522};
Line(3523) = {2523,4523};
Line(3524) = {2524,4524};
Line(3525) = {2525,4525};
Line(3526) = {2526,4526};
Line(3527) = {2527,4527};
Line(3528) = {2528,4528};
Line(3529) = {2529,4529};
Line(3530) = {2530,4530};
Line(3531) = {2531,4531};
Line(3532) = {2532,4532};
Line(3533) = {2533,4533};
Line(3534) = {2534,4534};
Line(3535) = {2535,4535};
Line(3536) = {2536,4536};
Line(3537) = {2537,4537};
Line(3538) = {2538,4538};
Line(3539) = {2539,4539};
Line(3540) = {2540,4540};
Line(3541) = {2541,4541};
Line(3542) = {2542,4542};
Line(3543) = {2543,4543};
Line(3544) = {2544,4544};
Line(3545) = {2545,4545};
Line(3546) = {2546,4546};
Line(3547) = {2547,4547};
Line(3548) = {2548,4548};
Line(3549) = {2549,4549};
Line(3550) = {2550,4550};
Line(3551) = {2551,4551};
Line(3552) = {2552,4552};
Line(3553) = {2553,4553};
Line(3554) = {2554,4554};
Line(3555) = {2555,4555};
Line(3556) = {2556,4556};
Line(3557) = {2557,4557};
Line(3558) = {2558,4558};
Line(3559) = {2559,4559};
Line(3560) = {2560,4560};
Line(3561) = {2561,4561};
Line(3562) = {2562,4562};
Line(3563) = {2563,4563};
Line(3564) = {2564,4564};
Line(3565) = {2565,4565};
Line(3566) = {2566,4566};
Line(3567) = {2567,4567};
Line(3568) = {2568,4568};

Line(3570) = {2570,4570};
Line(3573) = {2573,4573};
Line(3574) = {2574,4574};
Line(3575) = {2575,4575};




// Outer Edge V-Lines
Line(3018) = {  18,4018};
Line(3017) = {  17,4017};
Line(3471) = { 471,4471};
Line(3472) = { 472,4472};
Line(3111) = { 111,4111};
Line(3110) = { 110,4110};
Line(3210) = { 210,4210};
Line(3211) = { 211,4211};
Line(3571) = { 571,4571};
Line(3572) = { 572,4572};
Line(3056) = {  56,4056};
Line(3057) = {  57,4057};





// Vertical Curve Loops Between 0000,2000 Series and 4000 Series ------------------------------------------------------------------

// Clockwise (2000 Series to 4000 Series) Vacuum Above Helium

// Helium Along Y-PGE
Curve Loop(3302)    = {3026,4302,-3301,-2302};
Plane Surface(3302) = {3302};
Curve Loop(3036)    = {3030,4036,-3026,-2036};
Plane Surface(3036) = {3036};
Curve Loop(3035)    = {3003,4035,-3030,-2035};
Plane Surface(3035) = {3035};
Curve Loop(3301)    = {3042,4301,-3003,-2301};
Plane Surface(3301) = {3301};
Curve Loop(3075)    = {3042,4075,-3070,-2075};
Plane Surface(3075) = {3075};
Curve Loop(3076)    = {3070,4076,-3065,-2076};
Plane Surface(3076) = {3076};
Curve Loop(3304)    = {3302,4304,-3065,-2304};
Plane Surface(3304) = {3304};
// Helium Along Model Edge 
Curve Loop(3602)    = {3570,4602,-3302,-2602};
Plane Surface(3602) = {3602};
// Helium Along Right Guard Electrode
Curve Loop(3573)    = {3064,4573,-3570,-2573};
Plane Surface(3573) = {3573};
Curve Loop(3077)    = {3064,4077,-3074,-2077};
Plane Surface(3077) = {3077};
Curve Loop(3078)    = {3074,4078,-3050,-2078};
Plane Surface(3078) = {3078};
Curve Loop(3572)    = {3050,4572,-3203,-2572};
Plane Surface(3572) = {3572};
Curve Loop(3568)    = {3568,4568,-3203,-2568};
Plane Surface(3568) = {3568};
Curve Loop(3567)    = {3567,4567,-3568,-2567};
Plane Surface(3567) = {3567};
Curve Loop(3566)    = {3566,4566,-3567,-2566};
Plane Surface(3566) = {3566};
Curve Loop(3565)    = {3565,4565,-3566,-2565};
Plane Surface(3565) = {3565};
Curve Loop(3564)    = {3564,4564,-3565,-2564};
Plane Surface(3564) = {3564};
Curve Loop(3563)    = {3563,4563,-3564,-2563};
Plane Surface(3563) = {3563};
Curve Loop(3562)    = {3562,4562,-3563,-2562};
Plane Surface(3562) = {3562};
Curve Loop(3561)    = {3561,4561,-3562,-2561};
Plane Surface(3561) = {3561};
Curve Loop(3560)    = {3560,4560,-3561,-2560};
Plane Surface(3560) = {3560};
Curve Loop(3559)    = {3559,4559,-3560,-2559};
Plane Surface(3559) = {3559};
Curve Loop(3558)    = {3558,4558,-3559,-2558};
Plane Surface(3558) = {3558};
Curve Loop(3557)    = {3557,4557,-3558,-2557};
Plane Surface(3557) = {3557};
Curve Loop(3556)    = {3556,4556,-3557,-2556};
Plane Surface(3556) = {3556};
Curve Loop(3555)    = {3555,4555,-3556,-2555};
Plane Surface(3555) = {3555};
Curve Loop(3554)    = {3554,4554,-3555,-2554};
Plane Surface(3554) = {3554};
Curve Loop(3553)    = {3553,4553,-3554,-2553};
Plane Surface(3553) = {3553};
Curve Loop(3552)    = {3552,4552,-3553,-2552};
Plane Surface(3552) = {3552};
Curve Loop(3551)    = {3551,4551,-3552,-2551};
Plane Surface(3551) = {3551};
Curve Loop(3550)    = {3550,4550,-3551,-2550};
Plane Surface(3550) = {3550};
Curve Loop(3549)    = {3549,4549,-3550,-2549};
Plane Surface(3549) = {3549};
Curve Loop(3548)    = {3548,4548,-3549,-2548};
Plane Surface(3548) = {3548};
Curve Loop(3547)    = {3547,4547,-3548,-2547};
Plane Surface(3547) = {3547};
Curve Loop(3546)    = {3546,4546,-3547,-2546};
Plane Surface(3546) = {3546};
Curve Loop(3545)    = {3545,4545,-3546,-2545};
Plane Surface(3545) = {3545};
Curve Loop(3544)    = {3544,4544,-3545,-2544};
Plane Surface(3544) = {3544};
Curve Loop(3543)    = {3543,4543,-3544,-2543};
Plane Surface(3543) = {3543};
Curve Loop(3542)    = {3542,4542,-3543,-2542};
Plane Surface(3542) = {3542};
Curve Loop(3541)    = {3541,4541,-3542,-2541};
Plane Surface(3541) = {3541};
Curve Loop(3540)    = {3540,4540,-3541,-2540};
Plane Surface(3540) = {3540};
Curve Loop(3539)    = {3539,4539,-3540,-2539};
Plane Surface(3539) = {3539};
Curve Loop(3538)    = {3538,4538,-3539,-2538};
Plane Surface(3538) = {3538};
Curve Loop(3537)    = {3537,4537,-3538,-2537};
Plane Surface(3537) = {3537};
Curve Loop(3536)    = {3536,4536,-3537,-2536};
Plane Surface(3536) = {3536};
Curve Loop(3535)    = {3535,4535,-3536,-2535};
Plane Surface(3535) = {3535};
Curve Loop(3534)    = {3534,4534,-3535,-2534};
Plane Surface(3534) = {3534};
Curve Loop(3533)    = {3533,4533,-3534,-2533};
Plane Surface(3533) = {3533};
Curve Loop(3532)    = {3532,4532,-3533,-2532};
Plane Surface(3532) = {3532};
Curve Loop(3531)    = {3531,4531,-3532,-2531};
Plane Surface(3531) = {3531};
Curve Loop(3530)    = {3530,4530,-3531,-2530};
Plane Surface(3530) = {3530};
Curve Loop(3529)    = {3529,4529,-3530,-2529};
Plane Surface(3529) = {3529};
Curve Loop(3528)    = {3528,4528,-3529,-2528};
Plane Surface(3528) = {3528};
Curve Loop(3527)    = {3527,4527,-3528,-2527};
Plane Surface(3527) = {3527};
Curve Loop(3526)    = {3526,4526,-3527,-2526};
Plane Surface(3526) = {3526};
Curve Loop(3525)    = {3525,4525,-3526,-2525};
Plane Surface(3525) = {3525};
Curve Loop(3524)    = {3524,4524,-3525,-2524};
Plane Surface(3524) = {3524};
Curve Loop(3523)    = {3523,4523,-3524,-2523};
Plane Surface(3523) = {3523};
Curve Loop(3522)    = {3522,4522,-3523,-2522};
Plane Surface(3522) = {3522};
Curve Loop(3521)    = {3521,4521,-3522,-2521};
Plane Surface(3521) = {3521};
Curve Loop(3520)    = {3520,4520,-3521,-2520};
Plane Surface(3520) = {3520};
Curve Loop(3519)    = {3519,4519,-3520,-2519};
Plane Surface(3519) = {3519};
Curve Loop(3518)    = {3518,4518,-3519,-2518};
Plane Surface(3518) = {3518};
Curve Loop(3517)    = {3517,4517,-3518,-2517};
Plane Surface(3517) = {3517};
Curve Loop(3516)    = {3516,4516,-3517,-2516};
Plane Surface(3516) = {3516};
Curve Loop(3515)    = {3515,4515,-3516,-2515};
Plane Surface(3515) = {3515};
Curve Loop(3514)    = {3514,4514,-3515,-2514};
Plane Surface(3514) = {3514};
Curve Loop(3513)    = {3513,4513,-3514,-2513};
Plane Surface(3513) = {3513};
Curve Loop(3512)    = {3512,4512,-3513,-2512};
Plane Surface(3512) = {3512};
Curve Loop(3511)    = {3511,4511,-3512,-2511};
Plane Surface(3511) = {3511};
Curve Loop(3510)    = {3510,4510,-3511,-2510};
Plane Surface(3510) = {3510};
Curve Loop(3509)    = {3509,4509,-3510,-2509};
Plane Surface(3509) = {3509};
Curve Loop(3508)    = {3508,4508,-3509,-2508};
Plane Surface(3508) = {3508};
Curve Loop(3507)    = {3507,4507,-3508,-2507};
Plane Surface(3507) = {3507};
Curve Loop(3506)    = {3506,4506,-3507,-2506};
Plane Surface(3506) = {3506};
Curve Loop(3505)    = {3505,4505,-3506,-2505};
Plane Surface(3505) = {3505};
Curve Loop(3504)    = {3504,4504,-3505,-2504};
Plane Surface(3504) = {3504};
Curve Loop(3503)    = {3503,4503,-3504,-2503};
Plane Surface(3503) = {3503};
Curve Loop(3502)    = {3502,4502,-3503,-2502};
Plane Surface(3502) = {3502};
Curve Loop(3501)    = {3501,4501,-3502,-2501};
Plane Surface(3501) = {3501};
Curve Loop(3570)    = {3204,4570,-3501,-2570};
Plane Surface(3570) = {3570};
Curve Loop(3571)    = {3204,4571,-3049,-2571};
Plane Surface(3571) = {3571};
Curve Loop(3070)    = {3049,4070,-3073,-2070};
Plane Surface(3070) = {3070};
Curve Loop(3071)    = {3073,4071,-3072,-2071};
Plane Surface(3071) = {3071};
Curve Loop(3072)    = {3072,4072,-3047,-2072};
Plane Surface(3072) = {3072};
Curve Loop(3581)    = {3575,4581,-3047,-2581};
Plane Surface(3581) = {3581};
Curve Loop(3580)    = {3574,4580,-3575,-2580};
Plane Surface(3580) = {3580};
Curve Loop(3579)    = {3573,4579,-3574,-2579};
Plane Surface(3579) = {3579};
// Helium Along Model Edge
Curve Loop(3604)    = {3312,4604,-3573,-2604};
Plane Surface(3604) = {3604};
// Helium Along Y-NGE
Curve Loop(3312)    = {3311,4312,-3312,-2312};
Plane Surface(3312) = {3312};
Curve Loop(3311)    = {3310,4311,-3311,-2311};
Plane Surface(3311) = {3311};
Curve Loop(3310)    = {3046,4310,-3310,-2310};
Plane Surface(3310) = {3310};
Curve Loop(3073)    = {3046,4073,-3071,-2073};
Plane Surface(3073) = {3073};
Curve Loop(3074)    = {3071,4074,-3043,-2074};
Plane Surface(3074) = {3074};
Curve Loop(3317)    = {3004,4317,-3043,-2317};
Plane Surface(3317) = {3317};
Curve Loop(3034)    = {3031,4034,-3004,-2034};
Plane Surface(3034) = {3034};
Curve Loop(3033)    = {3007,4033,-3031,-2033};
Plane Surface(3033) = {3033};
Curve Loop(3316)    = {3315,4316,-3007,-2316};
Plane Surface(3316) = {3316};
Curve Loop(3315)    = {3314,4315,-3315,-2315};
Plane Surface(3315) = {3315};
Curve Loop(3314)    = {3313,4314,-3314,-2314};
Plane Surface(3314) = {3314};
// Helium Along Model Edge
Curve Loop(3603)    = {3473,4603,-3313,-2603};
Plane Surface(3603) = {3603};



// Helium Along Left Guard Electrode
Curve Loop(3479)    = {3473,4479,-3474,-2479};
Plane Surface(3479) = {3479};
Curve Loop(3480)    = {3474,4480,-3475,-2480};
Plane Surface(3480) = {3480};
Curve Loop(3481)    = {3475,4481,-3008,-2481};
Plane Surface(3481) = {3481};
Curve Loop(3032)    = {3032,4032,-3008,-2032};
Plane Surface(3032) = {3032};
Curve Loop(3031)    = {3033,4031,-3032,-2031};
Plane Surface(3031) = {3031};
Curve Loop(3030)    = {3010,4030,-3033,-2030};
Plane Surface(3030) = {3030};
Curve Loop(3471)    = {3104,4471,-3010,-2471};
Plane Surface(3471) = {3471};
Curve Loop(3470)    = {3104,4470,-3401,-2470};
Plane Surface(3470) = {3470};
Curve Loop(3401)    = {3401,4401,-3402,-2401};
Plane Surface(3401) = {3401};
Curve Loop(3402)    = {3402,4402,-3403,-2402};
Plane Surface(3402) = {3402};
Curve Loop(3403)    = {3403,4403,-3404,-2403};
Plane Surface(3403) = {3403};
Curve Loop(3404)    = {3404,4404,-3405,-2404};
Plane Surface(3404) = {3404};
Curve Loop(3405)    = {3405,4405,-3406,-2405};
Plane Surface(3405) = {3405};
Curve Loop(3406)    = {3406,4406,-3407,-2406};
Plane Surface(3406) = {3406};
Curve Loop(3407)    = {3407,4407,-3408,-2407};
Plane Surface(3407) = {3407};
Curve Loop(3408)    = {3408,4408,-3409,-2408};
Plane Surface(3408) = {3408};
Curve Loop(3409)    = {3409,4409,-3410,-2409};
Plane Surface(3409) = {3409};
Curve Loop(3410)    = {3410,4410,-3411,-2410};
Plane Surface(3410) = {3410};
Curve Loop(3411)    = {3411,4411,-3412,-2411};
Plane Surface(3411) = {3411};
Curve Loop(3412)    = {3412,4412,-3413,-2412};
Plane Surface(3412) = {3412};
Curve Loop(3413)    = {3413,4413,-3414,-2413};
Plane Surface(3413) = {3413};
Curve Loop(3414)    = {3414,4414,-3415,-2414};
Plane Surface(3414) = {3414};
Curve Loop(3415)    = {3415,4415,-3416,-2415};
Plane Surface(3415) = {3415};
Curve Loop(3416)    = {3416,4416,-3417,-2416};
Plane Surface(3416) = {3416};
Curve Loop(3417)    = {3417,4417,-3418,-2417};
Plane Surface(3417) = {3417};
Curve Loop(3418)    = {3418,4418,-3419,-2418};
Plane Surface(3418) = {3418};
Curve Loop(3419)    = {3419,4419,-3420,-2419};
Plane Surface(3419) = {3419};
Curve Loop(3420)    = {3420,4420,-3421,-2420};
Plane Surface(3420) = {3420};
Curve Loop(3421)    = {3421,4421,-3422,-2421};
Plane Surface(3421) = {3421};
Curve Loop(3422)    = {3422,4422,-3423,-2422};
Plane Surface(3422) = {3422};
Curve Loop(3423)    = {3423,4423,-3424,-2423};
Plane Surface(3423) = {3423};
Curve Loop(3424)    = {3424,4424,-3425,-2424};
Plane Surface(3424) = {3424};
Curve Loop(3425)    = {3425,4425,-3426,-2425};
Plane Surface(3425) = {3425};
Curve Loop(3426)    = {3426,4426,-3427,-2426};
Plane Surface(3426) = {3426};
Curve Loop(3427)    = {3427,4427,-3428,-2427};
Plane Surface(3427) = {3427};
Curve Loop(3428)    = {3428,4428,-3429,-2428};
Plane Surface(3428) = {3428};
Curve Loop(3429)    = {3429,4429,-3430,-2429};
Plane Surface(3429) = {3429};
Curve Loop(3430)    = {3430,4430,-3431,-2430};
Plane Surface(3430) = {3430};
Curve Loop(3431)    = {3431,4431,-3432,-2431};
Plane Surface(3431) = {3431};
Curve Loop(3432)    = {3432,4432,-3433,-2432};
Plane Surface(3432) = {3432};
Curve Loop(3433)    = {3433,4433,-3434,-2433};
Plane Surface(3433) = {3433};
Curve Loop(3434)    = {3434,4434,-3435,-2434};
Plane Surface(3434) = {3434};
Curve Loop(3435)    = {3435,4435,-3436,-2435};
Plane Surface(3435) = {3435};
Curve Loop(3436)    = {3436,4436,-3437,-2436};
Plane Surface(3436) = {3436};
Curve Loop(3437)    = {3437,4437,-3438,-2437};
Plane Surface(3437) = {3437};
Curve Loop(3438)    = {3438,4438,-3439,-2438};
Plane Surface(3438) = {3438};
Curve Loop(3439)    = {3439,4439,-3440,-2439};
Plane Surface(3439) = {3439};
Curve Loop(3440)    = {3440,4440,-3441,-2440};
Plane Surface(3440) = {3440};
Curve Loop(3441)    = {3441,4441,-3442,-2441};
Plane Surface(3441) = {3441};
Curve Loop(3442)    = {3442,4442,-3443,-2442};
Plane Surface(3442) = {3442};
Curve Loop(3443)    = {3443,4443,-3444,-2443};
Plane Surface(3443) = {3443};
Curve Loop(3444)    = {3444,4444,-3445,-2444};
Plane Surface(3444) = {3444};
Curve Loop(3445)    = {3445,4445,-3446,-2445};
Plane Surface(3445) = {3445};
Curve Loop(3446)    = {3446,4446,-3447,-2446};
Plane Surface(3446) = {3446};
Curve Loop(3447)    = {3447,4447,-3448,-2447};
Plane Surface(3447) = {3447};
Curve Loop(3448)    = {3448,4448,-3449,-2448};
Plane Surface(3448) = {3448};
Curve Loop(3449)    = {3449,4449,-3450,-2449};
Plane Surface(3449) = {3449};
Curve Loop(3450)    = {3450,4450,-3451,-2450};
Plane Surface(3450) = {3450};
Curve Loop(3451)    = {3451,4451,-3452,-2451};
Plane Surface(3451) = {3451};
Curve Loop(3452)    = {3452,4452,-3453,-2452};
Plane Surface(3452) = {3452};
Curve Loop(3453)    = {3453,4453,-3454,-2453};
Plane Surface(3453) = {3453};
Curve Loop(3454)    = {3454,4454,-3455,-2454};
Plane Surface(3454) = {3454};
Curve Loop(3455)    = {3455,4455,-3456,-2455};
Plane Surface(3455) = {3455};
Curve Loop(3456)    = {3456,4456,-3457,-2456};
Plane Surface(3456) = {3456};
Curve Loop(3457)    = {3457,4457,-3458,-2457};
Plane Surface(3457) = {3457};
Curve Loop(3458)    = {3458,4458,-3459,-2458};
Plane Surface(3458) = {3458};
Curve Loop(3459)    = {3459,4459,-3460,-2459};
Plane Surface(3459) = {3459};
Curve Loop(3460)    = {3460,4460,-3461,-2460};
Plane Surface(3460) = {3460};
Curve Loop(3461)    = {3461,4461,-3462,-2461};
Plane Surface(3461) = {3461};
Curve Loop(3462)    = {3462,4462,-3463,-2462};
Plane Surface(3462) = {3462};
Curve Loop(3463)    = {3463,4463,-3464,-2463};
Plane Surface(3463) = {3463};
Curve Loop(3464)    = {3464,4464,-3465,-2464};
Plane Surface(3464) = {3464};
Curve Loop(3465)    = {3465,4465,-3466,-2465};
Plane Surface(3465) = {3465};
Curve Loop(3466)    = {3466,4466,-3467,-2466};
Plane Surface(3466) = {3466};
Curve Loop(3467)    = {3467,4467,-3468,-2467};
Plane Surface(3467) = {3467};
Curve Loop(3468)    = {3468,4468,-3103,-2468};
Plane Surface(3468) = {3468};
Curve Loop(3472)    = {3011,4472,-3103,-2472};
Plane Surface(3472) = {3472};
Curve Loop(3038)    = {3034,4038,-3011,-2038};
Plane Surface(3038) = {3038};
Curve Loop(3037)    = {3025,4037,-3034,-2037};
Plane Surface(3037) = {3037};
Curve Loop(3473)    = {3025,4473,-3470,-2473};
Plane Surface(3473) = {3473};




// Helium Along Model Edge 
Curve Loop(3601)    = {3301,4601,-3470,-2601};
Plane Surface(3601) = {3601};

// Clockwise (0000 Series to 4000 Series) Along Model Edge, Sans Helium Surfaces
// Model Edge Along Y-PGE
Curve Loop(3303)    = {1301,3301,4303,-3302,-1302,-303};
Plane Surface(3303) = {3303};
// Model Edge Along Right Guard
Curve Loop(3574)    = {1570,3570,4574,-3057,-574};
Plane Surface(3574) = {3574};
Curve Loop(3056)    = {3056,4056,-3057, -56};
Plane Surface(3056) = {3056};
Curve Loop(3575)    = {3056,4575,-3571,-575};
Plane Surface(3575) = {3575};
Curve Loop(3576)    = {3571,4576,-3572,-576};
Plane Surface(3576) = {3576};
Curve Loop(3577)    = {3572,4577,-3211,-577};
Plane Surface(3577) = {3577};
Curve Loop(3210)    = {3210,4210,-3211,-210};
Plane Surface(3210) = {3210};
Curve Loop(3578)    = {3210,4578,-3573,-1573,-578};
Plane Surface(3578) = {3578};
// Model Edge Along Y-NGE
Curve Loop(3313)    = {1312,3312,4313,-3313,-1313,-313};
Plane Surface(3313) = {3313};

// Model Edge Along Left Guard
Curve Loop(3478)    = {3110,4478,-3473,-1473,-478};
Plane Surface(3478) = {3478};
Curve Loop(3110)    = {3110,4110,-3111,-110};
Plane Surface(3110) = {3110};
Curve Loop(3477)    = {3472,4477,-3111,-477};
Plane Surface(3477) = {3477};
Curve Loop(3476)    = {3471,4476,-3472,-476};
Plane Surface(3476) = {3476};
Curve Loop(3475)    = {3017,4475,-3471,-475};
Plane Surface(3475) = {3475};
Curve Loop(3017)    = {3017,4017,-3018, -17};
Plane Surface(3017) = {3017};
Curve Loop(3474)    = {1470,3470, 4474,-3018,-474};
Plane Surface(3474) = {3474};





// Wafer (8000 Series) ---------------------------------------------------------------------------------------------------------------------------------------

Point(8471) = {-499,  29, -wd, den1};
Point(8472) = {-499,-304, -wd, den1};
Point(8571) = { 499,  29, -wd, den1};
Point(8572) = { 499,-304, -wd, den1};

Line(8471) = {8471,471};
Line(8472) = {8472,472};
Line(8571) = {8571,571};
Line(8572) = {8572,572};

Line(8001) = {8471,8571};
Line(8002) = {8571,8572};
Line(8003) = {8572,8472};
Line(8004) = {8472,8471};

Curve Loop(8001) = { 8471,  476,-8472, 8004};
Curve Loop(8002) = { 8472,  477, -110,  478,  603, -313, 604, -578,  210, -577,-8572, 8003};
Curve Loop(8003) = { 8572, -576,-8571, 8002};
Curve Loop(8004) = { 8571, -575,   56, -574,  602, -303, 601,  474,  -17,  475,-8471, 8001};
Curve Loop(8005) = { 8001, 8002, 8003, 8004};

Plane Surface(8001) = {8001};
Plane Surface(8002) = {8002};
Plane Surface(8003) = {8003};
Plane Surface(8004) = {8004};
Plane Surface(8005) = {8005};





// Vacuum (9000 Series) --------------------------------------------------------------------------------------------------------------------------------------

Point(9471) = {-499,  29, tv, den1};
Point(9472) = {-499,-304, tv, den1};
Point(9571) = { 499,  29, tv, den1};
Point(9572) = { 499,-304, tv, den1};

Line(9471) = {4471,9471};
Line(9472) = {4472,9472};
Line(9571) = {4571,9571};
Line(9572) = {4572,9572};

Line(9001) = {9471,9571};
Line(9002) = {9571,9572};
Line(9003) = {9572,9472};
Line(9004) = {9472,9471};

Curve Loop(9001) = {-9471, 4476, 9472, 9004};
Curve Loop(9002) = {-9472, 4477,-4110, 4478, 4603,-4313, 4604,-4578, 4210,-4577, 9572, 9003};
Curve Loop(9003) = {-9572,-4576, 9571, 9002};
Curve Loop(9004) = {-9571,-4575, 4056,-4574, 4602,-4303, 4601, 4474,-4017, 4475, 9471, 9001};
Curve Loop(9005) = { 9001, 9002, 9003, 9004};

Plane Surface(9001) = {9001};
Plane Surface(9002) = {9002};
Plane Surface(9003) = {9003};
Plane Surface(9004) = {9004};
Plane Surface(9005) = {9005};






// Volumes ---------------------------------------------------------------------------------------------------------------------------------------------------

// Helium
Surface Loop(1) = {1302,1036,1035,1301,1075,1076,1304,1602,1573,1077,1078,1572,1568,1567,1566,1565,1564,1563,1562,1561,
                   1560,1559,1558,1557,1556,1555,1554,1553,1552,1551,1550,1549,1548,1547,1546,1545,1544,1543,1542,1541,
                   1540,1539,1538,1537,1536,1535,1534,1533,1532,1531,1530,1529,1528,1527,1526,1525,1524,1523,1522,1521,
                   1520,1519,1518,1517,1516,1515,1514,1513,1512,1511,1510,1509,1508,1507,1506,1505,1504,1503,1502,1501,
                   1570,1571,1070,1071,1072,1581,1580,1579,1604,1312,1311,1310,1073,1074,1317,1034,1033,1316,1315,1314,
                   1603,1479,1480,1481,1032,1031,1030,1471,1470,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,
                   1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,
                   1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,
                   1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1472,1038,1037,
                   1473,2005,2045,2320,2401,2402,2501,2502,2601,2602,2603,2604,1601,   5,  45, 320, 401, 402, 501, 502,
                   601, 602, 603, 604};
Volume(1) = {1};

// Vacuum Above Helium
Surface Loop(2) = {3302,3036,3035,3301,3075,3076,3304,3602,3573,3077,3078,3572,3568,3567,3566,3565,3564,3563,3562,3561,
                   3560,3559,3558,3557,3556,3555,3554,3553,3552,3551,3550,3549,3548,3547,3546,3545,3544,3543,3542,3541,
                   3540,3539,3538,3537,3536,3535,3534,3533,3532,3531,3530,3529,3528,3527,3526,3525,3524,3523,3522,3521,
                   3520,3519,3518,3517,3516,3515,3514,3513,3512,3511,3510,3509,3508,3507,3506,3505,3504,3503,3502,3501,
                   3570,3571,3070,3071,3072,3581,3580,3579,3604,3312,3311,3310,3073,3074,3317,3034,3033,3316,3315,3314,
                   3603,3479,3480,3481,3032,3031,3030,3471,3470,3401,3402,3403,3404,3405,3406,3407,3408,3409,3410,3411,
                   3412,3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3428,3429,3430,3431,
                   3432,3433,3434,3435,3436,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,
                   3452,3453,3454,3455,3456,3457,3458,3459,3460,3461,3462,3463,3464,3465,3466,3467,3468,3472,3038,3037,
                   3473,4005,4045,4320,4401,4402,4501,4502,4601,4602,4603,4604,3601,2005,2045,2320,2401,2402,2501,2502,
                   2601,2602,2603,2604};
Volume(2) = {2};

// Dielectric Y-PGE
Surface Loop(3) = {1302,1036,1035,1301,1075,1076,1304,3302,3036,3035,3301,3075,3076,3304,3303,   3,  43, 301,4301};
Volume(3) = {3};

// Dielectric Y-NGE
Surface Loop(4) = {1312,1311,1310,1073,1074,1317,1034,1033,1316,1315,1314,3312,3311,3310,3073,3074,3317,3034,3033,3316,
                   3315,3314,3313,   2,  42, 310,4310};
Volume(4) = {4};

// Left Dielectric Guard Electrode
Surface Loop(5) = {1479,1480,1481,1032,1031,1030,1471,1470,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,
                   1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,
                   1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,
                   1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1472,1038,1037,1473,
                   3479,3480,3481,3032,3031,3030,3471,3470,3401,3402,3403,3404,3405,3406,3407,3408,3409,3410,3411,3412,
                   3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3428,3429,3430,3431,3432,
                   3433,3434,3435,3436,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,3452,
                   3453,3454,3455,3456,3457,3458,3459,3460,3461,3462,3463,3464,3465,3466,3467,3468,3472,3038,3037,3473,
                   3474,3017,3475,3476,3477,3110,3478,4101,   1,   4, 410, 411, 412, 801, 113, 813, 117, 817, 121, 821,
                    125, 825, 129, 829, 133, 833, 137, 837, 141, 841, 145, 845, 149, 849, 153, 853, 157, 857, 161, 861,
                    165, 865, 169, 869, 173, 873};
Volume(5) = {5};

// Right Dielectric Guard Electrode
Surface Loop(6) = {1579,1580,1581,1072,1071,1070,1571,1570,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,
                   1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,
                   1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,
                   1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1572,1078,1077,1573,
                   3579,3580,3581,3072,3071,3070,3571,3570,3501,3502,3503,3504,3505,3506,3507,3508,3509,3510,3511,3512,
                   3513,3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3530,3531,3532,
                   3533,3534,3535,3536,3537,3538,3539,3540,3541,3542,3543,3544,3545,3546,3547,3548,3549,3550,3551,3552,
                   3553,3554,3555,3556,3557,3558,3559,3560,3561,3562,3563,3564,3565,3566,3567,3568,3572,3078,3077,3573,
                   3574,3056,3575,3576,3577,3210,3578,4201,  41,  44, 510, 511, 512, 901, 213, 913, 217, 917, 221, 921,
                    225, 925, 229, 929, 233, 933, 237, 937, 241, 941, 245, 945, 249, 949, 253, 953, 257, 957, 261, 961,
                    265, 965, 269, 969, 273, 973};
Volume(6) = {6};

// Wafer
Surface Loop(7) = {   5,  45, 320, 401, 402, 501, 502, 601, 602, 603, 604,   3,  43, 301,   2,  42, 310,   1,   4, 410,
                    411, 412, 801, 113, 813, 117, 817, 121, 821, 125, 825, 129, 829, 133, 833, 137, 837, 141, 841, 145,
                    845, 149, 849, 153, 853, 157, 857, 161, 861, 165, 865, 169, 869, 173, 873,  41,  44, 510, 511, 512,
                    901, 213, 913, 217, 917, 221, 921, 225, 925, 229, 929, 233, 933, 237, 937, 241, 941, 245, 945, 249, 
                    949, 253, 953, 257, 957, 261, 961, 265, 965, 269, 969, 273, 973,8001,8002,8003,8004,8005};
Volume(7) = {7};

// Vacuum Above Device
Surface Loop(8) = {4005,4045,4320,4401,4402,4501,4502,4601,4602,4603,4604,4301,4310,4101,4201,9001,9002,9003,9004,9005};
Volume(8) = {8};





// Physical Items -------------------------------------------------------------------------------------------------------------------------------

// Helium
Physical Volume(1)  = {1};
// Dielectric
Physical Volume(2)  = {3,4,5,6};
// Wafer 
Physical Volume(3) = {7};
// Vacuum
Physical Volume(4)  = {2,8};


// Electrode Channel
Physical Surface(5)  = {1,2,3,4,5,41,42,43,44,45};
// Electrode Reservoir Left
Physical Surface(6)  = {402,801,813,817,821,825,829,833,837,841,845,849,853,857,861,865,869,873};
// Electrode Reservoir Right
Physical Surface(7)  = {502,901,913,917,921,925,929,933,937,941,945,949,953,957,961,965,969,973};
// Electrode Gate
Physical Surface(8)  = {4310,4301};
// Electrode Guard
Physical Surface(9)  = {4101,4201};
// Electron Layer: Left Res
Physical Surface(10) = {2402};
// Electron Layer: Channel
Physical Surface(11) = {2045,2320,2005};
// Electron Layer: Right Res
Physical Surface(12) = {2502};

