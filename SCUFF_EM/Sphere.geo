
// Input parameters

R = 1.0;    // radius in microns

// Mesh fineness scales

l = 0.35;  // fineness scale

// Sphere components

Point(1) = {0,0,0,l}; // Central point

Point(2) = {R,0,0,l}; // Equator
Point(3) = {-R,0,0,l};
Point(4) = {0,R,0,l};
Point(5) = {0,-R,0,l};

Point(6) = {0,0,R,l}; // North and South poles
Point(7) = {0,0,-R,l};

Circle(1) = {2,1,4}; // Circles that form the sphere
Circle(2) = {4,1,3};
Circle(3) = {3,1,5};
Circle(4) = {5,1,2};
Circle(5) = {4,1,6};
Circle(6) = {6,1,5};
Circle(7) = {5,1,7};
Circle(8) = {7,1,4};
Circle(9) = {2,1,7};
Circle(10) = {7,1,3};
Circle(11) = {3,1,6};
Circle(12) = {6,1,2};

Line Loop(13) = {2,8,-10}; // Surfaces that create the sphere
Ruled Surface(14) = {13};
Line Loop(15) = {10,3,7};
Ruled Surface(16) = {15};
Line Loop(17) = {-8,-9,1};
Ruled Surface(18) = {17};
Line Loop(19) = {-11,-2,5};
Ruled Surface(20) = {19};
Line Loop(21) = {-5,-12,-1};
Ruled Surface(22) = {21};
Line Loop(23) = {-3,11,6};
Ruled Surface(24) = {23};
Line Loop(25) = {-7,4,9};
Ruled Surface(26) = {25};
Line Loop(27) = {-4,12,-6};
Ruled Surface(28) = {27};

Physical Surface(1) = {28,26,16,14,20,24,22,18}; // Join all pieces of surface together

