% -------------------------------------------------------------------
%  Generated by MATLAB on 21-Feb-2016 22:35:48
%  MATLAB version: 8.3.0.532 (R2014a)
% -------------------------------------------------------------------
saveVarsMat = load('pathf.mat');

ans = [1 5 8];

areatemp = 1343;

b = saveVarsMat.b; % <462x410x3 uint8> too many elements

blue = saveVarsMat.blue; % <462x410 logical> too many elements

c = saveVarsMat.c; % <462x410 logical> too many elements

corx = 7;

cory = 6;

curr = [];

d = saveVarsMat.d; % <462x410 logical> too many elements

d1 = 462;

d2 = 410;

d3 = 3;

df = ...
  [0 1 1 1 1 1;
   0 1 0 1 0 0;
   0 1 0 1 1 1;
   0 1 0 1 1 0;
   0 1 1 1 1 0;
   0 1 0 0 1 0;
   1 1 0 0 1 1];

finalnode = 38;

green = saveVarsMat.green; % <462x410 logical> too many elements

i = [];

j = 42;

l = saveVarsMat.l; % <462x410 double> too many elements

l1 = saveVarsMat.l1; % <1x1 strel> unsupported class

l2 = saveVarsMat.l2; % <1x1 strel> unsupported class

node = struct;
node(1).x = 1;
node(1).y = 1;
node(1).visited = 0;
node(1).dis = [0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(1).prev = [];
node(2).x = 1;
node(2).y = 2;
node(2).visited = 0;
node(2).dis = [1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(3).x = 1;
node(3).y = 3;
node(3).visited = 1;
node(3).dis = [Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(3).prev = 4;
node(4).x = 1;
node(4).y = 4;
node(4).visited = 1;
node(4).dis = [Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf 2 3 ...
               Inf Inf Inf Inf 3 4 Inf Inf Inf 5 4 5 Inf Inf Inf Inf Inf ...
               6 Inf Inf Inf Inf Inf 7 8];
node(5).x = 1;
node(5).y = 5;
node(5).visited = 1;
node(5).dis = [Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(5).prev = 4;
node(6).x = 1;
node(6).y = 6;
node(6).visited = 0;
node(6).dis = [Inf Inf Inf Inf 1 0 Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(7).x = 2;
node(7).y = 1;
node(7).visited = 0;
node(7).dis = [1 Inf Inf Inf Inf Inf 0 1 Inf Inf Inf Inf 1 Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(8).x = 2;
node(8).y = 2;
node(8).visited = 0;
node(8).dis = [Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(9).x = 2;
node(9).y = 3;
node(9).visited = 0;
node(9).dis = [Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
               Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(10).x = 2;
node(10).y = 4;
node(10).visited = 1;
node(10).dis = [Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(10).prev = 4;
node(11).x = 2;
node(11).y = 5;
node(11).visited = 0;
node(11).dis = [Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf ...
                1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(12).x = 2;
node(12).y = 6;
node(12).visited = 0;
node(12).dis = [Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 Inf Inf Inf Inf ...
                Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(13).x = 3;
node(13).y = 1;
node(13).visited = 0;
node(13).dis = [Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf 0 1 Inf Inf ...
                Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(14).x = 3;
node(14).y = 2;
node(14).visited = 0;
node(14).dis = [Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf ...
                Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(15).x = 3;
node(15).y = 3;
node(15).visited = 0;
node(15).dis = [Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 ...
                Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(16).x = 3;
node(16).y = 4;
node(16).visited = 1;
node(16).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 ...
                0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(16).prev = 10;
node(17).x = 3;
node(17).y = 5;
node(17).visited = 1;
node(17).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf ...
                1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(17).prev = 16;
node(18).x = 3;
node(18).y = 6;
node(18).visited = 0;
node(18).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf ...
                Inf 1 0 Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(19).x = 4;
node(19).y = 1;
node(19).visited = 0;
node(19).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf ...
                Inf Inf Inf 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(20).x = 4;
node(20).y = 2;
node(20).visited = 0;
node(20).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf ...
                Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(20).prev = 26;
node(21).x = 4;
node(21).y = 3;
node(21).visited = 0;
node(21).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(22).x = 4;
node(22).y = 4;
node(22).visited = 1;
node(22).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(22).prev = 16;
node(23).x = 4;
node(23).y = 5;
node(23).visited = 1;
node(23).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(23).prev = 22;
node(24).x = 4;
node(24).y = 6;
node(24).visited = 0;
node(24).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf 1 Inf Inf Inf Inf 1 0 Inf Inf Inf Inf Inf 1 ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(25).x = 5;
node(25).y = 1;
node(25).visited = 0;
node(25).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf 0 1 Inf Inf Inf Inf ...
                1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(26).x = 5;
node(26).y = 2;
node(26).visited = 0;
node(26).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf ...
                Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(26).prev = 27;
node(27).x = 5;
node(27).y = 3;
node(27).visited = 1;
node(27).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf ...
                Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf Inf];
node(27).prev = 28;
node(28).x = 5;
node(28).y = 4;
node(28).visited = 1;
node(28).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf ...
                Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf Inf];
node(28).prev = 22;
node(29).x = 5;
node(29).y = 5;
node(29).visited = 1;
node(29).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 ...
                Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf Inf];
node(29).prev = 28;
node(30).x = 5;
node(30).y = 6;
node(30).visited = 0;
node(30).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 ...
                0 Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf Inf];
node(31).x = 6;
node(31).y = 1;
node(31).visited = 0;
node(31).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf ...
                Inf 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf Inf];
node(32).x = 6;
node(32).y = 2;
node(32).visited = 0;
node(32).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf ...
                Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf Inf];
node(32).prev = 20;
node(33).x = 6;
node(33).y = 3;
node(33).visited = 0;
node(33).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf ...
                Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf Inf];
node(34).x = 6;
node(34).y = 4;
node(34).visited = 0;
node(34).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf 1 Inf ...
                Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf Inf];
node(35).x = 6;
node(35).y = 5;
node(35).visited = 1;
node(35).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf Inf 1 Inf];
node(35).prev = 29;
node(36).x = 6;
node(36).y = 6;
node(36).visited = 0;
node(36).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf 1 Inf Inf Inf Inf 1 0 Inf Inf Inf Inf Inf 1];
node(37).x = 7;
node(37).y = 1;
node(37).visited = 0;
node(37).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf 1 Inf Inf Inf Inf Inf 0 1 Inf Inf Inf Inf];
node(38).x = 7;
node(38).y = 2;
node(38).visited = 0;
node(38).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf Inf];
node(38).prev = 32;
node(39).x = 7;
node(39).y = 3;
node(39).visited = 0;
node(39).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf Inf];
node(40).x = 7;
node(40).y = 4;
node(40).visited = 0;
node(40).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1 Inf];
node(41).x = 7;
node(41).y = 5;
node(41).visited = 1;
node(41).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0 1];
node(41).prev = 35;
node(42).x = 7;
node(42).y = 6;
node(42).visited = 1;
node(42).dis = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf ...
                Inf Inf Inf Inf Inf Inf Inf 1 Inf Inf Inf Inf 1 0];
node(42).prev = 41;

num = 10;

p = 1;

perimetertemp = 130.941;

pre = 4;

red = saveVarsMat.red; % <462x410 logical> too many elements

rgb = saveVarsMat.rgb; % <462x410x3 uint8> too many elements

s = saveVarsMat.s; % <462x410 double> too many elements

startnode = 4;

stats1 = struct;
stats1(1, 1).Area = 136216;
stats1(1, 1).Perimeter = 2389.1999999999994;
stats1(2, 1).Area = 8346;
stats1(2, 1).Perimeter = 332.53400000000005;
stats1(3, 1).Area = 1229;
stats1(3, 1).Perimeter = 126.401;
stats1(4, 1).Area = 1432;
stats1(4, 1).Perimeter = 136.755;
stats1(5, 1).Area = 742;
stats1(5, 1).Perimeter = 108.99199999999999;
stats1(6, 1).Area = 889;
stats1(6, 1).Perimeter = 119.95;
stats1(7, 1).Area = 860;
stats1(7, 1).Perimeter = 119.925;
stats1(8, 1).Area = 1252;
stats1(8, 1).Perimeter = 127.66600000000001;
stats1(9, 1).Area = 801;
stats1(9, 1).Perimeter = 114.616;
stats1(10, 1).Area = 1343;
stats1(10, 1).Perimeter = 130.941;

temp = [8 5 1];

validmove = [42 29 10];

x = 1;

yellow = saveVarsMat.yellow; % <462x410 logical> too many elements

clear saveVarsMat;
