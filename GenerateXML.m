function GenerateXML(filename,Base,NumberOfPoints,Length, randangle,...
        randanglelower, randangleupper, SetAngle, SetXAngle, SetYAngle, SetZAngle)
    
filestr = strcat(filename,'.xml');

if Base == 1
    BasePointInfo = BaseBuilder(NumberOfPoints,Length, randangle,...
        randanglelower, randangleupper, SetAngle, SetXAngle, SetYAngle, SetZAngle);
else
    BasePointInfo.CoordPoints = [];
    BasePointInfo.Color = [];
end

MasterPointInfo.CoordPoints = horzcat(BasePointInfo.CoordPoints);
MasterPointInfo.Color = horzcat(BasePointInfo.Color);

MasterPointInfo.CoordPoints = MasterPointInfo.CoordPoints + [6500;6500;2800];

xmlstr = '<?xml version="1.0" encoding="ISO-8859-1"?><SimulatedExperiments file="C:/Users/ayush/Desktop/two_points.xml" modified="Mon Jul 23 13:30:09 2018&#10;" created="Mon Jul 23 13:30:09 2018&#10;"><Version major="2" minor="3" revision="0"/><AFMSimulation pixelSize="10.000000" imageWidth="300" imageHeight="300" clipGroundPlane="false" displayAsWireframe="false" surfaceOpacity="1.000000"/><FluorescenceSimulation focalPlaneIndex="14" focalPlaneSpacing="200.000000" numberOfFocalPlanes="30" useCustomFocalPlanePositions="false" gain="68701.672448" offset="0.000000" maximumVoxelIntensity="200.000000" pixelSize="65.000000" psfName="Gibson-Lanni Widefield" imageWidth="200" imageHeight="200" shearInX="0.000000" shearInY="0.000000" addGaussianNoise="true" noiseStdDev="20.000000" showImageVolumeOutline="false" showRefGrid="true" refGridSpacing="1000.000000" superimposeSimulatedImage="true" superimposeComparisonImage="false" minimumIntensityLevel="0.000000" maximumIntensityLevel="200.000015"><FocalPlanes><Plane index="0" position="0.000000"/><Plane index="1" position="0.000000"/><Plane index="2" position="0.000000"/><Plane index="3" position="0.000000"/><Plane index="4" position="0.000000"/><Plane index="5" position="0.000000"/><Plane index="6" position="0.000000"/><Plane index="7" position="0.000000"/><Plane index="8" position="0.000000"/><Plane index="9" position="0.000000"/><Plane index="10" position="0.000000"/><Plane index="11" position="0.000000"/><Plane index="12" position="0.000000"/><Plane index="13" position="0.000000"/><Plane index="14" position="0.000000"/><Plane index="15" position="0.000000"/><Plane index="16" position="0.000000"/><Plane index="17" position="0.000000"/><Plane index="18" position="0.000000"/><Plane index="19" position="0.000000"/><Plane index="20" position="0.000000"/><Plane index="21" position="0.000000"/><Plane index="22" position="0.000000"/><Plane index="23" position="0.000000"/><Plane index="24" position="0.000000"/><Plane index="25" position="0.000000"/><Plane index="26" position="0.000000"/><Plane index="27" position="0.000000"/><Plane index="28" position="0.000000"/><Plane index="29" position="0.000000"/></FocalPlanes><GradientDescentFluorescenceOptimizer><Iterations value="100"/><DerivativeEstimateStepSize value="1e-008"/><StepScaleFactor value="1"/><ObjectiveFunction name="Gaussian Noise Maximum Likelihood"/></GradientDescentFluorescenceOptimizer><NelderMeadFluorescenceOptimizer><MaximumIterations value="100"/><ParametersConvergenceTolerance value="1e-008"/><ObjectiveFunction name="Gaussian Noise Maximum Likelihood"/></NelderMeadFluorescenceOptimizer><PointsGradientFluorescenceOptimizer><StepSize value="1"/><Iterations value="100"/><ObjectiveFunction name=""/></PointsGradientFluorescenceOptimizer><FluorescenceComparisonImageModelObject name="None"/></FluorescenceSimulation><ModelObjectList>';

for pointidx = 1:length(MasterPointInfo.CoordPoints)
    if MasterPointInfo.Color(pointidx) == "green"
        xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="green" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', MasterPointInfo.CoordPoints(1, pointidx), MasterPointInfo.CoordPoints(2, pointidx), MasterPointInfo.CoordPoints(3, pointidx)));
    elseif MasterPointInfo.Color(pointidx) == "blue"
        xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="blue" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', MasterPointInfo.CoordPoints(1, pointidx), MasterPointInfo.CoordPoints(2, pointidx), MasterPointInfo.CoordPoints(3, pointidx)));
    elseif MasterPointInfo.Color(pointidx) == "red"
        xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="red" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', MasterPointInfo.CoordPoints(1, pointidx), MasterPointInfo.CoordPoints(2, pointidx), MasterPointInfo.CoordPoints(3, pointidx)));
    elseif MasterPointInfo.Color(pointidx) == "all"
        xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="all" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', MasterPointInfo.CoordPoints(1, pointidx), MasterPointInfo.CoordPoints(2, pointidx), MasterPointInfo.CoordPoints(3, pointidx)));
    end
end

xmlstr = strcat(xmlstr, '</ModelObjectList></SimulatedExperiments>');

if 7 ~= exist('XMLandMATfiles','dir')
    mkdir XMLandMATfiles
end
cd XMLandMATfiles

xmlfile = fopen(filestr,'w');
fprintf(xmlfile,xmlstr);
fclose all;

save(strcat(filename,'Data.mat'),'MasterPointInfo');
cd ..

