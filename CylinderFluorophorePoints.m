function CoordPoints = CylinderFluorophorePoints(NumberOfPoints,Length, randangle, randanglelower, randangleupper, SetAngle, SetXAngle, SetYAngle, SetZAngle)

TubuleDiameter = 25;

CoordPoints = zeros(3,NumberOfPoints);
for PointIdx = 1:NumberOfPoints
    CoordPoints(1,PointIdx) = Length*(rand()-0.5);
    CoordAng = rand()*2*pi;
    CoordPoints(2,PointIdx) = cos(CoordAng)*TubuleDiameter/2;
    CoordPoints(3,PointIdx) = sin(CoordAng)*TubuleDiameter/2;
end

randanglediff = randangleupper - randanglelower;

if randangle == 1
    CoordPoints = rotx(rand()*randanglediff+randanglelower)*roty(rand()*randanglediff+randanglelower)*rotz(rand()*randanglediff+randanglelower)*CoordPoints;
elseif SetAngle == 1
    CoordPoints = rotx(SetXAngle)*roty(SetYAngle)*rotz(SetZAngle)*CoordPoints;
end