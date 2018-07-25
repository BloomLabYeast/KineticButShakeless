function BasePointInfo = BaseBuilder(NumberOfPoints,Length, randangle, randanglelower, randangleupper, SetAngle, SetXAngle, SetYAngle, SetZAngle)

TubuleSetDiameter = 250;
BasePointInfo.CoordPoints = [];
CoordAdjustment = zeros(3,1); 

for angle = 0:(pi/8):(2*pi-pi/8)
    CoordAdjustment(2,1) = cos(angle)*TubuleSetDiameter/2;
    CoordAdjustment(3,1) = sin(angle)*TubuleSetDiameter/2;
    CylinderCoordPoints = CylinderFluorophorePoints(NumberOfPoints,Length,...
        randangle, randanglelower, randangleupper, SetAngle, SetXAngle,...
        SetYAngle, SetZAngle);
    BasePointInfo.CoordPoints = horzcat(BasePointInfo.CoordPoints, (CylinderCoordPoints + CoordAdjustment));
end
BasePointInfo.Color = repmat("green",1,length(BasePointInfo.CoordPoints));