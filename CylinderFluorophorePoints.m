function CylinderCoordPoints = CylinderFluorophorePoints(NumberOfPoints,Length, randangle, randanglelower, randangleupper, SetAngle, SetXAngle, SetYAngle, SetZAngle)

TubuleDiameter = 25;

CylinderCoordPoints = zeros(3,NumberOfPoints);
for PointIdx = 1:NumberOfPoints
    CylinderCoordPoints(1,PointIdx) = Length*(rand()-0.5);
    CoordAng = rand()*2*pi;
    CylinderCoordPoints(2,PointIdx) = cos(CoordAng)*TubuleDiameter/2;
    CylinderCoordPoints(3,PointIdx) = sin(CoordAng)*TubuleDiameter/2;
end

randanglediff = randangleupper - randanglelower;

if randangle == 1
    CylinderCoordPoints = rotx(rand()*randanglediff+randanglelower)*...
        roty(rand()*randanglediff+randanglelower)*...
        rotz(rand()*randanglediff+randanglelower)*CylinderCoordPoints;
elseif SetAngle == 1
    CylinderCoordPoints = rotx(SetXAngle)*roty(SetYAngle)*...
        rotz(SetZAngle)*CylinderCoordPoints;
end