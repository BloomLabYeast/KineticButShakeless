classdef StaticKinet < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        StaticKinetUIFigure             matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        QuitMenu                        matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        BloomLabWebsiteMenu             matlab.ui.container.Menu
        OtherProgramsMenu               matlab.ui.container.Menu
        GitHubMenu                      matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        DocumentationMenu               matlab.ui.container.Menu
        N_Nuf2StructurePanel            matlab.ui.container.Panel
        N_Nuf2NumberofFluorophoreSpinnerLabel  matlab.ui.control.Label
        N_Nuf2LengthnmSpinnerLabel      matlab.ui.control.Label
        N_Nuf2LengthnmSpinner           matlab.ui.control.Spinner
        N_Nuf2NumberofFluorophoreSpinner  matlab.ui.control.Spinner
        N_Nuf2ColorChannelDropDownLabel  matlab.ui.control.Label
        N_Nuf2ColorChannelDropDown      matlab.ui.control.DropDown
        OutputPanel                     matlab.ui.container.Panel
        FileFolderNameStringLabel       matlab.ui.control.Label
        FileFolderNameStringEditField   matlab.ui.control.EditField
        GenerateXMLCheckBox             matlab.ui.control.CheckBox
        SaveMATFileCheckBox             matlab.ui.control.CheckBox
        MicroscopeSimulatorParametersPanel  matlab.ui.container.Panel
        GainLabel                       matlab.ui.control.Label
        GainEditField                   matlab.ui.control.NumericEditField
        OffsetLabel                     matlab.ui.control.Label
        OffsetEditField                 matlab.ui.control.NumericEditField
        GaussianNoiseSDLabel            matlab.ui.control.Label
        GaussianNoiseSDEditField        matlab.ui.control.NumericEditField
        MaxVoxelIntensityLabel          matlab.ui.control.Label
        MaxVoxelIntensityEditField      matlab.ui.control.NumericEditField
        GenerateTIFsCheckBox            matlab.ui.control.CheckBox
        NumberofPlanesSpinnerLabel      matlab.ui.control.Label
        NumberofPlanesSpinner           matlab.ui.control.Spinner
        SpacingBetweenPlanesnmSpinnerLabel  matlab.ui.control.Label
        SpacingBetweenPlanesnmSpinner   matlab.ui.control.Spinner
        WidthpixelsSpinnerLabel         matlab.ui.control.Label
        WidthpixelsSpinner              matlab.ui.control.Spinner
        HeightpixelsSpinnerLabel        matlab.ui.control.Label
        HeightpixelsSpinner             matlab.ui.control.Spinner
        PixelSizenmSpinnerLabel         matlab.ui.control.Label
        PixelSizenmSpinner              matlab.ui.control.Spinner
        PreProcessTIFsCheckBox          matlab.ui.control.CheckBox
        StatusOutputPanel               matlab.ui.container.Panel
        GenerateOutputButton            matlab.ui.control.Button
        StatusLabel                     matlab.ui.control.Label
        StatusEditField                 matlab.ui.control.EditField
        UIAxes2                         matlab.ui.control.UIAxes
        UIAxes1                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        AxisLimPanel                    matlab.ui.container.Panel
        YLowerLimnmEditFieldLabel       matlab.ui.control.Label
        YLowerLimnmEditField1           matlab.ui.control.NumericEditField
        YUpperLimnmEditFieldLabel       matlab.ui.control.Label
        YUpperLimnmEditField1           matlab.ui.control.NumericEditField
        XLowerLimnmEditFieldLabel       matlab.ui.control.Label
        XLowerLimnmEditField1           matlab.ui.control.NumericEditField
        XUpperLimnmEditFieldLabel       matlab.ui.control.Label
        XUpperLimnmEditField1           matlab.ui.control.NumericEditField
        YLowerLimnmEditField_2Label     matlab.ui.control.Label
        YLowerLimnmEditField2           matlab.ui.control.NumericEditField
        YUpperLimnmEditField_2Label     matlab.ui.control.Label
        YUpperLimnmEditField2           matlab.ui.control.NumericEditField
        XLowerLimnmEditField_2Label     matlab.ui.control.Label
        XLowerLimnmEditField2           matlab.ui.control.NumericEditField
        XUpperLimnmEditField_2Label     matlab.ui.control.Label
        XUpperLimnmEditField2           matlab.ui.control.NumericEditField
        YLowerLimnmEditField_3Label     matlab.ui.control.Label
        YLowerLimnmEditField3           matlab.ui.control.NumericEditField
        YUpperLimnmEditField_3Label     matlab.ui.control.Label
        YUpperLimnmEditField3           matlab.ui.control.NumericEditField
        XLowerLimnmEditField_3Label     matlab.ui.control.Label
        XLowerLimnmEditField3           matlab.ui.control.NumericEditField
        XUpperLimnmEditField_3Label     matlab.ui.control.Label
        XUpperLimnmEditField3           matlab.ui.control.NumericEditField
        GraphPanel                      matlab.ui.container.Panel
        DViewPopOutButton               matlab.ui.control.Button
        AxisLimitsButtonGroup           matlab.ui.container.ButtonGroup
        AutomaticButton                 matlab.ui.control.RadioButton
        FixedButton                     matlab.ui.control.RadioButton
        NumberofComplexesSwitchLabel    matlab.ui.control.Label
        NumberofComplexesSwitch         matlab.ui.control.Switch
        Spc29StructurePanel             matlab.ui.container.Panel
        Spc29TubuleDiameternmSpinnerLabel  matlab.ui.control.Label
        Spc29TubuleDiameternmSpinner    matlab.ui.control.Spinner
        Spc29StructureDiameternmSpinnerLabel  matlab.ui.control.Label
        Spc29StructureDiameternmSpinner  matlab.ui.control.Spinner
        Spc29NumberofFluorophoreSpinnerLabel  matlab.ui.control.Label
        Spc29NumberofFluorophoreSpinner  matlab.ui.control.Spinner
        Spc29ColorChannelDropDownLabel  matlab.ui.control.Label
        Spc29ColorChannelDropDown       matlab.ui.control.DropDown
        Spc29NumberofTubulesSpinnerLabel  matlab.ui.control.Label
        Spc29NumberofTubulesSpinner     matlab.ui.control.Spinner
        Spc29LengthnmSpinnerLabel       matlab.ui.control.Label
        Spc29LengthnmSpinner            matlab.ui.control.Spinner
        Spc29DistancetonmSpinnerLabel   matlab.ui.control.Label
        Spc29DistancetonmSpinner        matlab.ui.control.Spinner
        MicrotubuleDiameternmLabel      matlab.ui.control.Label
        MicrotubuleDiameternmSpinner    matlab.ui.control.Spinner
        StructureDiameternmSpinnerLabel  matlab.ui.control.Label
        StructureDiameternmSpinner      matlab.ui.control.Spinner
        NumberofChromosomesSpinnerLabel  matlab.ui.control.Label
        NumberofChromosomesSpinner      matlab.ui.control.Spinner
        StaggerDropDownLabel            matlab.ui.control.Label
        StaggerDropDown                 matlab.ui.control.DropDown
        RangenmSpinnerLabel             matlab.ui.control.Label
        RangenmSpinner                  matlab.ui.control.Spinner
        N_Nuf2CheckBox                  matlab.ui.control.CheckBox
        Spc29CheckBox                   matlab.ui.control.CheckBox
        KinetochoreProteinPanel         matlab.ui.container.Panel
        LengthofArmnmSpinnerLabel       matlab.ui.control.Label
        LengthofArmnmSpinner            matlab.ui.control.Spinner
        NumberofComplexesSpinnerLabel   matlab.ui.control.Label
        NumberofComplexesSpinner        matlab.ui.control.Spinner
        NumberofBoundComplexesSpinnerLabel  matlab.ui.control.Label
        NumberofBoundComplexesSpinner   matlab.ui.control.Spinner
        ofLengthMarkedSpinnerLabel      matlab.ui.control.Label
        ofLengthMarkedSpinner           matlab.ui.control.Spinner
        KinetochoreColorChannelLabel    matlab.ui.control.Label
        KinetochoreColorChannel         matlab.ui.control.DropDown
        AnglefromMTAxisdegSpinnerLabel  matlab.ui.control.Label
        AnglefromMTAxisdegSpinner       matlab.ui.control.Spinner
        UpperAngleLabel                 matlab.ui.control.Label
        UpperAngleSpinner               matlab.ui.control.Spinner
        AngleRangeforUnbounddegSpinnerLabel  matlab.ui.control.Label
        LowerAngleSpinner               matlab.ui.control.Spinner
        KinetochoreCheckBox             matlab.ui.control.CheckBox
        RotationPanel                   matlab.ui.container.Panel
        RotationParametersPanel         matlab.ui.container.ButtonGroup
        FixedRotationButton             matlab.ui.control.RadioButton
        RandomRotationButton            matlab.ui.control.RadioButton
        RotationCheckBox                matlab.ui.control.CheckBox
        RotationLabel                   matlab.ui.control.Label
        RandomRotationParametersdegPanel  matlab.ui.container.Panel
        LowLimSpinnerLabel              matlab.ui.control.Label
        LowLimSpinner                   matlab.ui.control.Spinner
        UpLimSpinnerLabel               matlab.ui.control.Label
        UpLimSpinner                    matlab.ui.control.Spinner
        FixedRotationParametersdegPanel  matlab.ui.container.Panel
        XSpinnerLabel                   matlab.ui.control.Label
        XSpinner                        matlab.ui.control.Spinner
        YSpinnerLabel                   matlab.ui.control.Label
        YSpinner                        matlab.ui.control.Spinner
        ZSpinnerLabel                   matlab.ui.control.Label
        ZSpinner                        matlab.ui.control.Spinner
        EasyAlignCheckBox               matlab.ui.control.CheckBox
    end


    properties (Access = private)
        N_Nuf2PointInfo % Contains information about the points that make up the N_Nuf2 structure
        KinetochorePointInfo % Contains information about the points that make up the kinetochore complex
        Spc29PointInfo % Continas information about the points that make up the Spc29 structure
        MasterPointInfo % Contains information about the points that make up the entire simulation
        LengthSim % Array of possible stagger lengths acquired from running Coupled Model Crosslinked Simulation by Stevens et al.
        BioDistances % Array that contains distances of complexes that were acquired from experimental images
        BioDistanceCorrection % Distance choosen from the BioDistances array that all of the structure generators use when the number of complexes are set to 2.
        Rotation % An array of randomized rotation values based on the given parameters that the structure generators use if rotation is needed
        Stagger % An array of values that represent stagger, either from Stevens et al. or random, that the structure generators use if a stagger is needed
    end

    methods (Access = private)
        function GeneralParametreCheck(app)
            % Function that runs through all of the parameter checks
            MainParameterCheck(app)
            KinetochoreValueChangeCheck(app)
            OutputParameterCheck(app)
            OutputParameterLocationCheck(app)
            AxisParameterCheck(app)            
        end
    
        function MainParameterCheck(app)
            % Checks to if any of the changes in the Main parameters result in whether certain options need to be visible or not
            if strcmp(app.StaggerDropDown.Value, 'Random') % Check to see if stagger is set to Random
                app.RangenmSpinner.Visible = "on"; % If so, make the choice for the random range available
                app.RangenmSpinnerLabel.Visible = "on";
            else
                app.RangenmSpinner.Visible = "off"; % If not, make the choice for the random range hidden
                app.RangenmSpinnerLabel.Visible = "off";
            end  
            if app.RotationCheckBox.Value == false %Check to see if the Rotation Check Box is not chceked
                app.RotationParametersPanel.Visible = 'off'; % If it is not checked, then turn off access/visibility of the Rotation Panel
                app.FixedRotationParametersdegPanel.Visible = 'off';
                app.RandomRotationParametersdegPanel.Visible = 'off';
            else
                app.RotationParametersPanel.Visible = 'on'; % If it is checked, check to see which type of rotation is selected
                if app.FixedRotationButton.Value == true % If Fixed Rotation is selected, then allow that panel to be seen and hide the others
                    app.FixedRotationParametersdegPanel.Visible = 'on';
                    app.RandomRotationParametersdegPanel.Visible = 'off';
                else % If the Random Rotation is selected, then allow that panel to be seen and hide the other
                    app.FixedRotationParametersdegPanel.Visible = 'off';
                    app.RandomRotationParametersdegPanel.Visible = 'on';
                end
            end
        end
    
        function KinetochoreValueChangeCheck(app)
            % Checks to see if any of the changes in the Kinetochore parameters need to edited or fixed
            if app.NumberofComplexesSpinner.Value < app.NumberofBoundComplexesSpinner.Value % Check to see if the user requested more bound complexes than complexes to begin with
                app.NumberofBoundComplexesSpinner.Value = app.NumberofComplexesSpinner.Value; % If so, set the number of bound complexes to the number of complexes in general
            end
            if app.LowerAngleSpinner.Value > app.UpperAngleSpinner.Value % Check to see if the Lower Limit is greater than the Upper Limit
                [app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value] = deal(app.LowerAngleSpinner.Value,app.UpperAngleSpinner.Value); %If so, switch their values
            end
        end
            
    
        function OutputParameterCheck(app)
            % Checks to see if any of the changes in the Output Parameters lead to access to other options
            if app.GenerateXMLCheckBox.Value == true % Check to see if XMLS are to be generated
                app.MicroscopeSimulatorParametersPanel.Visible = 'on'; % If so, show the controls for the XML
            else
                app.MicroscopeSimulatorParametersPanel.Visible = 'off'; % If not, hide them
            end
            if isempty(app.FileFolderNameStringEditField.Value) || (app.GenerateXMLCheckBox.Value == false && app.SaveMATFileCheckBox.Value == false) % Check to see if something has been written in the Foldername Field and atleast one of the output have been choosen
                app.GenerateOutputButton.Enable = "off"; % If not, prevent user from generating an output
            else
                app.GenerateOutputButton.Enable = "on"; % If so, allow user to generate output
            end
            if app.GenerateTIFsCheckBox.Value == true % Check to see if Generate TIF's has been selected
                app.PreProcessTIFsCheckBox.Enable = "on"; % If so, allow the user to choose whether to pre-process them
            else
                app.PreProcessTIFsCheckBox.Enable = "off"; % If not, hide the option to pre-process them
            end 
        end
    
        function OutputParameterLocationCheck(app)
            %Checks to see if whether any changes in the Output parameter selection require reorganizing of the section
            if app.GenerateXMLCheckBox.Value == true%
                app.StatusOutputPanel.Position = [2 7 296 103];
            else
                app.StatusOutputPanel.Position = [2 231 296 103];
            end
        end
    
        function AxisParameterCheck(app)
            % Checks to see if the choosen axis setting requires reorganizing of the panel
            if app.AutomaticButton.Value == true
                app.GraphPanel.Position = [493 330 151 85];
                app.AxisLimPanel.Visible = "off";
            else
                app.GraphPanel.Position = [493 389 151 85];
                app.AxisLimPanel.Visible = "on";
            end
        end
    
        function SaveBioDistanceData(app)
            % Saves the massive array that contains the possible distances in the format of [X;Y;Z], so each vector is in its own column
            if app.EasyAlignCheckBox.Value == true
                app.BioDistances = [600,600,600,600,600,600,600,600,600,600,600,600,600,600;0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001;0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001];
            else
                app.BioDistances = [-192,-1344,-640,-256,-576,-192,-768,192,-448,-1920,-512,-576,-960,-832,-128,-896,-512,-256,-704,-704,-256,-512,-256,-832,-1216,-64,-576,-768,-1024,-256,-768,-256,0.0000001,-960,-1088,-640,-832,-1024,-768,-1088,-704,-1216,-1408,-832,-896,-704,-320,-896,-512,-512,-1024,-832,-448,-256,-640,-256,-768,-576,192,-192,-384,-640,-768,-960,-768,64,-320,-704,-448,-192,-128,64,-640,-640,-448,-832,-832,-832,-960,-384,-128,-1152,-128,-256,-256,-384,-576,-896,-576,-768,-896,-640,-1024,-832,-896,-704,-320,-896,-512,-512,-192,-768,-768,-512,-960,-576,-448,-1728,-1088,128,-704,-256,-256,-832,-64,-1728,-192,-640,-1088,-832,-960,-704,-256,-1024,-960,-1152,-768,-1024,-384,-64,-512,-512,64,-640,-832,-512,-576,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0.0000001,-640,-768,-704,-256,-192,64,-192,256,-1152,-832,-640,-576,-576,-128,-896,-384,0.0000001,-320,-320,-448,-320,-128,-896,-1280,-448,-512,-448,-896,-832,-576,-1152,-320,-832,-256,-576,-512,-128,-704,-320,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0.0000001,-640,-768,0.0000001,-1024,-896,-1344,-1600,-256,128,-1216,-704,128,-1216,-960,-768,-832,-832,-320,-640,-640,0.0000001,-704,64,-896,-320,-768,-1024,-1216,-768,-448,-832,-960,-960,128,-960,-704,-256,-256,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-1152,0.0000001,-320,-320,-448,-704,-704,-512,-1408,-1088,-576,-128,0.0000001,-1024,128,-1152,-192,-320,-576,-384,-128,64,-704,-1024,-384,-320,-1024,-832,-448,-1152,-640,-832,-704,-192,-832,128,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-576,-768,-576,-256,-320,-512,-448,-128,-1344,-960,-1024,-128,-832,-1024,-704,-384,-1728,-832,-640,-1024,-1152,-256,-256,-448,-512,-768,-448,-512,-1600,-1216,-448,-512,-768,-768,-320,-448,-896,192,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-128,-1216,-704,-576,-512,-768,-1088,-256,-1152,-384,-384,-896,-832,-576,-448,-576,-640,128,-896,-384,-512,-704,-960,-960,-1152,-384,-576,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0.0000001,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,128,-1152,-128,-1024,-128,-832,-192,-256,320,-448,-1344,-832,-1216,-512,-768,64,-576,-960,-896,-512,-1024,192,-1280,-192,-832,64,-768,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0.0000001,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-640,-1024,-768,-960,64,-1024,-320,128,-256,-512,-192,64,-192,-320,-448,-896,0.0000001,-1216,-960,-768,-576,-576,-192,-1216,-512,-1280,-384,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0.0000001,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-960,192,-128,-1152,-640,-448,-384,-192,-640,-64,-704,-1024,-704,-640,-1216,-704,-512,-256,-512,-640,-256,-704,-256,-832,-704,-576,-256,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0.0000001,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-128,-192,-448,128,-192,-192,-384,-192,-576,-1280,-448,-1280,-384,-576,-960,-320,-128,-64,-896,-896,-512,-384,0.0000001,-192,-640,-640,-384,-384,-320,-640,-128,-960,-960,-576,-384,-320,-448,-192,0.0000001,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-640,-832,-384,-320,64,-960,-1024,256,-832,-768,-320,-768,-576,-64,0.0000001,-448,-960,-1088,-384,-192,-640,-256,-1472,-1216,-640,-192,-448,-512,-256,-448,-768,-960,-384,-448,-320,-576,-960,-1024,-320,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,128,-832,-384,-256,-1024,-384,-640,-256,-832,64,-896,64,-640,-320,-704,-320,-1024,-576,-960,0.0000001,-1088,-832,-192,-1088,-1024,-512,-640,-832,-256,-960,-512,-640,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-128,-1088,-384,-1088,-192,-512,-960,-320,-960,-704,-512,-960,-64,-320,-128,-704,-640,-1152,-256,-576,-768,-512,-256,-1152,-704,-896,-512,-384,-576,128,128,-704,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-576,-1024,-704,-768,-768,-640,-448,-1280,-1024,-704,-896,-1728,-256,-512,-1024,-64,-384,-128,-1024,-576,-832,-128,-320,-832,-640,64,-256,-384,-192,-768,-704,-960,-64,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-640,-640,-640,-448,-128,-704,-448,-768,-1216,-448,-832,-192,-832,-384,-832,-768,-704,-448,-640,128,64,-448,-640,-768,-64,-704,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-768,-448,-384,-1152,192,-896,-384,-960,-384,-704,-512,-512,-192,-128,-832,-448,-1024,-256,-128,-576,-256,-192,-192,-832,-192,-1216,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-640,-1152,-832,-640,-256,-1088,-512,-384,-1280,-320,-512,-256,-384,-1280,-1024,-896,-1216,-640,-640,-640,-1024,128,-256,-1856,-128,-1088,-512,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-960,-512,-192,128,-384,-960,-256,-128,-448,-640,-576,-960,-576,-896,-1024,-512,128,-960,-640,-640,-896,-512,-768,-128,-256,-896,-320,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-192,-128,-1024,-1344,-896,-320,-576,-768,-384,-832,-576,-128,-320,-512,-896,-1600,-256,-256,-448,-256,-704,-1216,-1280,128,-1088,-704,-1088,-512,-256,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-640,-704,-576,-1280,-1536,-448,-768,-1344,-192,-768,-896,-448,-1088,-768,-256,-1408,-704,-1088,-640,-640,-640,-1152,-1216,-1152,-768,-128,-576,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768,-832,-512,-384,-704,-256,-704,-768,-768,-384,-1344,-832,-64,-704,-256,-576,-768,0.0000001,-832,-1152,-768,-704,-704,-768,-1024,-960,-128,-960,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0.0000001,-640,-768;-960,-192,-384,1536,-384,-960,640,-1280,-448,-128,576,-768,1216,128,-1024,448,-384,-1344,-64,-640,-768,832,-832,512,704,-704,0.0000001,-896,-448,640,256,576,-384,64,-64,640,256,-1088,64,-64,1216,-768,-192,512,704,-1280,704,384,576,1088,832,-896,768,576,0.0000001,-576,704,-64,-640,-960,1024,-640,384,-384,-64,-1280,-1088,512,-384,-512,-896,-960,-1024,448,832,0.0000001,0.0000001,576,64,-1344,832,-256,-512,512,-1408,-1408,576,448,1024,384,128,-576,-576,512,704,-1280,704,384,576,1088,1216,-192,320,0.0000001,-640,512,960,256,768,-576,1088,1280,-960,1280,-1024,-64,704,-448,128,384,448,320,-1088,64,832,128,640,512,640,-640,704,-128,-960,320,-640,-704,-512,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-1152,-704,-640,-832,-768,-1408,1088,448,384,-704,0.0000001,704,-704,576,-576,640,1024,-512,768,-1088,576,-576,960,384,448,-192,320,-704,-384,448,64,-1088,320,256,448,192,704,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-896,-448,448,448,512,960,-768,-256,704,-1024,64,-64,-512,448,512,448,0.0000001,-1152,-768,-384,-640,704,-768,-448,-256,-128,960,1088,320,64,-256,-832,576,64,448,640,-576,832,1280,-640,-448,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-704,-704,-1088,704,-192,-1408,-704,-576,-128,-64,-448,-960,-896,-512,-1152,192,576,832,256,-320,-448,-448,960,64,1024,1088,-832,-1216,-448,-448,768,-192,1088,-448,-64,-576,-576,832,1280,-640,-448,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,256,-832,960,-640,1152,1088,576,-1280,-256,64,-128,448,-832,-512,320,1408,0.0000001,-576,320,320,-512,768,-1216,-704,-768,-576,1408,704,-64,-256,1216,768,-640,576,-896,-128,-1152,-960,1280,-640,-448,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1216,64,-448,-384,960,128,64,704,-1216,1344,832,-64,64,-1152,-512,0.0000001,384,-1280,-320,-1088,-1024,-384,768,256,-128,448,320,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,-448,-1280,-64,1024,1088,-576,768,-960,-1088,-192,64,-256,768,384,-1216,384,384,-960,576,-64,-768,-256,-448,-320,-960,704,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-320,64,-576,-128,-768,-576,1536,-1088,-1088,640,576,-896,-576,-1024,768,-256,-896,384,0.0000001,-128,-192,1024,-896,128,448,-1024,-512,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,-896,960,960,1280,-832,704,704,256,-640,512,192,960,768,-704,-704,-896,-1216,-576,-704,-1024,64,-576,960,576,-896,-832,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-960,960,-384,-448,-704,576,448,-768,128,192,384,320,-576,1024,-64,1024,-1024,-576,384,-448,-640,896,-704,-640,-1088,256,-704,512,576,832,384,-448,384,-192,576,1472,384,-1280,-512,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,512,-448,448,-512,64,704,-1216,-1088,640,-512,-768,448,-704,768,1152,-320,-448,576,-384,576,256,896,-768,-384,576,-640,-64,-1024,704,-768,256,-896,-512,960,-448,-960,-832,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1024,768,1152,896,-192,-640,0.0000001,-704,-448,-640,256,-896,-704,-768,-576,-832,-576,-192,-320,-640,384,-576,832,576,192,1280,640,128,-960,-576,-1152,-832,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,640,-832,448,-832,-768,1024,960,-448,-512,-832,-512,1088,-896,-1344,-1024,576,960,-448,-960,1536,-832,-576,-960,192,640,384,-320,704,-320,-1152,-960,448,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,576,-512,-832,-384,1280,-704,0.0000001,-448,-128,1280,-512,-1088,-1664,-640,-896,1088,-640,-320,-832,-512,960,-1920,-64,-384,-1088,-768,896,832,-448,-640,-640,-576,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,0.0000001,832,1280,-448,-704,192,640,128,320,-384,576,640,832,-576,-1024,512,256,-1088,576,-896,-832,-1088,1088,-64,-704,-896,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,512,-512,64,-832,-768,-512,640,1216,960,832,-640,384,1024,-896,-128,1024,576,448,576,-768,-768,640,832,-128,-832,256,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,-192,512,1408,576,64,320,-320,384,640,-192,-576,192,256,320,-768,-576,-256,704,-192,256,-960,1024,640,-768,-1152,320,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,1152,-576,-1088,1024,192,-512,-896,640,-256,-448,-256,384,-320,-576,960,-960,0.0000001,64,-832,-192,-768,-384,-448,-1024,192,-896,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,576,-1408,128,320,448,-704,-832,-256,896,128,-512,-832,704,-320,-320,-192,1088,-1664,640,1408,256,128,576,-640,576,-64,832,448,768,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-896,320,832,-256,896,576,-832,384,-832,1280,576,768,-1152,-384,-576,64,-448,192,-256,-192,576,384,704,320,256,832,704,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,704,-1088,896,-768,-1216,-384,448,-704,64,640,-704,-704,1280,576,-512,-960,-448,128,0.0000001,64,192,192,1408,-1600,1216,-1216,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0.0000001,256,768,-704,576,-832,640,-320,-448,-768,256,832;0.0000001,-300,0.0000001,0.0000001,0.0000001,0.0000001,-1200,-300,-900,-300,0.0000001,0.0000001,-300,300,0.0000001,600,0.0000001,300,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,600,0.0000001,-600,0.0000001,0.0000001,300,600,300,0.0000001,600,0.0000001,-300,300,0.0000001,-300,0.0000001,0.0000001,-900,-300,-600,600,-600,0.0000001,-300,0.0000001,900,-300,0.0000001,0.0000001,0.0000001,300,0.0000001,-300,300,0.0000001,600,0.0000001,0.0000001,0.0000001,300,600,-600,300,-600,-300,300,300,600,-1200,0.0000001,300,0.0000001,0.0000001,900,-300,0.0000001,0.0000001,-900,0.0000001,300,-300,-300,-300,0.0000001,600,-300,0.0000001,-900,-300,-600,600,-600,0.0000001,-300,300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,300,0.0000001,-300,-900,0.0000001,-300,0.0000001,-600,300,600,300,0.0000001,300,0.0000001,300,-300,300,300,600,0.0000001,-600,-600,-300,0.0000001,0.0000001,300,0.0000001,-900,600,0.0000001,-600,-900,600,600,-600,0.0000001,0.0000001,-300,0.0000001,-600,0.0000001,-300,0.0000001,300,-600,0.0000001,-600,-300,-300,0.0000001,0.0000001,0.0000001,0.0000001,300,-300,0.0000001,300,-600,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,600,-300,0.0000001,300,-300,300,300,300,0.0000001,300,0.0000001,600,600,600,-600,600,0.0000001,-300,-300,0.0000001,0.0000001,-600,-900,600,600,-600,0.0000001,0.0000001,-300,0.0000001,-600,0.0000001,-300,0.0000001,300,-600,0.0000001,-600,-300,300,0.0000001,0.0000001,-900,0.0000001,0.0000001,600,0.0000001,0.0000001,-600,0.0000001,0.0000001,300,0.0000001,-600,300,300,-600,0.0000001,0.0000001,-300,-300,0.0000001,0.0000001,0.0000001,600,0.0000001,-1800,0.0000001,300,300,0.0000001,0.0000001,0.0000001,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-300,300,900,0.0000001,300,0.0000001,300,-600,0.0000001,-900,-300,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,-300,300,-900,600,0.0000001,-300,0.0000001,0.0000001,-900,600,-300,300,-300,300,-300,300,300,-300,-300,0.0000001,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,300,900,-600,0.0000001,300,0.0000001,0.0000001,300,300,300,-300,600,300,-300,300,0.0000001,-300,300,300,0.0000001,0.0000001,-300,0.0000001,300,-300,-300,0.0000001,0.0000001,300,300,-300,600,-300,300,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-900,600,-600,0.0000001,0.0000001,-600,0.0000001,0.0000001,0.0000001,-300,0.0000001,0.0000001,0.0000001,300,0.0000001,0.0000001,0.0000001,-600,300,0.0000001,-600,-300,-600,300,-300,0.0000001,600,600,300,1200,-300,0.0000001,-900,-600,300,300,-600,900,300,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-300,-300,-300,-300,-300,0.0000001,-300,0.0000001,300,0.0000001,0.0000001,0.0000001,0.0000001,300,300,0.0000001,-300,600,-300,300,0.0000001,600,300,0.0000001,0.0000001,0.0000001,0.0000001,600,300,1200,-300,0.0000001,-900,-600,300,300,-600,900,300,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,-900,0.0000001,300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-300,300,-300,0.0000001,900,-1200,-300,-300,0.0000001,0.0000001,600,900,300,300,300,-600,-300,0.0000001,-900,0.0000001,0.0000001,-300,-600,300,600,300,300,-600,900,300,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,0.0000001,-300,0.0000001,0.0000001,0.0000001,300,-300,0.0000001,0.0000001,0.0000001,0.0000001,600,300,-300,0.0000001,-600,0.0000001,-900,-300,-600,-300,0.0000001,-300,0.0000001,-300,-300,-900,0.0000001,0.0000001,-300,-600,300,600,300,300,-600,900,300,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-600,0.0000001,300,-600,0.0000001,300,900,-600,-600,-300,0.0000001,0.0000001,300,0.0000001,-900,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,0.0000001,0.0000001,0.0000001,-300,-600,300,0.0000001,0.0000001,-300,0.0000001,600,-600,-600,0.0000001,600,0.0000001,900,300,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,600,0.0000001,600,0.0000001,900,0.0000001,300,0.0000001,0.0000001,-300,0.0000001,0.0000001,0.0000001,-900,600,-600,900,-300,-300,300,0.0000001,0.0000001,0.0000001,-300,300,300,600,0.0000001,-900,0.0000001,-300,-300,0.0000001,300,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-600,0.0000001,-900,600,0.0000001,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,600,0.0000001,0.0000001,-300,300,0.0000001,300,0.0000001,0.0000001,0.0000001,-300,0.0000001,300,0.0000001,-900,1500,-300,0.0000001,600,-300,300,0.0000001,300,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,-600,-300,-300,600,600,0.0000001,-300,-300,0.0000001,0.0000001,0.0000001,0.0000001,-300,0.0000001,-300,0.0000001,-300,0.0000001,0.0000001,-300,-300,-600,-900,-600,-600,0.0000001,-300,0.0000001,600,300,0.0000001,0.0000001,300,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,-300,-600,0.0000001,300,600,300,0.0000001,0.0000001,-600,0.0000001,0.0000001,0.0000001,-600,0.0000001,300,0.0000001,-600,0.0000001,0.0000001,0.0000001,-600,600,-600,0.0000001,300,0.0000001,0.0000001,0.0000001,-300,0.0000001,0.0000001,-300,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,300,600,-300,300,600,-300,-1500,0.0000001,900,0.0000001,0.0000001,-900,-300,-300,0.0000001,0.0000001,0.0000001,300,300,0.0000001,-300,0.0000001,0.0000001,0.0000001,-300,-900,0.0000001,0.0000001,0.0000001,300,300,0.0000001,0.0000001,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,-600,300,0.0000001,300,300,0.0000001,-300,-600,0.0000001,0.0000001,600,0.0000001,0.0000001,-300,-600,300,0.0000001,300,0.0000001,0.0000001,-300,300,0.0000001,-300,0.0000001,0.0000001,0.0000001,0.0000001,300,300,0.0000001,0.0000001,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,300,300,0.0000001,0.0000001,300,0.0000001,-300,0.0000001,0.0000001,600,-300,0.0000001,-300,-300,0.0000001,-900,0.0000001,-300,0.0000001,300,-600,0.0000001,0.0000001,-600,900,600,300,-600,0.0000001,300,300,0.0000001,0.0000001,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-300,0.0000001,-300,300,300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-300,-300,0.0000001,0.0000001,0.0000001,-600,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,300,0.0000001,0.0000001,600,-600,0.0000001,-600,0.0000001,300,300,0.0000001,0.0000001,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,-300,0.0000001,-300,-300,-600,-600,0.0000001,300,-300,0.0000001,300,0.0000001,-600,300,0.0000001,-300,0.0000001,600,0.0000001,300,0.0000001,1200,-300,0.0000001,0.0000001,600,-600,0.0000001,0.0000001,300,300,0.0000001,0.0000001,-600,-300,0.0000001,0.0000001,0.0000001,0.0000001,0.0000001,-600,0.0000001,-300,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,600,-300,-300,-300,300,0.0000001,0.0000001,300,0.0000001,600,-600,0.0000001,0.0000001,-600,0.0000001,0.0000001,-600,0.0000001,300,0.0000001,0.0000001,900,-300,0.0000001,-600,600,-300,0.0000001,-300,-300,0.0000001,0.0000001,-300,600,-900,300,0.0000001,0.0000001,-300,-600,-300,300,600,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300,0.0000001,600,300,-300,-600,300,600,0.0000001,0.0000001,0.0000001,-300,0.0000001,0.0000001,0.0000001,600,-600,900,-600,0.0000001,0.0000001,300,-300,300,-600,0.0000001,300,600,0.0000001,-300,-300,0.0000001,0.0000001,-300,600,-900,300,0.0000001,0.0000001,-300,-600,-300,300,600,-900,0.0000001,0.0000001,-600,-300,-600,0.0000001,0.0000001,300,-600,0.0000001,-600,-300];
            end
        end
    
        function GenerateSimuLinkData(app)
            % Run the simulation model and save the Microtubule Lengnths after the burn-in of 500 time-steps to later be accessed
            sim('Coupled_Model_crosslinked_intext.slx')
            app.LengthSim = kMtsOut(500:end,:);
        end
    
        function UpdateData(app)
            % Main function that calculates a structure and saves them to MasterPointInfo property depending on whether its associated checkbox has been checked
            StructureCalculate(app) % Generate all of the structures and same them in their respective properties
            app.MasterPointInfo.CoordPoints = []; % Initialize the Coordinate Points array and color vector
            app.MasterPointInfo.Color = [];
            if app.N_Nuf2CheckBox.Value == true % If N-Terminal Nuf-2 checkbox has been selected, then add its information to the MasterPointInfo property
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.N_Nuf2PointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.N_Nuf2PointInfo.Color);
            end
            if app.Spc29CheckBox.Value == true % If Spc29 checkbox has been selected, then add its information to the MasterPointInfo property
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.Spc29PointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.Spc29PointInfo.Color);
            end
            if app.KinetochoreCheckBox.Value == true % If the Kinetochore complex checkbox has been selected, then add its information to the MasterPointInfo property
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.KinetochorePointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.KinetochorePointInfo.Color);
            end
        end
    
        function StructureCalculate(app)
            %Main function that updates the neccesssary variables and generates the structure
            UpdateRandomVariables(app)
            N_Nuf2Calculate(app)
            KinetochoreCalculate(app)
            Spc29Calculate(app)
        end
    
        function UpdateRandomVariables(app)
            % Generates the needed random varaibles so that all of the structure's componenets are correctly aligned relative to one another
            app.BioDistanceCorrection = app.BioDistances(:,ceil(rand()*length(app.BioDistances)))/2;
            if strcmp(app.NumberofComplexesSwitch.Value, '1') % Check to see how many complexes are choosen and set the NoC variable to that value
                NoC = 1;
            else
                NoC = 2;
            end
            if app.RotationCheckBox.Value == true % Check to see if rotation is desired
                app.Rotation = rand(app.NumberofChromosomesSpinner.Value*NoC,3); % If so, generate an array that is 3 by the total number of chromosomes needed
                if app.FixedRotationButton.Value == true % Check to see what kind of rotation is desired
                    app.Rotation(:,1) = app.XSpinner.Value; % If fixed rotation is desired, then store the fixed rotation values for X,Y, and Z in their respective column
                    app.Rotation(:,2) = app.YSpinner.Value;
                    app.Rotation(:,3) = app.ZSpinner.Value;
                else % If random rotation,
                    rangediff = app.UpLimSpinner.Value - app.LowLimSpinner.Value; % Calculate the difference between the upper and lower bounds
                    app.Rotation = app.Rotation*rangediff + app.LowLimSpinner.Value; % Multiply the difference to an array of random values and add the lower limit, creating an array of random rotation values bounded between the lower and upper limits
                end
            end
            if ~strcmp(app.StaggerDropDown.Value, 'None') % Check to see if a stagger is desired
                if strcmp(app.StaggerDropDown.Value, 'Random') % If so, check to see what kind of stagger is desired
                    app.Stagger = (rand(1,app.NumberofChromosomesSpinner.Value*NoC)-0.5)*(app.RangenmSpinner.Value*2); % If random stagger is desired, create a vector that is as long as the total number of chromosomes that range from -1 to 1. Multiply that by the range to get the random stagger
                else
                    app.Stagger = (app.LengthSim(ceil(rand(1,app.NumberofChromosomesSpinner.Value*NoC)*size(app.LengthSim,1)),ceil(rand(1,app.NumberofChromosomesSpinner.Value*NoC)*size(app.LengthSim,2)))-3.5e-07)*1e9; % If set stagger, create a vector of stagger values samples from LengthSim that is as long as the total number of chromosomes
                end
            end
        end

        function N_Nuf2Calculate(app)
            % Function that generates the Nuf2 structure and saves the color vector
            if strcmp(app.NumberofComplexesSwitch.Value, '1') % Check to see if the number of complexes is 1
                N_Nuf2Structure1(app) % If so, generate 1 Nuf2 structure
            else
                N_Nuf2Structure2(app) % If no, generate 2 Nuf2 structures
            end
            app.N_Nuf2PointInfo.Color = repmat(convertCharsToStrings(app.N_Nuf2ColorChannelDropDown.Value),1,size(app.N_Nuf2PointInfo.CoordPoints,2)); % Save a vector that contains channel color selected as many times as there are points in the Nuf2.Coordpoints property
        end
        
        function N_Nuf2Structure1(app)
            % Function that generates 1 Nuf2 structure
            RotationCheck = (strcmp(app.RotationParametersPanel.Visible,'on')) & (app.RotationCheckBox.Value == true); % Create a logical value that checks to see if rotation is desired
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck); % Generate a list of XYZ points that represent Nuf2 fluorophore locations for 1 complex
        end
    
        function N_Nuf2Structure2(app)
            RotationCheck = (strcmp(app.RotationParametersPanel.Visible,'on')) & (app.RotationCheckBox.Value == true);
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck);
            app.N_Nuf2PointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints) - app.BioDistanceCorrection;
            app.N_Nuf2PointInfo.CoordPoints2 = StructurePointsGenerate(app,1+app.NumberofChromosomesSpinner.Value,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck);
            app.N_Nuf2PointInfo.CoordPoints2 = (RotationMatrixGenerate(app,-app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints2) + app.BioDistanceCorrection;
            app.N_Nuf2PointInfo.CoordPoints = horzcat(app.N_Nuf2PointInfo.CoordPoints, app.N_Nuf2PointInfo.CoordPoints2);
        end
    
        function KinetochoreCalculate(app)
            if strcmp(app.NumberofComplexesSwitch.Value, '1')
                KinetochoreStructure1(app)
            else
                KinetochoreStructure2(app)
            end
            app.KinetochorePointInfo.Color = repmat(convertCharsToStrings(app.KinetochoreColorChannel.Value),1,size(app.KinetochorePointInfo.CoordPoints,2));
        end
    
        function KinetochoreStructure1(app)
            app.KinetochorePointInfo.CoordPoints = KinetochoreGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value);
        end
    
        function KinetochoreStructure2(app)
            app.KinetochorePointInfo.CoordPoints = KinetochoreGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value);
            app.KinetochorePointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.KinetochorePointInfo.CoordPoints) - app.BioDistanceCorrection;
            app.KinetochorePointInfo.CoordPoints2 = KinetochoreGenerate(app,1+app.NumberofChromosomesSpinner.Value,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisdegSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value);
            app.KinetochorePointInfo.CoordPoints2 = (RotationMatrixGenerate(app,-app.BioDistanceCorrection)*app.KinetochorePointInfo.CoordPoints2) + app.BioDistanceCorrection;
            app.KinetochorePointInfo.CoordPoints = horzcat(app.KinetochorePointInfo.CoordPoints, app.KinetochorePointInfo.CoordPoints2);
            
        end
    
        function Spc29Calculate(app)
            if strcmp(app.NumberofComplexesSwitch.Value, '1')
                Spc29Structure1(app)
            else
                Spc29Structure2(app)
            end
            app.Spc29PointInfo.Color = repmat(convertCharsToStrings(app.Spc29ColorChannelDropDown.Value),1,size(app.Spc29PointInfo.CoordPoints,2));
        end
    
        function Spc29Structure1(app)
            app.Spc29PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.Spc29NumberofTubulesSpinner.Value,"~",app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false);
            app.Spc29PointInfo.CoordPoints = app.Spc29PointInfo.CoordPoints - [app.Spc29DistancetonmSpinner.Value;0;0];
        end
    
        function Spc29Structure2(app)
            Spc29Correction = (app.BioDistanceCorrection/norm(app.BioDistanceCorrection'))*(norm(app.BioDistanceCorrection') + app.Spc29DistancetonmSpinner.Value);
            app.Spc29PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.Spc29NumberofTubulesSpinner.Value,"~",app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false);
            app.Spc29PointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.Spc29PointInfo.CoordPoints) - Spc29Correction;
            app.Spc29PointInfo.CoordPoints2 = StructurePointsGenerate(app,1+app.NumberofChromosomesSpinner.Value,app.Spc29NumberofTubulesSpinner.Value,"~",app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false);
            app.Spc29PointInfo.CoordPoints2 = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.Spc29PointInfo.CoordPoints2) + Spc29Correction;
            app.Spc29PointInfo.CoordPoints = horzcat(app.Spc29PointInfo.CoordPoints, app.Spc29PointInfo.CoordPoints2);
        end

        function UpdatePlot(app)
            if isempty(app.MasterPointInfo.CoordPoints) == 0
                cmap = GenerateColorMap(app);
                scatter(app.UIAxes1,app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(2,:),[],cmap,'filled')
                scatter(app.UIAxes2,app.MasterPointInfo.CoordPoints(2,:),app.MasterPointInfo.CoordPoints(3,:),[],cmap,'filled')
                scatter(app.UIAxes3,app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(3,:),[],cmap,'filled')
                if app.AutomaticButton.Value == true
                    InitiateAutoLim(app)
                    PushAxisLimits(app)
                else
                    PullAxisLimits(app)
                end
            else
                cla(app.UIAxes1)
                cla(app.UIAxes2)
                cla(app.UIAxes3)
            end
        end
    
        function InitiateAutoLim(app)
            app.UIAxes1.XLimMode = 'auto';
            app.UIAxes1.YLimMode = 'auto';
            app.UIAxes2.XLimMode = 'auto';
            app.UIAxes2.YLimMode = 'auto';
            app.UIAxes3.XLimMode = 'auto';
            app.UIAxes3.YLimMode = 'auto';
        end
        
        function PushAxisLimits(app)
            y1 = app.UIAxes1.YLim;
            x1 = app.UIAxes1.XLim;
            y2 = app.UIAxes2.YLim;
            x2 = app.UIAxes2.XLim;
            y3 = app.UIAxes3.YLim;
            x3 = app.UIAxes3.XLim;
            app.YLowerLimnmEditField1.Value = y1(1);
            app.YUpperLimnmEditField1.Value = y1(2);
            app.XLowerLimnmEditField1.Value = x1(1);
            app.XUpperLimnmEditField1.Value = x1(2)';
            app.YLowerLimnmEditField2.Value = y2(1);
            app.YUpperLimnmEditField2.Value = y2(2);
            app.XLowerLimnmEditField2.Value = x2(1);
            app.XUpperLimnmEditField2.Value = x2(2);
            app.YLowerLimnmEditField3.Value = y3(1);
            app.YUpperLimnmEditField3.Value = y3(2);
            app.XLowerLimnmEditField3.Value = x3(1);
            app.XUpperLimnmEditField3.Value = x3(2);
        end
    
        function PullAxisLimits(app)
            app.UIAxes1.YLim = [app.YLowerLimnmEditField1.Value, app.YUpperLimnmEditField1.Value];
            app.UIAxes1.XLim = [app.XLowerLimnmEditField1.Value, app.XUpperLimnmEditField1.Value];
            app.UIAxes2.YLim = [app.YLowerLimnmEditField2.Value, app.YUpperLimnmEditField2.Value];
            app.UIAxes2.XLim = [app.XLowerLimnmEditField2.Value, app.XUpperLimnmEditField2.Value];
            app.UIAxes3.YLim = [app.YLowerLimnmEditField3.Value, app.YUpperLimnmEditField3.Value];
            app.UIAxes3.XLim = [app.XLowerLimnmEditField3.Value, app.XUpperLimnmEditField3.Value];           
        end
        
        function SaveMasterPointInfo(app)
            save(strcat(app.FileFolderNameStringEditField.Value,'.mat'),'app.MasterPointInfo');
        end
    
        function GenerateXML(app)
            xmlstr = sprintf('<?xml version="1.0" encoding="ISO-8859-1"?><SimulatedExperiments file="C:/Users/ayush/Desktop/two_points.xml" modified="Mon Jul 23 13:30:09 2018&#10;" created="Mon Jul 23 13:30:09 2018&#10;"><Version major="2" minor="3" revision="0"/><AFMSimulation pixelSize="10.000000" imageWidth="300" imageHeight="300" clipGroundPlane="false" displayAsWireframe="false" surfaceOpacity="1.000000"/><FluorescenceSimulation focalPlaneIndex="14" focalPlaneSpacing="%.6f" numberOfFocalPlanes="%d" useCustomFocalPlanePositions="false" gain="%.6f" offset="%.6f" maximumVoxelIntensity="%.6f" pixelSize="%.6f" psfName="Gibson-Lanni Widefield" imageWidth="%d" imageHeight="%d" shearInX="0.000000" shearInY="0.000000" addGaussianNoise="true" noiseStdDev="%.6f" showImageVolumeOutline="false" showRefGrid="true" refGridSpacing="1000.000000" superimposeSimulatedImage="true" superimposeComparisonImage="false" minimumIntensityLevel="0.000000" maximumIntensityLevel="200.000015"><FocalPlanes>', app.SpacingBetweenPlanesnmSpinner.Value,app.NumberofPlanesSpinner.Value, app.GainEditField.Value,app.OffsetEditField.Value,app.MaxVoxelIntensityEditField.Value,app.PixelSizenmSpinner.Value,app.WidthpixelsSpinner.Value,app.HeightpixelsSpinner.Value,app.GaussianNoiseSDEditField.Value);
            for planeidx = 0:app.NumberofPlanesSpinner.Value
                xmlstr = strcat(xmlstr, sprintf('<Plane index="%d" position="0.000000"/>',planeidx));
            end
            xmlstr = strcat(xmlstr, '</FocalPlanes><GradientDescentFluorescenceOptimizer><Iterations value="100"/><DerivativeEstimateStepSize value="1e-008"/><StepScaleFactor value="1"/><ObjectiveFunction name="Gaussian Noise Maximum Likelihood"/></GradientDescentFluorescenceOptimizer><NelderMeadFluorescenceOptimizer><MaximumIterations value="100"/><ParametersConvergenceTolerance value="1e-008"/><ObjectiveFunction name="Gaussian Noise Maximum Likelihood"/></NelderMeadFluorescenceOptimizer><PointsGradientFluorescenceOptimizer><StepSize value="1"/><Iterations value="100"/><ObjectiveFunction name=""/></PointsGradientFluorescenceOptimizer><FluorescenceComparisonImageModelObject name="None"/></FluorescenceSimulation><ModelObjectList>');
            for pointidx = 1:size(app.MasterPointInfo.CoordPointsCorrect,2)
                if app.MasterPointInfo.Color(pointidx) == "Green"
                    xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="green" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', app.MasterPointInfo.CoordPointsCorrect(1, pointidx), app.MasterPointInfo.CoordPointsCorrect(2, pointidx), app.MasterPointInfo.CoordPointsCorrect(3, pointidx)));
                elseif app.MasterPointInfo.Color(pointidx) == "Blue"
                    xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="blue" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', app.MasterPointInfo.CoordPointsCorrect(1, pointidx), app.MasterPointInfo.CoordPointsCorrect(2, pointidx), app.MasterPointInfo.CoordPointsCorrect(3, pointidx)));
                elseif app.MasterPointInfo.Color(pointidx) == "Red"
                    xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="red" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', app.MasterPointInfo.CoordPointsCorrect(1, pointidx), app.MasterPointInfo.CoordPointsCorrect(2, pointidx), app.MasterPointInfo.CoordPointsCorrect(3, pointidx)));
                elseif app.MasterPointInfo.Color(pointidx) == "All"
                    xmlstr = strcat(xmlstr, sprintf('<PointSetModel><Name value="Fluorophore"/><Visible value="true"/><PositionX value="%.6f" optimize="false"/><PositionY value="%.6f" optimize="false"/><PositionZ value="%.6f" optimize="false"/><RotationAngle value="0.000000" optimize="false"/><RotationVectorX value="1.000000" optimize="false"/><RotationVectorY value="0.000000" optimize="false"/><RotationVectorZ value="0.000000" optimize="false"/><VisibleRadius value="5.000000"/><NumberofPoints value="1"/><VerticesFluorophoreModel enabled="true" channel="all" intensityScale="1.000000" optimize="false"/><X1 value="0.000000" optimize="false"/><Y1 value="0.000000" optimize="false"/><Z1 value="0.000000" optimize="false"/></PointSetModel>', app.MasterPointInfo.CoordPointsCorrect(1, pointidx), app.MasterPointInfo.CoordPointsCorrect(2, pointidx), app.MasterPointInfo.CoordPointsCorrect(3, pointidx)));
                end
            end
            xmlstr = strcat(xmlstr, '</ModelObjectList></SimulatedExperiments>');
            xmlfile = fopen(strcat(app.FileFolderNameStringEditField.Value,'.xml'),'w');
            fprintf(xmlfile,xmlstr);
            fclose all;
        end
    
        function GenerateTIF(app)
            commandstring = 'python.exe BrownianXMLtoTIFF.py ';
            basename = app.FileFolderNameStringEditField.Value;
            if any(strcmp("All",app.MasterPointInfo.Color))
                commandstring = strcat(commandstring,{' '},'-out %s %s');
            else
                if any(strcmp("Green",app.MasterPointInfo.Color))
                    commandstring = strcat(commandstring,{' '}, '-green ');
                end
                if any(strcmp("Red",app.MasterPointInfo.Color))
                    commandstring = strcat(commandstring,{' '}, '-red ');
                end
                if any(strcmp("Blue",app.MasterPointInfo.Color))
                    commandstring = strcat(commandstring,{' '}, '-blue ');
                end
                commandstring = strcat(commandstring,{' '}, '-out %s %s');
            end
            system(sprintf(commandstring{1}, strcat(basename,'_TIF'), strcat(basename,'_DATA')))
        end
    
        function StructurePoints = StructurePointsGenerate(app,Index,NumberCylinders,Stagger,StructureDiameter,NumberofFluorophore,Length,TubuleDiameter,RotationCheck)
            StructurePoints = [];
            CoordAdjustment = zeros(3,1);
                for angle = 0:(2*pi/NumberCylinders):(2*pi-2*pi/NumberCylinders)
                    if strcmp(Stagger,'Random') || (strcmp(Stagger,'SimuLink Data (Stevens et al.)') && NumberCylinders <= 32)
                        CoordAdjustment(1,1) = app.Stagger(Index);
                    end
                    CoordAdjustment(2,1) = cos(angle)*StructureDiameter/2;
                    CoordAdjustment(3,1) = sin(angle)*StructureDiameter/2;
                    CylinderCoordPoints = CylinderFluorophorePoints(app, Index, NumberofFluorophore,Length,TubuleDiameter,RotationCheck);
                    StructurePoints = horzcat(StructurePoints, (CylinderCoordPoints + CoordAdjustment));
                    Index = Index + 1;
                end
        end
    
        function CylinderCoordPoints = CylinderFluorophorePoints(app,Index, NumberofFluorophore,Length,TubuleDiameter,RotationCheck)
                CylinderCoordPoints = zeros(3,NumberofFluorophore);
                for PointIdx = 1:NumberofFluorophore
                    CylinderCoordPoints(1,PointIdx) = -Length*rand();
                    CoordAng = rand()*2*pi;
                    CylinderCoordPoints(2,PointIdx) = cos(CoordAng)*TubuleDiameter/2;
                    CylinderCoordPoints(3,PointIdx) = sin(CoordAng)*TubuleDiameter/2;
                end
                if RotationCheck % Allow for rotation of the initial coordinates
                    CylinderCoordPoints = rotx(app.Rotation(Index,1))*roty(app.Rotation(Index,2))*rotz(app.Rotation(Index,3))*CylinderCoordPoints;
                end
        end
    
        function KinetochorePoints = KinetochoreGenerate(app,Index,NumberCylinders,Stagger,StructureDiameter,NumberofKComplexes,DistancetoTaper,RadialDisp,NumberofBound,MicrotubuleDiameter,TagPercent,UnboundLength,UpperAngle,LowerAngle)
            KinetochorePoints = [];
            CoordAdjustment = zeros(3,1);
                for angle = 0:(2*pi/NumberCylinders):(2*pi-2*pi/NumberCylinders)
                    if strcmp(Stagger,'Random') || (strcmp(Stagger,'SimuLink Data (Stevens et al.)') && NumberCylinders <= 32)
                        CoordAdjustment(1,1) = app.Stagger(Index);
                    end
                    CoordAdjustment(2,1) = cos(angle)*StructureDiameter/2;
                    CoordAdjustment(3,1) = sin(angle)*StructureDiameter/2;
                    KCPoints = KCFluorophorePoints(app,angle,NumberofKComplexes,DistancetoTaper,RadialDisp,NumberofBound,MicrotubuleDiameter,TagPercent,UnboundLength,UpperAngle,LowerAngle);
                    KinetochorePoints = horzcat(KinetochorePoints, (KCPoints + CoordAdjustment));
                    Index = Index + 1;
                end
        end
    
        function KCCoordPoints = KCFluorophorePoints(~,mainangle,NumberofKComplexes,DistancetoTaper,RadialDisp,NumberofBound,MicrotubuleDiameter,TagPercent,UnboundLength,UpperAngle,LowerAngle)
            BindingPoint = [DistancetoTaper;cos(mainangle)*RadialDisp;sin(mainangle)*RadialDisp];
            KCCoordPoints = zeros(3,NumberofKComplexes);
            KCBoolean = zeros(1,NumberofKComplexes);
            KCBoolean(randsample(length(KCBoolean),NumberofBound)) = 1;
            angles = 0:(2*pi/NumberofKComplexes):(2*pi-2*pi/NumberofKComplexes);
            for KCIndex = 1:NumberofKComplexes
                if KCBoolean(KCIndex) == 1
                    N2End = [0;cos(angles(KCIndex))*MicrotubuleDiameter/2;sin(angles(KCIndex))*MicrotubuleDiameter/2];
                    Difference = BindingPoint - N2End;
                    Point = Difference*TagPercent/100 + N2End;
                    KCCoordPoints(:,KCIndex) = Point;
                else
                    N2End = [0;cos(angles(KCIndex))*MicrotubuleDiameter/2;sin(angles(KCIndex))*MicrotubuleDiameter/2];
                    anglediff = UpperAngle - LowerAngle;
                    randangle = rand()*anglediff + LowerAngle;
                    Point = [cosd(randangle)*UnboundLength;sind(randangle)*UnboundLength;0]*TagPercent/100;
                    KCCoordPoints(:,KCIndex) = rotx(rad2deg(angles(KCIndex)))*Point+N2End;
                end
            end
        end
            
        
        function rotation = RotationMatrixGenerate(~,vector)
            ninit = [1;0;0]; 
            ninit = ninit/norm(ninit);
            nfinal = vector; 
            nfinal = nfinal/norm(nfinal); 
            c = dot(ninit,nfinal) / ( norm(ninit)*norm(nfinal) ); 
            s = sqrt(1-c*c);
            u = cross(ninit,nfinal) / ( norm(ninit)*norm(nfinal) );
            u = u/norm(u);
            C = 1-c;
            rotation = [u(1)^2*C+c, u(1)*u(2)*C-u(3)*s, u(1)*u(3)*C+u(2)*s
                u(2)*u(1)*C+u(3)*s, u(2)^2*C+c, u(2)*u(3)*C-u(1)*s
                u(3)*u(1)*C-u(2)*s, u(3)*u(2)*C+u(1)*s, u(3)^2*C+c];
        end
        
        function TestOrCreateDirectory(app)
            if 7 ~= exist(app.FileFolderNameStringEditField.Value,'dir')
                mkdir(app.FileFolderNameStringEditField.Value)
            end
        end
        function MasterPointInforCorrection(app)
            app.MasterPointInfo.CoordPointsCorrect = app.MasterPointInfo.CoordPoints + [(app.WidthpixelsSpinner.Value*app.PixelSizenmSpinner.Value)/2;(app.HeightpixelsSpinner.Value*app.PixelSizenmSpinner.Value)/2;((app.NumberofPlanesSpinner.Value-1)/2)*app.SpacingBetweenPlanesnmSpinner.Value];
        end
    
        function cmap = GenerateColorMap(app)
            cmap = [];
            for coloridx = 1:size(app.MasterPointInfo.Color,2)
               if app.MasterPointInfo.Color(coloridx) == "Red"
                   cmap(end+1,:) = [1 0 0];
               end
               if app.MasterPointInfo.Color(coloridx) == "Green"
                   cmap(end+1,:) = [0 1 0];
               end
               if app.MasterPointInfo.Color(coloridx) == "Blue"
                   cmap(end+1,:) = [0 0 1];
               end
               if app.MasterPointInfo.Color(coloridx) == "All"
                   cmap(end+1,:) = [0 0 0];
               end
            end
        end
        function PreProcess(~)
            SimulatedImagesPreProcess
        end
    
        function CopyBtoF(app)
            copyfile('BrownianXMLtoTIFF.py',app.FileFolderNameStringEditField.Value)
        end
    end
    
    
    

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            GeneralParametreCheck(app)
            SaveBioDistanceData(app)
            GenerateSimuLinkData(app)
            UpdateData(app)
            UpdatePlot(app)
        end

        % Callback function: LowLimSpinner, LowLimSpinner, 
        % MicrotubuleDiameternmSpinner, MicrotubuleDiameternmSpinner, 
        % NumberofChromosomesSpinner, NumberofChromosomesSpinner, 
        % NumberofComplexesSwitch, RangenmSpinner, RangenmSpinner, 
        % RotationCheckBox, RotationParametersPanel, StaggerDropDown, 
        % StructureDiameternmSpinner, StructureDiameternmSpinner, 
        % UpLimSpinner, UpLimSpinner, XSpinner, XSpinner, YSpinner, 
        % YSpinner, ZSpinner, ZSpinner
        function MainParameterChange(app, event)
            MainParameterCheck(app)
            UpdateData(app)
            UpdatePlot(app)
        end

        % Callback function: FileFolderNameStringEditField, 
        % FileFolderNameStringEditField, GenerateTIFsCheckBox, 
        % GenerateXMLCheckBox, SaveMATFileCheckBox
        function OutputParameterChange(app, event)
            OutputParameterLocationCheck(app)
            OutputParameterCheck(app)
        end

        % Button pushed function: GenerateOutputButton
        function GenerateOutputButtonPushed(app, event)
            if isempty(app.MasterPointInfo.CoordPoints) == 1
                app.StatusEditField.Value = 'No Structure Has Been Selected';
            else
                app.StatusEditField.Value = 'Saving/Writing/Taking Pictures. Please Hold.';
                app.FileFolderNameStringEditField.Value = strtrim(app.FileFolderNameStringEditField.Value);
                TestOrCreateDirectory(app)
                CopyBtoF(app)
                cd(app.FileFolderNameStringEditField.Value)
                mkdir(strcat(app.FileFolderNameStringEditField.Value,'_DATA'))
                cd(strcat(app.FileFolderNameStringEditField.Value,'_DATA'))
                if app.SaveMATFileCheckBox.Value == true
                    SaveMasterPointInfo(app);
                end
                MasterPointInforCorrection(app)
                if app.GenerateXMLCheckBox.Value == true
                    GenerateXML(app);
                end
                cd ..
                if strcmp(app.MicroscopeSimulatorParametersPanel.Visible,'on') && app.GenerateTIFsCheckBox.Value == true
                    GenerateTIF(app)
                end
                if strcmp(app.MicroscopeSimulatorParametersPanel.Visible,'on') && app.GenerateTIFsCheckBox.Value == true && app.PreProcessTIFsCheckBox.Value == true
                    PreProcess(app)
                end
                app.StatusEditField.Value = 'Finished!';
            end
        end

        % Button pushed function: DViewPopOutButton
        function DViewPopOutButtonPushed(app, event)
            if ~isempty(app.MasterPointInfo.CoordPoints) == 1
                cmap = GenerateColorMap(app);
                figure()
                scatter3(app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(2,:),app.MasterPointInfo.CoordPoints(3,:),[],cmap,'filled')
                rotate3d on
            end
        end

        % Selection changed function: AxisLimitsButtonGroup
        function AxisLimitsParameterChange(app, event)
            AxisParameterCheck(app)
            UpdatePlot(app)
        end

        % Value changed function: XLowerLimnmEditField1, 
        % XLowerLimnmEditField2, XLowerLimnmEditField3, 
        % XUpperLimnmEditField1, XUpperLimnmEditField2, 
        % XUpperLimnmEditField3, YLowerLimnmEditField1, 
        % YLowerLimnmEditField2, YLowerLimnmEditField3, 
        % YUpperLimnmEditField1, YUpperLimnmEditField2, 
        % YUpperLimnmEditField3
        function AxisLimitsValueChange(app, event)
            UpdatePlot(app)
        end

        % Menu selected function: GitHubMenu
        function GitHubMenuSelected(app, event)
            web('https://github.com/BloomLabYeast','-browser');
        end

        % Menu selected function: OtherProgramsMenu
        function OtherProgramsMenuSelected(app, event)
            web('http://bloomlab.web.unc.edu/resources/programs/','-browser');
        end

        % Menu selected function: BloomLabWebsiteMenu
        function BloomLabWebsiteMenuSelected(app, event)
            web('http://bloomlab.web.unc.edu/','-browser')
        end

        % Menu selected function: QuitMenu
        function QuitMenuSelected(app, event)
            delete(app)
        end

        % Callback function: N_Nuf2CheckBox, 
        % N_Nuf2ColorChannelDropDown, N_Nuf2LengthnmSpinner, 
        % N_Nuf2LengthnmSpinner, N_Nuf2NumberofFluorophoreSpinner, 
        % N_Nuf2NumberofFluorophoreSpinner
        function N_Nuf2StructureValueChange(app, event)
            UpdateData(app)
            UpdatePlot(app)
        end

        % Callback function: Spc29CheckBox, 
        % Spc29ColorChannelDropDown, Spc29DistancetonmSpinner, 
        % Spc29DistancetonmSpinner, Spc29LengthnmSpinner, 
        % Spc29LengthnmSpinner, Spc29NumberofFluorophoreSpinner, 
        % Spc29NumberofFluorophoreSpinner, 
        % Spc29NumberofTubulesSpinner, Spc29NumberofTubulesSpinner, 
        % Spc29StructureDiameternmSpinner, 
        % Spc29StructureDiameternmSpinner, 
        % Spc29TubuleDiameternmSpinner, Spc29TubuleDiameternmSpinner
        function Spc29StructureValueChange(app, event)
            UpdateData(app)
            UpdatePlot(app)
        end

        % Callback function: AnglefromMTAxisdegSpinner, 
        % AnglefromMTAxisdegSpinner, KinetochoreCheckBox, 
        % KinetochoreColorChannel, LengthofArmnmSpinner, 
        % LengthofArmnmSpinner, LowerAngleSpinner, LowerAngleSpinner, 
        % NumberofBoundComplexesSpinner, 
        % NumberofBoundComplexesSpinner, NumberofComplexesSpinner, 
        % NumberofComplexesSpinner, UpperAngleSpinner, 
        % UpperAngleSpinner, ofLengthMarkedSpinner, 
        % ofLengthMarkedSpinner
        function KinetochoreStructureValueChange(app, event)
            KinetochoreValueChangeCheck(app)
            UpdateData(app)
            UpdatePlot(app)
        end

        % Value changed function: EasyAlignCheckBox
        function EasyAlignCheckBoxValueChanged(app, event)
            SaveBioDistanceData(app)
            UpdateData(app)
            UpdatePlot(app)
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create StaticKinetUIFigure
            app.StaticKinetUIFigure = uifigure;
            app.StaticKinetUIFigure.Position = [100 100 1136 867];
            app.StaticKinetUIFigure.Name = 'Static Kinet';

            % Create FileMenu
            app.FileMenu = uimenu(app.StaticKinetUIFigure);
            app.FileMenu.Text = 'File';

            % Create QuitMenu
            app.QuitMenu = uimenu(app.FileMenu);
            app.QuitMenu.MenuSelectedFcn = createCallbackFcn(app, @QuitMenuSelected, true);
            app.QuitMenu.Text = 'Quit';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.StaticKinetUIFigure);
            app.AboutMenu.Text = 'About';

            % Create BloomLabWebsiteMenu
            app.BloomLabWebsiteMenu = uimenu(app.AboutMenu);
            app.BloomLabWebsiteMenu.MenuSelectedFcn = createCallbackFcn(app, @BloomLabWebsiteMenuSelected, true);
            app.BloomLabWebsiteMenu.Separator = 'on';
            app.BloomLabWebsiteMenu.Text = 'Bloom Lab Website';

            % Create OtherProgramsMenu
            app.OtherProgramsMenu = uimenu(app.AboutMenu);
            app.OtherProgramsMenu.MenuSelectedFcn = createCallbackFcn(app, @OtherProgramsMenuSelected, true);
            app.OtherProgramsMenu.Separator = 'on';
            app.OtherProgramsMenu.Text = 'Other Programs';

            % Create GitHubMenu
            app.GitHubMenu = uimenu(app.AboutMenu);
            app.GitHubMenu.MenuSelectedFcn = createCallbackFcn(app, @GitHubMenuSelected, true);
            app.GitHubMenu.Separator = 'on';
            app.GitHubMenu.Text = 'GitHub';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.StaticKinetUIFigure);
            app.HelpMenu.Text = 'Help';

            % Create DocumentationMenu
            app.DocumentationMenu = uimenu(app.HelpMenu);
            app.DocumentationMenu.Separator = 'on';
            app.DocumentationMenu.Text = 'Documentation';

            % Create N_Nuf2StructurePanel
            app.N_Nuf2StructurePanel = uipanel(app.StaticKinetUIFigure);
            app.N_Nuf2StructurePanel.BorderType = 'none';
            app.N_Nuf2StructurePanel.TitlePosition = 'centertop';
            app.N_Nuf2StructurePanel.Title = 'N-Terminal Nuf2';
            app.N_Nuf2StructurePanel.FontName = 'Arial';
            app.N_Nuf2StructurePanel.FontSize = 24;
            app.N_Nuf2StructurePanel.Position = [11 611 260 120];

            % Create N_Nuf2NumberofFluorophoreSpinnerLabel
            app.N_Nuf2NumberofFluorophoreSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Position = [26 38 145 22];
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Text = 'Number of Fluorophore';

            % Create N_Nuf2LengthnmSpinnerLabel
            app.N_Nuf2LengthnmSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2LengthnmSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2LengthnmSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2LengthnmSpinnerLabel.Position = [77 59 83 22];
            app.N_Nuf2LengthnmSpinnerLabel.Text = 'Length (nm)';

            % Create N_Nuf2LengthnmSpinner
            app.N_Nuf2LengthnmSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2LengthnmSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2LengthnmSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2LengthnmSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2LengthnmSpinner.Limits = [0 Inf];
            app.N_Nuf2LengthnmSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2LengthnmSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2LengthnmSpinner.FontName = 'Arial';
            app.N_Nuf2LengthnmSpinner.Position = [170 59 66 22];
            app.N_Nuf2LengthnmSpinner.Value = 2;

            % Create N_Nuf2NumberofFluorophoreSpinner
            app.N_Nuf2NumberofFluorophoreSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofFluorophoreSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2NumberofFluorophoreSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2NumberofFluorophoreSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2NumberofFluorophoreSpinner.Limits = [0 Inf];
            app.N_Nuf2NumberofFluorophoreSpinner.RoundFractionalValues = 'on';
            app.N_Nuf2NumberofFluorophoreSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2NumberofFluorophoreSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofFluorophoreSpinner.FontName = 'Arial';
            app.N_Nuf2NumberofFluorophoreSpinner.Position = [170 38 66 22];
            app.N_Nuf2NumberofFluorophoreSpinner.Value = 20;

            % Create N_Nuf2ColorChannelDropDownLabel
            app.N_Nuf2ColorChannelDropDownLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDownLabel.HorizontalAlignment = 'center';
            app.N_Nuf2ColorChannelDropDownLabel.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDownLabel.Position = [76 13 95 22];
            app.N_Nuf2ColorChannelDropDownLabel.Text = 'Color Channel';

            % Create N_Nuf2ColorChannelDropDown
            app.N_Nuf2ColorChannelDropDown = uidropdown(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDown.Items = {'All', 'Green', 'Red', 'Blue'};
            app.N_Nuf2ColorChannelDropDown.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2ColorChannelDropDown.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDown.Position = [170 13 66 22];
            app.N_Nuf2ColorChannelDropDown.Value = 'Green';

            % Create OutputPanel
            app.OutputPanel = uipanel(app.StaticKinetUIFigure);
            app.OutputPanel.BorderType = 'none';
            app.OutputPanel.TitlePosition = 'centertop';
            app.OutputPanel.Title = 'Output';
            app.OutputPanel.FontName = 'Arial';
            app.OutputPanel.FontSize = 26;
            app.OutputPanel.Position = [826 396 298 462];

            % Create FileFolderNameStringLabel
            app.FileFolderNameStringLabel = uilabel(app.OutputPanel);
            app.FileFolderNameStringLabel.HorizontalAlignment = 'right';
            app.FileFolderNameStringLabel.Position = [8 390 136 22];
            app.FileFolderNameStringLabel.Text = 'File/Folder Name String:';

            % Create FileFolderNameStringEditField
            app.FileFolderNameStringEditField = uieditfield(app.OutputPanel, 'text');
            app.FileFolderNameStringEditField.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.ValueChangingFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.HorizontalAlignment = 'center';
            app.FileFolderNameStringEditField.Position = [146 390 130 22];

            % Create GenerateXMLCheckBox
            app.GenerateXMLCheckBox = uicheckbox(app.OutputPanel);
            app.GenerateXMLCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.GenerateXMLCheckBox.Text = 'Generate XML';
            app.GenerateXMLCheckBox.Position = [99 338 100 22];

            % Create SaveMATFileCheckBox
            app.SaveMATFileCheckBox = uicheckbox(app.OutputPanel);
            app.SaveMATFileCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.SaveMATFileCheckBox.Text = 'Save MAT File';
            app.SaveMATFileCheckBox.Position = [99 359 100 22];

            % Create MicroscopeSimulatorParametersPanel
            app.MicroscopeSimulatorParametersPanel = uipanel(app.OutputPanel);
            app.MicroscopeSimulatorParametersPanel.BorderType = 'none';
            app.MicroscopeSimulatorParametersPanel.TitlePosition = 'centertop';
            app.MicroscopeSimulatorParametersPanel.Title = 'Microscope Simulator Parameters';
            app.MicroscopeSimulatorParametersPanel.Visible = 'off';
            app.MicroscopeSimulatorParametersPanel.Position = [7 113 287 223];

            % Create GainLabel
            app.GainLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GainLabel.HorizontalAlignment = 'center';
            app.GainLabel.Position = [9 73 30 22];
            app.GainLabel.Text = 'Gain:';

            % Create GainEditField
            app.GainEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GainEditField.UpperLimitInclusive = 'off';
            app.GainEditField.Limits = [0 Inf];
            app.GainEditField.HorizontalAlignment = 'center';
            app.GainEditField.Position = [39 73 82 22];
            app.GainEditField.Value = 76660;

            % Create OffsetLabel
            app.OffsetLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.OffsetLabel.HorizontalAlignment = 'center';
            app.OffsetLabel.Position = [7 46 41 22];
            app.OffsetLabel.Text = 'Offset:';

            % Create OffsetEditField
            app.OffsetEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.OffsetEditField.UpperLimitInclusive = 'off';
            app.OffsetEditField.Limits = [0 Inf];
            app.OffsetEditField.HorizontalAlignment = 'center';
            app.OffsetEditField.Position = [56 46 50 22];

            % Create GaussianNoiseSDLabel
            app.GaussianNoiseSDLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GaussianNoiseSDLabel.HorizontalAlignment = 'center';
            app.GaussianNoiseSDLabel.Position = [128 73 113 22];
            app.GaussianNoiseSDLabel.Text = 'Gaussian Noise SD:';

            % Create GaussianNoiseSDEditField
            app.GaussianNoiseSDEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GaussianNoiseSDEditField.UpperLimitInclusive = 'off';
            app.GaussianNoiseSDEditField.Limits = [0 Inf];
            app.GaussianNoiseSDEditField.HorizontalAlignment = 'center';
            app.GaussianNoiseSDEditField.Position = [241 73 43 22];

            % Create MaxVoxelIntensityLabel
            app.MaxVoxelIntensityLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.MaxVoxelIntensityLabel.HorizontalAlignment = 'right';
            app.MaxVoxelIntensityLabel.Position = [107 47 111 22];
            app.MaxVoxelIntensityLabel.Text = 'Max. Voxel Intensity:';

            % Create MaxVoxelIntensityEditField
            app.MaxVoxelIntensityEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.MaxVoxelIntensityEditField.UpperLimitInclusive = 'off';
            app.MaxVoxelIntensityEditField.Limits = [0 Inf];
            app.MaxVoxelIntensityEditField.HorizontalAlignment = 'center';
            app.MaxVoxelIntensityEditField.Position = [221 47 60 22];
            app.MaxVoxelIntensityEditField.Value = 200;

            % Create GenerateTIFsCheckBox
            app.GenerateTIFsCheckBox = uicheckbox(app.MicroscopeSimulatorParametersPanel);
            app.GenerateTIFsCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.GenerateTIFsCheckBox.Text = 'Generate TIFs';
            app.GenerateTIFsCheckBox.Position = [99 23 99 22];

            % Create NumberofPlanesSpinnerLabel
            app.NumberofPlanesSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinnerLabel.Position = [65 176 102 22];
            app.NumberofPlanesSpinnerLabel.Text = 'Number of Planes';

            % Create NumberofPlanesSpinner
            app.NumberofPlanesSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinner.LowerLimitInclusive = 'off';
            app.NumberofPlanesSpinner.UpperLimitInclusive = 'off';
            app.NumberofPlanesSpinner.Limits = [0 Inf];
            app.NumberofPlanesSpinner.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinner.Position = [171 176 51 22];
            app.NumberofPlanesSpinner.Value = 7;

            % Create SpacingBetweenPlanesnmSpinnerLabel
            app.SpacingBetweenPlanesnmSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinnerLabel.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinnerLabel.Position = [25 150 167 22];
            app.SpacingBetweenPlanesnmSpinnerLabel.Text = 'Spacing Between Planes (nm)';

            % Create SpacingBetweenPlanesnmSpinner
            app.SpacingBetweenPlanesnmSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinner.Step = 50;
            app.SpacingBetweenPlanesnmSpinner.LowerLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.UpperLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.Limits = [0 Inf];
            app.SpacingBetweenPlanesnmSpinner.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinner.Position = [196 150 66 22];
            app.SpacingBetweenPlanesnmSpinner.Value = 300;

            % Create WidthpixelsSpinnerLabel
            app.WidthpixelsSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.WidthpixelsSpinnerLabel.HorizontalAlignment = 'center';
            app.WidthpixelsSpinnerLabel.Position = [2 121 78 22];
            app.WidthpixelsSpinnerLabel.Text = 'Width (pixels)';

            % Create WidthpixelsSpinner
            app.WidthpixelsSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.WidthpixelsSpinner.Step = 10;
            app.WidthpixelsSpinner.UpperLimitInclusive = 'off';
            app.WidthpixelsSpinner.Limits = [1 Inf];
            app.WidthpixelsSpinner.ValueDisplayFormat = '%.0f';
            app.WidthpixelsSpinner.HorizontalAlignment = 'center';
            app.WidthpixelsSpinner.Position = [81 121 61 22];
            app.WidthpixelsSpinner.Value = 40;

            % Create HeightpixelsSpinnerLabel
            app.HeightpixelsSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.HeightpixelsSpinnerLabel.HorizontalAlignment = 'center';
            app.HeightpixelsSpinnerLabel.Position = [147 121 82 22];
            app.HeightpixelsSpinnerLabel.Text = 'Height (pixels)';

            % Create HeightpixelsSpinner
            app.HeightpixelsSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.HeightpixelsSpinner.Step = 10;
            app.HeightpixelsSpinner.UpperLimitInclusive = 'off';
            app.HeightpixelsSpinner.Limits = [1 Inf];
            app.HeightpixelsSpinner.ValueDisplayFormat = '%.0f';
            app.HeightpixelsSpinner.HorizontalAlignment = 'center';
            app.HeightpixelsSpinner.Position = [230 121 57 22];
            app.HeightpixelsSpinner.Value = 40;

            % Create PixelSizenmSpinnerLabel
            app.PixelSizenmSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.PixelSizenmSpinnerLabel.HorizontalAlignment = 'center';
            app.PixelSizenmSpinnerLabel.Position = [66 97 86 22];
            app.PixelSizenmSpinnerLabel.Text = 'Pixel Size (nm)';

            % Create PixelSizenmSpinner
            app.PixelSizenmSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.PixelSizenmSpinner.LowerLimitInclusive = 'off';
            app.PixelSizenmSpinner.UpperLimitInclusive = 'off';
            app.PixelSizenmSpinner.Limits = [0 Inf];
            app.PixelSizenmSpinner.HorizontalAlignment = 'center';
            app.PixelSizenmSpinner.Position = [157 97 64 22];
            app.PixelSizenmSpinner.Value = 65;

            % Create PreProcessTIFsCheckBox
            app.PreProcessTIFsCheckBox = uicheckbox(app.MicroscopeSimulatorParametersPanel);
            app.PreProcessTIFsCheckBox.Text = 'Pre-Process TIF''s';
            app.PreProcessTIFsCheckBox.Position = [98 2 118 22];

            % Create StatusOutputPanel
            app.StatusOutputPanel = uipanel(app.OutputPanel);
            app.StatusOutputPanel.Position = [2 231 296 103];

            % Create GenerateOutputButton
            app.GenerateOutputButton = uibutton(app.StatusOutputPanel, 'push');
            app.GenerateOutputButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateOutputButtonPushed, true);
            app.GenerateOutputButton.FontSize = 18;
            app.GenerateOutputButton.Enable = 'off';
            app.GenerateOutputButton.Position = [60 40 176 58];
            app.GenerateOutputButton.Text = 'Generate Output!';

            % Create StatusLabel
            app.StatusLabel = uilabel(app.StatusOutputPanel);
            app.StatusLabel.HorizontalAlignment = 'right';
            app.StatusLabel.Position = [1 10 42 22];
            app.StatusLabel.Text = 'Status:';

            % Create StatusEditField
            app.StatusEditField = uieditfield(app.StatusOutputPanel, 'text');
            app.StatusEditField.HorizontalAlignment = 'center';
            app.StatusEditField.Position = [46 10 246 22];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.StaticKinetUIFigure);
            title(app.UIAxes2, '+Y vs. +Z')
            app.UIAxes2.PlotBoxAspectRatio = [1 0.802941176470588 0.802941176470588];
            app.UIAxes2.Position = [392 14 370 313];

            % Create UIAxes1
            app.UIAxes1 = uiaxes(app.StaticKinetUIFigure);
            title(app.UIAxes1, '+X vs. +Y')
            app.UIAxes1.PlotBoxAspectRatio = [1 0.795918367346939 0.795918367346939];
            app.UIAxes1.Position = [14 14 373 313];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.StaticKinetUIFigure);
            title(app.UIAxes3, '+X vs. +Z')
            app.UIAxes3.PlotBoxAspectRatio = [1 0.832317073170732 0.832317073170732];
            app.UIAxes3.Position = [767 14 358 313];

            % Create AxisLimPanel
            app.AxisLimPanel = uipanel(app.StaticKinetUIFigure);
            app.AxisLimPanel.BorderType = 'none';
            app.AxisLimPanel.Visible = 'off';
            app.AxisLimPanel.Position = [48 329 1065 57];

            % Create YLowerLimnmEditFieldLabel
            app.YLowerLimnmEditFieldLabel = uilabel(app.AxisLimPanel);
            app.YLowerLimnmEditFieldLabel.HorizontalAlignment = 'right';
            app.YLowerLimnmEditFieldLabel.Position = [9 4 104 22];
            app.YLowerLimnmEditFieldLabel.Text = 'Y Lower Lim. (nm)';

            % Create YLowerLimnmEditField1
            app.YLowerLimnmEditField1 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YLowerLimnmEditField1.LowerLimitInclusive = 'off';
            app.YLowerLimnmEditField1.UpperLimitInclusive = 'off';
            app.YLowerLimnmEditField1.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YLowerLimnmEditField1.HorizontalAlignment = 'center';
            app.YLowerLimnmEditField1.Position = [117 4 38 22];

            % Create YUpperLimnmEditFieldLabel
            app.YUpperLimnmEditFieldLabel = uilabel(app.AxisLimPanel);
            app.YUpperLimnmEditFieldLabel.HorizontalAlignment = 'right';
            app.YUpperLimnmEditFieldLabel.Position = [169 4 104 22];
            app.YUpperLimnmEditFieldLabel.Text = 'Y Upper Lim. (nm)';

            % Create YUpperLimnmEditField1
            app.YUpperLimnmEditField1 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YUpperLimnmEditField1.LowerLimitInclusive = 'off';
            app.YUpperLimnmEditField1.UpperLimitInclusive = 'off';
            app.YUpperLimnmEditField1.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YUpperLimnmEditField1.HorizontalAlignment = 'center';
            app.YUpperLimnmEditField1.Position = [280 4 38 22];

            % Create XLowerLimnmEditFieldLabel
            app.XLowerLimnmEditFieldLabel = uilabel(app.AxisLimPanel);
            app.XLowerLimnmEditFieldLabel.HorizontalAlignment = 'right';
            app.XLowerLimnmEditFieldLabel.Position = [9 33 104 22];
            app.XLowerLimnmEditFieldLabel.Text = 'X Lower Lim. (nm)';

            % Create XLowerLimnmEditField1
            app.XLowerLimnmEditField1 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XLowerLimnmEditField1.LowerLimitInclusive = 'off';
            app.XLowerLimnmEditField1.UpperLimitInclusive = 'off';
            app.XLowerLimnmEditField1.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XLowerLimnmEditField1.HorizontalAlignment = 'center';
            app.XLowerLimnmEditField1.Position = [117 33 38 22];

            % Create XUpperLimnmEditFieldLabel
            app.XUpperLimnmEditFieldLabel = uilabel(app.AxisLimPanel);
            app.XUpperLimnmEditFieldLabel.HorizontalAlignment = 'right';
            app.XUpperLimnmEditFieldLabel.Position = [169 33 104 22];
            app.XUpperLimnmEditFieldLabel.Text = 'X Upper Lim. (nm)';

            % Create XUpperLimnmEditField1
            app.XUpperLimnmEditField1 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XUpperLimnmEditField1.LowerLimitInclusive = 'off';
            app.XUpperLimnmEditField1.UpperLimitInclusive = 'off';
            app.XUpperLimnmEditField1.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XUpperLimnmEditField1.HorizontalAlignment = 'center';
            app.XUpperLimnmEditField1.Position = [280 33 38 22];

            % Create YLowerLimnmEditField_2Label
            app.YLowerLimnmEditField_2Label = uilabel(app.AxisLimPanel);
            app.YLowerLimnmEditField_2Label.HorizontalAlignment = 'right';
            app.YLowerLimnmEditField_2Label.Position = [388 4 104 22];
            app.YLowerLimnmEditField_2Label.Text = 'Y Lower Lim. (nm)';

            % Create YLowerLimnmEditField2
            app.YLowerLimnmEditField2 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YLowerLimnmEditField2.LowerLimitInclusive = 'off';
            app.YLowerLimnmEditField2.UpperLimitInclusive = 'off';
            app.YLowerLimnmEditField2.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YLowerLimnmEditField2.HorizontalAlignment = 'center';
            app.YLowerLimnmEditField2.Position = [496 4 38 22];

            % Create YUpperLimnmEditField_2Label
            app.YUpperLimnmEditField_2Label = uilabel(app.AxisLimPanel);
            app.YUpperLimnmEditField_2Label.HorizontalAlignment = 'right';
            app.YUpperLimnmEditField_2Label.Position = [548 4 104 22];
            app.YUpperLimnmEditField_2Label.Text = 'Y Upper Lim. (nm)';

            % Create YUpperLimnmEditField2
            app.YUpperLimnmEditField2 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YUpperLimnmEditField2.LowerLimitInclusive = 'off';
            app.YUpperLimnmEditField2.UpperLimitInclusive = 'off';
            app.YUpperLimnmEditField2.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YUpperLimnmEditField2.HorizontalAlignment = 'center';
            app.YUpperLimnmEditField2.Position = [659 4 38 22];

            % Create XLowerLimnmEditField_2Label
            app.XLowerLimnmEditField_2Label = uilabel(app.AxisLimPanel);
            app.XLowerLimnmEditField_2Label.HorizontalAlignment = 'right';
            app.XLowerLimnmEditField_2Label.Position = [388 33 104 22];
            app.XLowerLimnmEditField_2Label.Text = 'X Lower Lim. (nm)';

            % Create XLowerLimnmEditField2
            app.XLowerLimnmEditField2 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XLowerLimnmEditField2.LowerLimitInclusive = 'off';
            app.XLowerLimnmEditField2.UpperLimitInclusive = 'off';
            app.XLowerLimnmEditField2.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XLowerLimnmEditField2.HorizontalAlignment = 'center';
            app.XLowerLimnmEditField2.Position = [496 33 38 22];

            % Create XUpperLimnmEditField_2Label
            app.XUpperLimnmEditField_2Label = uilabel(app.AxisLimPanel);
            app.XUpperLimnmEditField_2Label.HorizontalAlignment = 'right';
            app.XUpperLimnmEditField_2Label.Position = [548 33 104 22];
            app.XUpperLimnmEditField_2Label.Text = 'X Upper Lim. (nm)';

            % Create XUpperLimnmEditField2
            app.XUpperLimnmEditField2 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XUpperLimnmEditField2.LowerLimitInclusive = 'off';
            app.XUpperLimnmEditField2.UpperLimitInclusive = 'off';
            app.XUpperLimnmEditField2.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XUpperLimnmEditField2.HorizontalAlignment = 'center';
            app.XUpperLimnmEditField2.Position = [659 33 38 22];

            % Create YLowerLimnmEditField_3Label
            app.YLowerLimnmEditField_3Label = uilabel(app.AxisLimPanel);
            app.YLowerLimnmEditField_3Label.HorizontalAlignment = 'right';
            app.YLowerLimnmEditField_3Label.Position = [746 4 104 22];
            app.YLowerLimnmEditField_3Label.Text = 'Y Lower Lim. (nm)';

            % Create YLowerLimnmEditField3
            app.YLowerLimnmEditField3 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YLowerLimnmEditField3.LowerLimitInclusive = 'off';
            app.YLowerLimnmEditField3.UpperLimitInclusive = 'off';
            app.YLowerLimnmEditField3.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YLowerLimnmEditField3.HorizontalAlignment = 'center';
            app.YLowerLimnmEditField3.Position = [854 4 38 22];

            % Create YUpperLimnmEditField_3Label
            app.YUpperLimnmEditField_3Label = uilabel(app.AxisLimPanel);
            app.YUpperLimnmEditField_3Label.HorizontalAlignment = 'right';
            app.YUpperLimnmEditField_3Label.Position = [906 4 104 22];
            app.YUpperLimnmEditField_3Label.Text = 'Y Upper Lim. (nm)';

            % Create YUpperLimnmEditField3
            app.YUpperLimnmEditField3 = uieditfield(app.AxisLimPanel, 'numeric');
            app.YUpperLimnmEditField3.LowerLimitInclusive = 'off';
            app.YUpperLimnmEditField3.UpperLimitInclusive = 'off';
            app.YUpperLimnmEditField3.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.YUpperLimnmEditField3.HorizontalAlignment = 'center';
            app.YUpperLimnmEditField3.Position = [1017 4 38 22];

            % Create XLowerLimnmEditField_3Label
            app.XLowerLimnmEditField_3Label = uilabel(app.AxisLimPanel);
            app.XLowerLimnmEditField_3Label.HorizontalAlignment = 'right';
            app.XLowerLimnmEditField_3Label.Position = [746 33 104 22];
            app.XLowerLimnmEditField_3Label.Text = 'X Lower Lim. (nm)';

            % Create XLowerLimnmEditField3
            app.XLowerLimnmEditField3 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XLowerLimnmEditField3.LowerLimitInclusive = 'off';
            app.XLowerLimnmEditField3.UpperLimitInclusive = 'off';
            app.XLowerLimnmEditField3.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XLowerLimnmEditField3.HorizontalAlignment = 'center';
            app.XLowerLimnmEditField3.Position = [854 33 38 22];

            % Create XUpperLimnmEditField_3Label
            app.XUpperLimnmEditField_3Label = uilabel(app.AxisLimPanel);
            app.XUpperLimnmEditField_3Label.HorizontalAlignment = 'right';
            app.XUpperLimnmEditField_3Label.Position = [906 33 104 22];
            app.XUpperLimnmEditField_3Label.Text = 'X Upper Lim. (nm)';

            % Create XUpperLimnmEditField3
            app.XUpperLimnmEditField3 = uieditfield(app.AxisLimPanel, 'numeric');
            app.XUpperLimnmEditField3.LowerLimitInclusive = 'off';
            app.XUpperLimnmEditField3.UpperLimitInclusive = 'off';
            app.XUpperLimnmEditField3.ValueChangedFcn = createCallbackFcn(app, @AxisLimitsValueChange, true);
            app.XUpperLimnmEditField3.HorizontalAlignment = 'center';
            app.XUpperLimnmEditField3.Position = [1017 33 38 22];

            % Create GraphPanel
            app.GraphPanel = uipanel(app.StaticKinetUIFigure);
            app.GraphPanel.BorderType = 'none';
            app.GraphPanel.Position = [493 389 151 85];

            % Create DViewPopOutButton
            app.DViewPopOutButton = uibutton(app.GraphPanel, 'push');
            app.DViewPopOutButton.ButtonPushedFcn = createCallbackFcn(app, @DViewPopOutButtonPushed, true);
            app.DViewPopOutButton.Position = [5 57 142 24];
            app.DViewPopOutButton.Text = '3D View (Pop-Out)';

            % Create AxisLimitsButtonGroup
            app.AxisLimitsButtonGroup = uibuttongroup(app.GraphPanel);
            app.AxisLimitsButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @AxisLimitsParameterChange, true);
            app.AxisLimitsButtonGroup.TitlePosition = 'centertop';
            app.AxisLimitsButtonGroup.Title = 'Axis Limits';
            app.AxisLimitsButtonGroup.Position = [5 5 142 46];

            % Create AutomaticButton
            app.AutomaticButton = uiradiobutton(app.AxisLimitsButtonGroup);
            app.AutomaticButton.Text = 'Automatic';
            app.AutomaticButton.Position = [6 2 75 22];
            app.AutomaticButton.Value = true;

            % Create FixedButton
            app.FixedButton = uiradiobutton(app.AxisLimitsButtonGroup);
            app.FixedButton.Text = 'Fixed';
            app.FixedButton.Position = [85 3 50 22];

            % Create NumberofComplexesSwitchLabel
            app.NumberofComplexesSwitchLabel = uilabel(app.StaticKinetUIFigure);
            app.NumberofComplexesSwitchLabel.HorizontalAlignment = 'center';
            app.NumberofComplexesSwitchLabel.FontName = 'Arial';
            app.NumberofComplexesSwitchLabel.Position = [11 830 125 22];
            app.NumberofComplexesSwitchLabel.Text = 'Number of Complexes';

            % Create NumberofComplexesSwitch
            app.NumberofComplexesSwitch = uiswitch(app.StaticKinetUIFigure, 'slider');
            app.NumberofComplexesSwitch.Items = {'1', '2'};
            app.NumberofComplexesSwitch.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.NumberofComplexesSwitch.FontName = 'Arial';
            app.NumberofComplexesSwitch.Position = [153 832 42 19];
            app.NumberofComplexesSwitch.Value = '1';

            % Create Spc29StructurePanel
            app.Spc29StructurePanel = uipanel(app.StaticKinetUIFigure);
            app.Spc29StructurePanel.BorderType = 'none';
            app.Spc29StructurePanel.TitlePosition = 'centertop';
            app.Spc29StructurePanel.Title = 'Spc-29';
            app.Spc29StructurePanel.FontName = 'Arial';
            app.Spc29StructurePanel.FontSize = 24;
            app.Spc29StructurePanel.Position = [277 538 221 193];

            % Create Spc29TubuleDiameternmSpinnerLabel
            app.Spc29TubuleDiameternmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29TubuleDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29TubuleDiameternmSpinnerLabel.Position = [1 95 145 22];
            app.Spc29TubuleDiameternmSpinnerLabel.Text = 'Tubule Diameter (nm)';

            % Create Spc29TubuleDiameternmSpinner
            app.Spc29TubuleDiameternmSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29TubuleDiameternmSpinner.Step = 5;
            app.Spc29TubuleDiameternmSpinner.LowerLimitInclusive = 'off';
            app.Spc29TubuleDiameternmSpinner.UpperLimitInclusive = 'off';
            app.Spc29TubuleDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29TubuleDiameternmSpinner.Limits = [0 Inf];
            app.Spc29TubuleDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29TubuleDiameternmSpinner.HorizontalAlignment = 'center';
            app.Spc29TubuleDiameternmSpinner.FontName = 'Arial';
            app.Spc29TubuleDiameternmSpinner.Position = [145 95 66 22];
            app.Spc29TubuleDiameternmSpinner.Value = 25;

            % Create Spc29StructureDiameternmSpinnerLabel
            app.Spc29StructureDiameternmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29StructureDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29StructureDiameternmSpinnerLabel.FontName = 'Arial';
            app.Spc29StructureDiameternmSpinnerLabel.Position = [1 74 145 22];
            app.Spc29StructureDiameternmSpinnerLabel.Text = 'Structure Diameter (nm)';

            % Create Spc29StructureDiameternmSpinner
            app.Spc29StructureDiameternmSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29StructureDiameternmSpinner.Step = 10;
            app.Spc29StructureDiameternmSpinner.LowerLimitInclusive = 'off';
            app.Spc29StructureDiameternmSpinner.UpperLimitInclusive = 'off';
            app.Spc29StructureDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29StructureDiameternmSpinner.Limits = [0 Inf];
            app.Spc29StructureDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29StructureDiameternmSpinner.HorizontalAlignment = 'center';
            app.Spc29StructureDiameternmSpinner.FontName = 'Arial';
            app.Spc29StructureDiameternmSpinner.Position = [145 74 66 22];
            app.Spc29StructureDiameternmSpinner.Value = 100;

            % Create Spc29NumberofFluorophoreSpinnerLabel
            app.Spc29NumberofFluorophoreSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29NumberofFluorophoreSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29NumberofFluorophoreSpinnerLabel.FontName = 'Arial';
            app.Spc29NumberofFluorophoreSpinnerLabel.Position = [1 53 145 22];
            app.Spc29NumberofFluorophoreSpinnerLabel.Text = 'Number of Fluorophore';

            % Create Spc29NumberofFluorophoreSpinner
            app.Spc29NumberofFluorophoreSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29NumberofFluorophoreSpinner.LowerLimitInclusive = 'off';
            app.Spc29NumberofFluorophoreSpinner.UpperLimitInclusive = 'off';
            app.Spc29NumberofFluorophoreSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29NumberofFluorophoreSpinner.Limits = [0 Inf];
            app.Spc29NumberofFluorophoreSpinner.RoundFractionalValues = 'on';
            app.Spc29NumberofFluorophoreSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29NumberofFluorophoreSpinner.HorizontalAlignment = 'center';
            app.Spc29NumberofFluorophoreSpinner.FontName = 'Arial';
            app.Spc29NumberofFluorophoreSpinner.Position = [145 53 66 22];
            app.Spc29NumberofFluorophoreSpinner.Value = 20;

            % Create Spc29ColorChannelDropDownLabel
            app.Spc29ColorChannelDropDownLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29ColorChannelDropDownLabel.HorizontalAlignment = 'center';
            app.Spc29ColorChannelDropDownLabel.FontName = 'Arial';
            app.Spc29ColorChannelDropDownLabel.Position = [28 7 91 22];
            app.Spc29ColorChannelDropDownLabel.Text = 'Color Channel';

            % Create Spc29ColorChannelDropDown
            app.Spc29ColorChannelDropDown = uidropdown(app.Spc29StructurePanel);
            app.Spc29ColorChannelDropDown.Items = {'All', 'Green', 'Red', 'Blue'};
            app.Spc29ColorChannelDropDown.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29ColorChannelDropDown.FontName = 'Arial';
            app.Spc29ColorChannelDropDown.Position = [145 8 66 22];
            app.Spc29ColorChannelDropDown.Value = 'Red';

            % Create Spc29NumberofTubulesSpinnerLabel
            app.Spc29NumberofTubulesSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29NumberofTubulesSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29NumberofTubulesSpinnerLabel.FontName = 'Arial';
            app.Spc29NumberofTubulesSpinnerLabel.Position = [19 32 107 22];
            app.Spc29NumberofTubulesSpinnerLabel.Text = 'Number of Tubules';

            % Create Spc29NumberofTubulesSpinner
            app.Spc29NumberofTubulesSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29NumberofTubulesSpinner.LowerLimitInclusive = 'off';
            app.Spc29NumberofTubulesSpinner.UpperLimitInclusive = 'off';
            app.Spc29NumberofTubulesSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29NumberofTubulesSpinner.Limits = [0 Inf];
            app.Spc29NumberofTubulesSpinner.RoundFractionalValues = 'on';
            app.Spc29NumberofTubulesSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29NumberofTubulesSpinner.HorizontalAlignment = 'center';
            app.Spc29NumberofTubulesSpinner.FontName = 'Arial';
            app.Spc29NumberofTubulesSpinner.Position = [145 32 66 22];
            app.Spc29NumberofTubulesSpinner.Value = 16;

            % Create Spc29LengthnmSpinnerLabel
            app.Spc29LengthnmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29LengthnmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29LengthnmSpinnerLabel.FontName = 'Arial';
            app.Spc29LengthnmSpinnerLabel.Position = [1 135 145 22];
            app.Spc29LengthnmSpinnerLabel.Text = 'Length (nm)';

            % Create Spc29LengthnmSpinner
            app.Spc29LengthnmSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29LengthnmSpinner.LowerLimitInclusive = 'off';
            app.Spc29LengthnmSpinner.UpperLimitInclusive = 'off';
            app.Spc29LengthnmSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29LengthnmSpinner.Limits = [0 Inf];
            app.Spc29LengthnmSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29LengthnmSpinner.HorizontalAlignment = 'center';
            app.Spc29LengthnmSpinner.FontName = 'Arial';
            app.Spc29LengthnmSpinner.Position = [145 135 66 22];
            app.Spc29LengthnmSpinner.Value = 2;

            % Create Spc29DistancetonmSpinnerLabel
            app.Spc29DistancetonmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29DistancetonmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29DistancetonmSpinnerLabel.Position = [18 116 112 22];
            app.Spc29DistancetonmSpinnerLabel.Text = 'Distance to (+) (nm)';

            % Create Spc29DistancetonmSpinner
            app.Spc29DistancetonmSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29DistancetonmSpinner.Step = 10;
            app.Spc29DistancetonmSpinner.UpperLimitInclusive = 'off';
            app.Spc29DistancetonmSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29DistancetonmSpinner.Limits = [0 Inf];
            app.Spc29DistancetonmSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29DistancetonmSpinner.HorizontalAlignment = 'center';
            app.Spc29DistancetonmSpinner.Position = [145 116 66 22];
            app.Spc29DistancetonmSpinner.Value = 350;

            % Create MicrotubuleDiameternmLabel
            app.MicrotubuleDiameternmLabel = uilabel(app.StaticKinetUIFigure);
            app.MicrotubuleDiameternmLabel.HorizontalAlignment = 'center';
            app.MicrotubuleDiameternmLabel.Position = [435 830 148 22];
            app.MicrotubuleDiameternmLabel.Text = 'Microtubule Diameter (nm)';

            % Create MicrotubuleDiameternmSpinner
            app.MicrotubuleDiameternmSpinner = uispinner(app.StaticKinetUIFigure);
            app.MicrotubuleDiameternmSpinner.Step = 5;
            app.MicrotubuleDiameternmSpinner.LowerLimitInclusive = 'off';
            app.MicrotubuleDiameternmSpinner.UpperLimitInclusive = 'off';
            app.MicrotubuleDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.MicrotubuleDiameternmSpinner.Limits = [0 Inf];
            app.MicrotubuleDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.MicrotubuleDiameternmSpinner.HorizontalAlignment = 'center';
            app.MicrotubuleDiameternmSpinner.FontName = 'Arial';
            app.MicrotubuleDiameternmSpinner.Position = [586 830 66 22];
            app.MicrotubuleDiameternmSpinner.Value = 25;

            % Create StructureDiameternmSpinnerLabel
            app.StructureDiameternmSpinnerLabel = uilabel(app.StaticKinetUIFigure);
            app.StructureDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.StructureDiameternmSpinnerLabel.FontName = 'Arial';
            app.StructureDiameternmSpinnerLabel.Position = [17 803 134 22];
            app.StructureDiameternmSpinnerLabel.Text = 'Structure Diameter (nm)';

            % Create StructureDiameternmSpinner
            app.StructureDiameternmSpinner = uispinner(app.StaticKinetUIFigure);
            app.StructureDiameternmSpinner.Step = 10;
            app.StructureDiameternmSpinner.LowerLimitInclusive = 'off';
            app.StructureDiameternmSpinner.UpperLimitInclusive = 'off';
            app.StructureDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.StructureDiameternmSpinner.Limits = [0 Inf];
            app.StructureDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.StructureDiameternmSpinner.HorizontalAlignment = 'center';
            app.StructureDiameternmSpinner.FontName = 'Arial';
            app.StructureDiameternmSpinner.Position = [158 803 67 22];
            app.StructureDiameternmSpinner.Value = 250;

            % Create NumberofChromosomesSpinnerLabel
            app.NumberofChromosomesSpinnerLabel = uilabel(app.StaticKinetUIFigure);
            app.NumberofChromosomesSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberofChromosomesSpinnerLabel.FontName = 'Arial';
            app.NumberofChromosomesSpinnerLabel.Position = [215 830 143 22];
            app.NumberofChromosomesSpinnerLabel.Text = 'Number of Chromosomes';

            % Create NumberofChromosomesSpinner
            app.NumberofChromosomesSpinner = uispinner(app.StaticKinetUIFigure);
            app.NumberofChromosomesSpinner.LowerLimitInclusive = 'off';
            app.NumberofChromosomesSpinner.UpperLimitInclusive = 'off';
            app.NumberofChromosomesSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.NumberofChromosomesSpinner.Limits = [0 Inf];
            app.NumberofChromosomesSpinner.RoundFractionalValues = 'on';
            app.NumberofChromosomesSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.NumberofChromosomesSpinner.HorizontalAlignment = 'center';
            app.NumberofChromosomesSpinner.FontName = 'Arial';
            app.NumberofChromosomesSpinner.Position = [359 830 66 22];
            app.NumberofChromosomesSpinner.Value = 16;

            % Create StaggerDropDownLabel
            app.StaggerDropDownLabel = uilabel(app.StaticKinetUIFigure);
            app.StaggerDropDownLabel.HorizontalAlignment = 'center';
            app.StaggerDropDownLabel.Position = [235 804 48 22];
            app.StaggerDropDownLabel.Text = 'Stagger';

            % Create StaggerDropDown
            app.StaggerDropDown = uidropdown(app.StaticKinetUIFigure);
            app.StaggerDropDown.Items = {'None', 'Random', 'SimuLink Data (Stevens et al.)'};
            app.StaggerDropDown.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.StaggerDropDown.Position = [289 803 187 22];
            app.StaggerDropDown.Value = 'None';

            % Create RangenmSpinnerLabel
            app.RangenmSpinnerLabel = uilabel(app.StaticKinetUIFigure);
            app.RangenmSpinnerLabel.HorizontalAlignment = 'center';
            app.RangenmSpinnerLabel.Visible = 'off';
            app.RangenmSpinnerLabel.Position = [486 800 87 22];
            app.RangenmSpinnerLabel.Text = 'Range +/- (nm)';

            % Create RangenmSpinner
            app.RangenmSpinner = uispinner(app.StaticKinetUIFigure);
            app.RangenmSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.RangenmSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.RangenmSpinner.HorizontalAlignment = 'center';
            app.RangenmSpinner.Visible = 'off';
            app.RangenmSpinner.Position = [575 800 78 22];

            % Create N_Nuf2CheckBox
            app.N_Nuf2CheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.N_Nuf2CheckBox.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2CheckBox.Text = '';
            app.N_Nuf2CheckBox.Position = [232 704 14 23];

            % Create Spc29CheckBox
            app.Spc29CheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.Spc29CheckBox.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29CheckBox.Text = '';
            app.Spc29CheckBox.Position = [430 704 14 23];

            % Create KinetochoreProteinPanel
            app.KinetochoreProteinPanel = uipanel(app.StaticKinetUIFigure);
            app.KinetochoreProteinPanel.BorderType = 'none';
            app.KinetochoreProteinPanel.Title = 'Kinetochore Protein';
            app.KinetochoreProteinPanel.FontSize = 24;
            app.KinetochoreProteinPanel.Position = [540 485 260 244];

            % Create LengthofArmnmSpinnerLabel
            app.LengthofArmnmSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.LengthofArmnmSpinnerLabel.HorizontalAlignment = 'right';
            app.LengthofArmnmSpinnerLabel.Position = [31 121 134 22];
            app.LengthofArmnmSpinnerLabel.Text = 'Length of Arm (nm)';

            % Create LengthofArmnmSpinner
            app.LengthofArmnmSpinner = uispinner(app.KinetochoreProteinPanel);
            app.LengthofArmnmSpinner.Step = 10;
            app.LengthofArmnmSpinner.LowerLimitInclusive = 'off';
            app.LengthofArmnmSpinner.UpperLimitInclusive = 'off';
            app.LengthofArmnmSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.LengthofArmnmSpinner.Limits = [0 Inf];
            app.LengthofArmnmSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.LengthofArmnmSpinner.HorizontalAlignment = 'center';
            app.LengthofArmnmSpinner.Position = [172 121 64 22];
            app.LengthofArmnmSpinner.Value = 70;

            % Create NumberofComplexesSpinnerLabel
            app.NumberofComplexesSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.NumberofComplexesSpinnerLabel.HorizontalAlignment = 'right';
            app.NumberofComplexesSpinnerLabel.Position = [42 179 125 22];
            app.NumberofComplexesSpinnerLabel.Text = 'Number of Complexes';

            % Create NumberofComplexesSpinner
            app.NumberofComplexesSpinner = uispinner(app.KinetochoreProteinPanel);
            app.NumberofComplexesSpinner.UpperLimitInclusive = 'off';
            app.NumberofComplexesSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.NumberofComplexesSpinner.Limits = [0 Inf];
            app.NumberofComplexesSpinner.RoundFractionalValues = 'on';
            app.NumberofComplexesSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.NumberofComplexesSpinner.HorizontalAlignment = 'center';
            app.NumberofComplexesSpinner.Position = [172 179 64 22];
            app.NumberofComplexesSpinner.Value = 8;

            % Create NumberofBoundComplexesSpinnerLabel
            app.NumberofBoundComplexesSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.NumberofBoundComplexesSpinnerLabel.HorizontalAlignment = 'right';
            app.NumberofBoundComplexesSpinnerLabel.Position = [4 158 163 22];
            app.NumberofBoundComplexesSpinnerLabel.Text = 'Number of Bound Complexes';

            % Create NumberofBoundComplexesSpinner
            app.NumberofBoundComplexesSpinner = uispinner(app.KinetochoreProteinPanel);
            app.NumberofBoundComplexesSpinner.UpperLimitInclusive = 'off';
            app.NumberofBoundComplexesSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.NumberofBoundComplexesSpinner.Limits = [0 Inf];
            app.NumberofBoundComplexesSpinner.RoundFractionalValues = 'on';
            app.NumberofBoundComplexesSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.NumberofBoundComplexesSpinner.HorizontalAlignment = 'center';
            app.NumberofBoundComplexesSpinner.Position = [172 158 64 22];
            app.NumberofBoundComplexesSpinner.Value = 8;

            % Create ofLengthMarkedSpinnerLabel
            app.ofLengthMarkedSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.ofLengthMarkedSpinnerLabel.HorizontalAlignment = 'right';
            app.ofLengthMarkedSpinnerLabel.Position = [54 138 113 22];
            app.ofLengthMarkedSpinnerLabel.Text = '% of Length Marked';

            % Create ofLengthMarkedSpinner
            app.ofLengthMarkedSpinner = uispinner(app.KinetochoreProteinPanel);
            app.ofLengthMarkedSpinner.LowerLimitInclusive = 'off';
            app.ofLengthMarkedSpinner.UpperLimitInclusive = 'off';
            app.ofLengthMarkedSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.ofLengthMarkedSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.ofLengthMarkedSpinner.HorizontalAlignment = 'center';
            app.ofLengthMarkedSpinner.Position = [172 138 64 22];
            app.ofLengthMarkedSpinner.Value = 100;

            % Create KinetochoreColorChannelLabel
            app.KinetochoreColorChannelLabel = uilabel(app.KinetochoreProteinPanel);
            app.KinetochoreColorChannelLabel.HorizontalAlignment = 'center';
            app.KinetochoreColorChannelLabel.FontName = 'Arial';
            app.KinetochoreColorChannelLabel.Position = [53 24 91 22];
            app.KinetochoreColorChannelLabel.Text = 'Color Channel';

            % Create KinetochoreColorChannel
            app.KinetochoreColorChannel = uidropdown(app.KinetochoreProteinPanel);
            app.KinetochoreColorChannel.Items = {'All', 'Green', 'Red', 'Blue'};
            app.KinetochoreColorChannel.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.KinetochoreColorChannel.FontName = 'Arial';
            app.KinetochoreColorChannel.Position = [170 25 66 22];
            app.KinetochoreColorChannel.Value = 'Green';

            % Create AnglefromMTAxisdegSpinnerLabel
            app.AnglefromMTAxisdegSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.AnglefromMTAxisdegSpinnerLabel.HorizontalAlignment = 'right';
            app.AnglefromMTAxisdegSpinnerLabel.Position = [23 100 142 22];
            app.AnglefromMTAxisdegSpinnerLabel.Text = 'Angle from MT Axis (deg)';

            % Create AnglefromMTAxisdegSpinner
            app.AnglefromMTAxisdegSpinner = uispinner(app.KinetochoreProteinPanel);
            app.AnglefromMTAxisdegSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.AnglefromMTAxisdegSpinner.Limits = [-180 180];
            app.AnglefromMTAxisdegSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.AnglefromMTAxisdegSpinner.HorizontalAlignment = 'center';
            app.AnglefromMTAxisdegSpinner.Position = [172 100 64 22];

            % Create UpperAngleLabel
            app.UpperAngleLabel = uilabel(app.KinetochoreProteinPanel);
            app.UpperAngleLabel.HorizontalAlignment = 'center';
            app.UpperAngleLabel.Position = [128 52 21 22];
            app.UpperAngleLabel.Text = 'to';

            % Create UpperAngleSpinner
            app.UpperAngleSpinner = uispinner(app.KinetochoreProteinPanel);
            app.UpperAngleSpinner.Step = 5;
            app.UpperAngleSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.UpperAngleSpinner.Limits = [-90 90];
            app.UpperAngleSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.UpperAngleSpinner.HorizontalAlignment = 'center';
            app.UpperAngleSpinner.Position = [160 52 67 22];
            app.UpperAngleSpinner.Value = 90;

            % Create AngleRangeforUnbounddegSpinnerLabel
            app.AngleRangeforUnbounddegSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.AngleRangeforUnbounddegSpinnerLabel.HorizontalAlignment = 'right';
            app.AngleRangeforUnbounddegSpinnerLabel.Position = [50 75 179 22];
            app.AngleRangeforUnbounddegSpinnerLabel.Text = 'Angle Range for Unbound (deg.)';

            % Create LowerAngleSpinner
            app.LowerAngleSpinner = uispinner(app.KinetochoreProteinPanel);
            app.LowerAngleSpinner.Step = 5;
            app.LowerAngleSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.LowerAngleSpinner.Limits = [-90 90];
            app.LowerAngleSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.LowerAngleSpinner.HorizontalAlignment = 'center';
            app.LowerAngleSpinner.Position = [55 52 67 22];
            app.LowerAngleSpinner.Value = -90;

            % Create KinetochoreCheckBox
            app.KinetochoreCheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.KinetochoreCheckBox.ValueChangedFcn = createCallbackFcn(app, @KinetochoreStructureValueChange, true);
            app.KinetochoreCheckBox.Text = '';
            app.KinetochoreCheckBox.Position = [761 704 18 22];

            % Create RotationPanel
            app.RotationPanel = uipanel(app.StaticKinetUIFigure);
            app.RotationPanel.BorderType = 'none';
            app.RotationPanel.Position = [11 744 516 52];

            % Create RotationParametersPanel
            app.RotationParametersPanel = uibuttongroup(app.RotationPanel);
            app.RotationParametersPanel.SelectionChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.RotationParametersPanel.BorderType = 'none';
            app.RotationParametersPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.RotationParametersPanel.HandleVisibility = 'off';
            app.RotationParametersPanel.Position = [1 5 260 30];

            % Create FixedRotationButton
            app.FixedRotationButton = uiradiobutton(app.RotationParametersPanel);
            app.FixedRotationButton.Text = 'Fixed Rotation';
            app.FixedRotationButton.Position = [25 9 99 19];
            app.FixedRotationButton.Value = true;

            % Create RandomRotationButton
            app.RandomRotationButton = uiradiobutton(app.RotationParametersPanel);
            app.RandomRotationButton.Text = 'Random Rotation';
            app.RandomRotationButton.Position = [125 8 115 20];

            % Create RotationCheckBox
            app.RotationCheckBox = uicheckbox(app.RotationPanel);
            app.RotationCheckBox.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.RotationCheckBox.Text = '';
            app.RotationCheckBox.Position = [161 32 16 21];

            % Create RotationLabel
            app.RotationLabel = uilabel(app.RotationPanel);
            app.RotationLabel.FontSize = 14;
            app.RotationLabel.Position = [102 31 58 22];
            app.RotationLabel.Text = 'Rotation';

            % Create RandomRotationParametersdegPanel
            app.RandomRotationParametersdegPanel = uipanel(app.RotationPanel);
            app.RandomRotationParametersdegPanel.BorderType = 'none';
            app.RandomRotationParametersdegPanel.TitlePosition = 'centertop';
            app.RandomRotationParametersdegPanel.Title = 'Random Rotation Parameters (deg.)';
            app.RandomRotationParametersdegPanel.Position = [254 2 233 51];

            % Create LowLimSpinnerLabel
            app.LowLimSpinnerLabel = uilabel(app.RandomRotationParametersdegPanel);
            app.LowLimSpinnerLabel.HorizontalAlignment = 'center';
            app.LowLimSpinnerLabel.Position = [2 3 56 22];
            app.LowLimSpinnerLabel.Text = 'Low. Lim.';

            % Create LowLimSpinner
            app.LowLimSpinner = uispinner(app.RandomRotationParametersdegPanel);
            app.LowLimSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.LowLimSpinner.Limits = [0 360];
            app.LowLimSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.LowLimSpinner.HorizontalAlignment = 'center';
            app.LowLimSpinner.Position = [63 3 51 22];

            % Create UpLimSpinnerLabel
            app.UpLimSpinnerLabel = uilabel(app.RandomRotationParametersdegPanel);
            app.UpLimSpinnerLabel.HorizontalAlignment = 'center';
            app.UpLimSpinnerLabel.Position = [128 3 50 22];
            app.UpLimSpinnerLabel.Text = 'Up. Lim.';

            % Create UpLimSpinner
            app.UpLimSpinner = uispinner(app.RandomRotationParametersdegPanel);
            app.UpLimSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.UpLimSpinner.Limits = [0 360];
            app.UpLimSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.UpLimSpinner.HorizontalAlignment = 'center';
            app.UpLimSpinner.Position = [178 3 52 22];

            % Create FixedRotationParametersdegPanel
            app.FixedRotationParametersdegPanel = uipanel(app.RotationPanel);
            app.FixedRotationParametersdegPanel.BorderType = 'none';
            app.FixedRotationParametersdegPanel.TitlePosition = 'centertop';
            app.FixedRotationParametersdegPanel.Title = 'Fixed Rotation Parameters (deg.)';
            app.FixedRotationParametersdegPanel.Position = [253 2 233 51];

            % Create XSpinnerLabel
            app.XSpinnerLabel = uilabel(app.FixedRotationParametersdegPanel);
            app.XSpinnerLabel.HorizontalAlignment = 'right';
            app.XSpinnerLabel.FontName = 'Arial';
            app.XSpinnerLabel.Position = [10 4 10 22];
            app.XSpinnerLabel.Text = 'X';

            % Create XSpinner
            app.XSpinner = uispinner(app.FixedRotationParametersdegPanel);
            app.XSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.XSpinner.Limits = [0 360];
            app.XSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.XSpinner.HorizontalAlignment = 'center';
            app.XSpinner.FontName = 'Arial';
            app.XSpinner.Position = [23 4 51 22];

            % Create YSpinnerLabel
            app.YSpinnerLabel = uilabel(app.FixedRotationParametersdegPanel);
            app.YSpinnerLabel.HorizontalAlignment = 'right';
            app.YSpinnerLabel.FontName = 'Arial';
            app.YSpinnerLabel.Position = [88 4 10 22];
            app.YSpinnerLabel.Text = 'Y';

            % Create YSpinner
            app.YSpinner = uispinner(app.FixedRotationParametersdegPanel);
            app.YSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.YSpinner.Limits = [0 360];
            app.YSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.YSpinner.HorizontalAlignment = 'center';
            app.YSpinner.FontName = 'Arial';
            app.YSpinner.Position = [101 4 51 22];

            % Create ZSpinnerLabel
            app.ZSpinnerLabel = uilabel(app.FixedRotationParametersdegPanel);
            app.ZSpinnerLabel.HorizontalAlignment = 'right';
            app.ZSpinnerLabel.FontName = 'Arial';
            app.ZSpinnerLabel.Position = [165 4 10 22];
            app.ZSpinnerLabel.Text = 'Z';

            % Create ZSpinner
            app.ZSpinner = uispinner(app.FixedRotationParametersdegPanel);
            app.ZSpinner.ValueChangingFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.ZSpinner.Limits = [0 360];
            app.ZSpinner.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.ZSpinner.HorizontalAlignment = 'center';
            app.ZSpinner.FontName = 'Arial';
            app.ZSpinner.Position = [178 4 51 22];

            % Create EasyAlignCheckBox
            app.EasyAlignCheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.EasyAlignCheckBox.ValueChangedFcn = createCallbackFcn(app, @EasyAlignCheckBoxValueChanged, true);
            app.EasyAlignCheckBox.Text = 'Easy Align';
            app.EasyAlignCheckBox.Position = [667 830 79 22];
        end
    end

    methods (Access = public)

        % Construct app
        function app = StaticKinet

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.StaticKinetUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.StaticKinetUIFigure)
        end
    end
end