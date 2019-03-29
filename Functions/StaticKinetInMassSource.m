classdef StaticKinetInMass < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        StaticKinetinMassUIFigure       matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        QuitMenu                        matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        BloomLabWebsiteMenu             matlab.ui.container.Menu
        OtherProgramsMenu               matlab.ui.container.Menu
        GitHubMenu                      matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        DocumentationMenu               matlab.ui.container.Menu
        OutputPanel                     matlab.ui.container.Panel
        FileFolderNameStringEditFieldLabel  matlab.ui.control.Label
        FileFolderNameStringEditField   matlab.ui.control.EditField
        MicroscopeSimulatorParametersPanel  matlab.ui.container.Panel
        GainEditFieldLabel              matlab.ui.control.Label
        GainEditField                   matlab.ui.control.NumericEditField
        OffsetEditFieldLabel            matlab.ui.control.Label
        OffsetEditField                 matlab.ui.control.NumericEditField
        GaussianNoiseSDEditFieldLabel   matlab.ui.control.Label
        GaussianNoiseSDEditField        matlab.ui.control.NumericEditField
        MaxVoxelIntensityEditFieldLabel  matlab.ui.control.Label
        MaxVoxelIntensityEditField      matlab.ui.control.NumericEditField
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
        StatusOutputPanel               matlab.ui.container.Panel
        GenerateOutputButton            matlab.ui.control.Button
        StatusEditFieldLabel            matlab.ui.control.Label
        StatusEditField                 matlab.ui.control.EditField
        GenerateTIFsCheckBox            matlab.ui.control.CheckBox
        PreProcessTIFsCheckBox          matlab.ui.control.CheckBox
        EmailEditFieldLabel             matlab.ui.control.Label
        EmailEditField                  matlab.ui.control.EditField
        NumberotXMLstoGenerateSpinnerLabel  matlab.ui.control.Label
        NumberofXMLstoGenerateSpinner   matlab.ui.control.Spinner
        N_Nuf2StructurePanel            matlab.ui.container.Panel
        N_Nuf2NumberofFluorophoreSpinnerLabel  matlab.ui.control.Label
        N_Nuf2NumberofFluorophoreSpinner  matlab.ui.control.Spinner
        N_Nuf2LengthnmSpinnerLabel      matlab.ui.control.Label
        N_Nuf2LengthnmSpinner           matlab.ui.control.Spinner
        N_Nuf2ColorChannelDropDownLabel  matlab.ui.control.Label
        N_Nuf2ColorChannelDropDown      matlab.ui.control.DropDown
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
        N_Nuf2CheckBox                  matlab.ui.control.CheckBox
        Spc29CheckBox                   matlab.ui.control.CheckBox
        KinetochoreProteinPanel         matlab.ui.container.Panel
        LengthofArmnmSpinnerLabel       matlab.ui.control.Label
        LengthofArmnmSpinner            matlab.ui.control.Spinner
        NumberofComplexesSpinnerLabel   matlab.ui.control.Label
        NumberofComplexesSpinner        matlab.ui.control.Spinner
        NumberofBoundComplexesSpinnerLabel  matlab.ui.control.Label
        NumberofBoundComplexesSpinner   matlab.ui.control.Spinner
        UpperAngleLabel                 matlab.ui.control.Label
        UpperAngleSpinner               matlab.ui.control.Spinner
        ofLengthMarkedSpinnerLabel      matlab.ui.control.Label
        ofLengthMarkedSpinner           matlab.ui.control.Spinner
        AnglefromMTAxisnmSpinnerLabel   matlab.ui.control.Label
        AnglefromMTAxisnmSpinner        matlab.ui.control.Spinner
        AngleRangeforUnbounddegSpinnerLabel  matlab.ui.control.Label
        LowerAngleSpinner               matlab.ui.control.Spinner
        KinetochoreColorChannelLabel    matlab.ui.control.Label
        KinetochoreColorChannel         matlab.ui.control.DropDown
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
        MicrotubuleDiameternmSpinnerLabel  matlab.ui.control.Label
        MicrotubuleDiameternmSpinner    matlab.ui.control.Spinner
        StructureDiameternmSpinnerLabel  matlab.ui.control.Label
        StructureDiameternmSpinner      matlab.ui.control.Spinner
        NumberofChromosomesSpinnerLabel  matlab.ui.control.Label
        NumberofChromosomesSpinner      matlab.ui.control.Spinner
        StaggerDropDownLabel            matlab.ui.control.Label
        StaggerDropDown                 matlab.ui.control.DropDown
        RangenmSpinnerLabel             matlab.ui.control.Label
        RangenmSpinner                  matlab.ui.control.Spinner
        NumberofComplexesSwitchLabel    matlab.ui.control.Label
        NumberofComplexesSwitch         matlab.ui.control.Switch
    end

    properties (Access = public)
        N_Nuf2PointInfo % Contains information about the points that make up the N_Nuf2 structure
        KinetochorePointInfo % Contains information about the points that make up the kinetochore complex
        Spc29PointInfo % Continas information about the points that make up the Spc29 structure
        MasterPointInfo % Contains information about the points that make up the entire simulation
        LengthSim % Array of possible stagger lengths acquired from running Coupled Model Crosslinked Simulation by Stevens et al.
        BioDistances % Array that contains distances of complexes that were acquired from experimental images
        BioDistanceCorrection % Distance choosen from the BioDistances array that all of the structure generators use when the number of complexes are set to 2.
        Rotation % An array of randomized rotation values based on the given parameters that the structure generators use if rotation is needed
        Stagger % An array of values that represent stagger, either from Stevens et al. or random, that the structure generators use if a stagger is needed
        CurrentErrorMessage % String for the error message that would be sent if code were to crash at a given time
    end

    methods (Access = public)
        function GeneralParameterCheck(app) 
            % GENERALPARAMETERCHECK Check for all of the parameters and changes to the app based on those parameters
            
            MainParameterCheck(app) 
            KinetochoreParameterCheck(app)
            OutputParameterCheck(app)
        end
    
        function MainParameterCheck(app)
            % MAINPARAMTERCHECK Check the parameters of the main structure and associated changes to the app
            
            if strcmp(app.StaggerDropDown.Value, 'Random') % Make the spinner to control max range for random stagger visible if 'Random' is chosen
                app.RangenmSpinner.Visible = "on";
                app.RangenmSpinnerLabel.Visible = "on";
            else
                app.RangenmSpinner.Visible = "off";
                app.RangenmSpinnerLabel.Visible = "off";
            end  
            if app.RotationCheckBox.Value == false % Make the Rotation control panel visible is Rotation is selected
                app.RotationParametersPanel.Visible = 'off';
                app.FixedRotationParametersdegPanel.Visible = 'off';
                app.RandomRotationParametersdegPanel.Visible = 'off';
            else
                app.RotationParametersPanel.Visible = 'on'; % Change Fixed vs Random rotation panel depending on selection
                if app.FixedRotationButton.Value == true
                    app.FixedRotationParametersdegPanel.Visible = 'on';
                    app.RandomRotationParametersdegPanel.Visible = 'off';
                else
                    app.FixedRotationParametersdegPanel.Visible = 'off';
                    app.RandomRotationParametersdegPanel.Visible = 'on';
                end
            end
        end
            
        function KinetochoreParameterCheck(app)
            % KINETOCHOREPARAMETERCHECK Check the parameters for the kinetochore complex structure
            
            if app.NumberofComplexesSpinner.Value < app.NumberofBoundComplexesSpinner.Value % Set the number of bound complexes = total number of complexes if user makes bound > total
                app.NumberofBoundComplexesSpinner.Value = app.NumberofComplexesSpinner.Value;
            end
            if app.LowerAngleSpinner.Value > app.UpperAngleSpinner.Value % If Upper angle limit is smaller than Lower angle limit, flip their values
                [app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value] = deal(app.LowerAngleSpinner.Value,app.UpperAngleSpinner.Value);
            end
        end
    
        function OutputParameterCheck(app)
            % OUTPUTPARAMETERCHECK Check the parameters for the output conditions and values
            
            if isempty(app.FileFolderNameStringEditField.Value) %Make output button unavailable if no filename is given
                app.GenerateOutputButton.Enable = "off";
            else
                app.GenerateOutputButton.Enable = "on";
            end
            if app.GenerateTIFsCheckBox.Value == true %Make Preprocess check box available if the Generate TIF box is checked
                app.PreProcessTIFsCheckBox.Enable = "on";
            else
                app.PreProcessTIFsCheckBox.Enable = "off";
            end                
        end
    
        function SaveBioDistanceData(app)
            % SAVEBIODISTANCEDATA Save massive array of vectors that connect the center points of opposing spindle complexes, which were acquired from experimental data
            
            app.BioDistances = [-192,-1344,-640,-256,-576,-192,-768,192,-448,-1920,-512,-576,-960,-832,-128,-896,-512,-256,-704,-704,-256,-512,-256,-832,-1216,-64,-576,-768,-1024,-256,-768,-256,0,-960,-1088,-640,-832,-1024,-768,-1088,-704,-1216,-1408,-832,-896,-704,-320,-896,-512,-512,-1024,-832,-448,-256,-640,-256,-768,-576,192,-192,-384,-640,-768,-960,-768,64,-320,-704,-448,-192,-128,64,-640,-640,-448,-832,-832,-832,-960,-384,-128,-1152,-128,-256,-256,-384,-576,-896,-576,-768,-896,-640,-1024,-832,-896,-704,-320,-896,-512,-512,-192,-768,-768,-512,-960,-576,-448,-1728,-1088,128,-704,-256,-256,-832,-64,-1728,-192,-640,-1088,-832,-960,-704,-256,-1024,-960,-1152,-768,-1024,-384,-64,-512,-512,64,-640,-832,-512,-576,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0,-640,-768,-704,-256,-192,64,-192,256,-1152,-832,-640,-576,-576,-128,-896,-384,0,-320,-320,-448,-320,-128,-896,-1280,-448,-512,-448,-896,-832,-576,-1152,-320,-832,-256,-576,-512,-128,-704,-320,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0,-640,-768,0,-1024,-896,-1344,-1600,-256,128,-1216,-704,128,-1216,-960,-768,-832,-832,-320,-640,-640,0,-704,64,-896,-320,-768,-1024,-1216,-768,-448,-832,-960,-960,128,-960,-704,-256,-256,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-1152,0,-320,-320,-448,-704,-704,-512,-1408,-1088,-576,-128,0,-1024,128,-1152,-192,-320,-576,-384,-128,64,-704,-1024,-384,-320,-1024,-832,-448,-1152,-640,-832,-704,-192,-832,128,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-576,-768,-576,-256,-320,-512,-448,-128,-1344,-960,-1024,-128,-832,-1024,-704,-384,-1728,-832,-640,-1024,-1152,-256,-256,-448,-512,-768,-448,-512,-1600,-1216,-448,-512,-768,-768,-320,-448,-896,192,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-1216,-704,-576,-512,-768,-1088,-256,-1152,-384,-384,-896,-832,-576,-448,-576,-640,128,-896,-384,-512,-704,-960,-960,-1152,-384,-576,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,128,-1152,-128,-1024,-128,-832,-192,-256,320,-448,-1344,-832,-1216,-512,-768,64,-576,-960,-896,-512,-1024,192,-1280,-192,-832,64,-768,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-1024,-768,-960,64,-1024,-320,128,-256,-512,-192,64,-192,-320,-448,-896,0,-1216,-960,-768,-576,-576,-192,-1216,-512,-1280,-384,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-960,192,-128,-1152,-640,-448,-384,-192,-640,-64,-704,-1024,-704,-640,-1216,-704,-512,-256,-512,-640,-256,-704,-256,-832,-704,-576,-256,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-192,-448,128,-192,-192,-384,-192,-576,-1280,-448,-1280,-384,-576,-960,-320,-128,-64,-896,-896,-512,-384,0,-192,-640,-640,-384,-384,-320,-640,-128,-960,-960,-576,-384,-320,-448,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-832,-384,-320,64,-960,-1024,256,-832,-768,-320,-768,-576,-64,0,-448,-960,-1088,-384,-192,-640,-256,-1472,-1216,-640,-192,-448,-512,-256,-448,-768,-960,-384,-448,-320,-576,-960,-1024,-320,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,128,-832,-384,-256,-1024,-384,-640,-256,-832,64,-896,64,-640,-320,-704,-320,-1024,-576,-960,0,-1088,-832,-192,-1088,-1024,-512,-640,-832,-256,-960,-512,-640,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-1088,-384,-1088,-192,-512,-960,-320,-960,-704,-512,-960,-64,-320,-128,-704,-640,-1152,-256,-576,-768,-512,-256,-1152,-704,-896,-512,-384,-576,128,128,-704,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-576,-1024,-704,-768,-768,-640,-448,-1280,-1024,-704,-896,-1728,-256,-512,-1024,-64,-384,-128,-1024,-576,-832,-128,-320,-832,-640,64,-256,-384,-192,-768,-704,-960,-64,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-640,-640,-448,-128,-704,-448,-768,-1216,-448,-832,-192,-832,-384,-832,-768,-704,-448,-640,128,64,-448,-640,-768,-64,-704,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-768,-448,-384,-1152,192,-896,-384,-960,-384,-704,-512,-512,-192,-128,-832,-448,-1024,-256,-128,-576,-256,-192,-192,-832,-192,-1216,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-1152,-832,-640,-256,-1088,-512,-384,-1280,-320,-512,-256,-384,-1280,-1024,-896,-1216,-640,-640,-640,-1024,128,-256,-1856,-128,-1088,-512,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-960,-512,-192,128,-384,-960,-256,-128,-448,-640,-576,-960,-576,-896,-1024,-512,128,-960,-640,-640,-896,-512,-768,-128,-256,-896,-320,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-192,-128,-1024,-1344,-896,-320,-576,-768,-384,-832,-576,-128,-320,-512,-896,-1600,-256,-256,-448,-256,-704,-1216,-1280,128,-1088,-704,-1088,-512,-256,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-704,-576,-1280,-1536,-448,-768,-1344,-192,-768,-896,-448,-1088,-768,-256,-1408,-704,-1088,-640,-640,-640,-1152,-1216,-1152,-768,-128,-576,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-832,-512,-384,-704,-256,-704,-768,-768,-384,-1344,-832,-64,-704,-256,-576,-768,0,-832,-1152,-768,-704,-704,-768,-1024,-960,-128,-960,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768;-960,-192,-384,1536,-384,-960,640,-1280,-448,-128,576,-768,1216,128,-1024,448,-384,-1344,-64,-640,-768,832,-832,512,704,-704,0,-896,-448,640,256,576,-384,64,-64,640,256,-1088,64,-64,1216,-768,-192,512,704,-1280,704,384,576,1088,832,-896,768,576,0,-576,704,-64,-640,-960,1024,-640,384,-384,-64,-1280,-1088,512,-384,-512,-896,-960,-1024,448,832,0,0,576,64,-1344,832,-256,-512,512,-1408,-1408,576,448,1024,384,128,-576,-576,512,704,-1280,704,384,576,1088,1216,-192,320,0,-640,512,960,256,768,-576,1088,1280,-960,1280,-1024,-64,704,-448,128,384,448,320,-1088,64,832,128,640,512,640,-640,704,-128,-960,320,-640,-704,-512,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-1152,-704,-640,-832,-768,-1408,1088,448,384,-704,0,704,-704,576,-576,640,1024,-512,768,-1088,576,-576,960,384,448,-192,320,-704,-384,448,64,-1088,320,256,448,192,704,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-896,-448,448,448,512,960,-768,-256,704,-1024,64,-64,-512,448,512,448,0,-1152,-768,-384,-640,704,-768,-448,-256,-128,960,1088,320,64,-256,-832,576,64,448,640,-576,832,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-704,-704,-1088,704,-192,-1408,-704,-576,-128,-64,-448,-960,-896,-512,-1152,192,576,832,256,-320,-448,-448,960,64,1024,1088,-832,-1216,-448,-448,768,-192,1088,-448,-64,-576,-576,832,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,256,-832,960,-640,1152,1088,576,-1280,-256,64,-128,448,-832,-512,320,1408,0,-576,320,320,-512,768,-1216,-704,-768,-576,1408,704,-64,-256,1216,768,-640,576,-896,-128,-1152,-960,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1216,64,-448,-384,960,128,64,704,-1216,1344,832,-64,64,-1152,-512,0,384,-1280,-320,-1088,-1024,-384,768,256,-128,448,320,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,-448,-1280,-64,1024,1088,-576,768,-960,-1088,-192,64,-256,768,384,-1216,384,384,-960,576,-64,-768,-256,-448,-320,-960,704,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-320,64,-576,-128,-768,-576,1536,-1088,-1088,640,576,-896,-576,-1024,768,-256,-896,384,0,-128,-192,1024,-896,128,448,-1024,-512,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,-896,960,960,1280,-832,704,704,256,-640,512,192,960,768,-704,-704,-896,-1216,-576,-704,-1024,64,-576,960,576,-896,-832,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-960,960,-384,-448,-704,576,448,-768,128,192,384,320,-576,1024,-64,1024,-1024,-576,384,-448,-640,896,-704,-640,-1088,256,-704,512,576,832,384,-448,384,-192,576,1472,384,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,512,-448,448,-512,64,704,-1216,-1088,640,-512,-768,448,-704,768,1152,-320,-448,576,-384,576,256,896,-768,-384,576,-640,-64,-1024,704,-768,256,-896,-512,960,-448,-960,-832,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1024,768,1152,896,-192,-640,0,-704,-448,-640,256,-896,-704,-768,-576,-832,-576,-192,-320,-640,384,-576,832,576,192,1280,640,128,-960,-576,-1152,-832,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,640,-832,448,-832,-768,1024,960,-448,-512,-832,-512,1088,-896,-1344,-1024,576,960,-448,-960,1536,-832,-576,-960,192,640,384,-320,704,-320,-1152,-960,448,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,576,-512,-832,-384,1280,-704,0,-448,-128,1280,-512,-1088,-1664,-640,-896,1088,-640,-320,-832,-512,960,-1920,-64,-384,-1088,-768,896,832,-448,-640,-640,-576,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,0,832,1280,-448,-704,192,640,128,320,-384,576,640,832,-576,-1024,512,256,-1088,576,-896,-832,-1088,1088,-64,-704,-896,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,512,-512,64,-832,-768,-512,640,1216,960,832,-640,384,1024,-896,-128,1024,576,448,576,-768,-768,640,832,-128,-832,256,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,-192,512,1408,576,64,320,-320,384,640,-192,-576,192,256,320,-768,-576,-256,704,-192,256,-960,1024,640,-768,-1152,320,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,1152,-576,-1088,1024,192,-512,-896,640,-256,-448,-256,384,-320,-576,960,-960,0,64,-832,-192,-768,-384,-448,-1024,192,-896,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,576,-1408,128,320,448,-704,-832,-256,896,128,-512,-832,704,-320,-320,-192,1088,-1664,640,1408,256,128,576,-640,576,-64,832,448,768,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-896,320,832,-256,896,576,-832,384,-832,1280,576,768,-1152,-384,-576,64,-448,192,-256,-192,576,384,704,320,256,832,704,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,704,-1088,896,-768,-1216,-384,448,-704,64,640,-704,-704,1280,576,-512,-960,-448,128,0,64,192,192,1408,-1600,1216,-1216,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832;0,-300,0,0,0,0,-1200,-300,-900,-300,0,0,-300,300,0,600,0,300,-300,0,0,0,0,0,0,0,600,0,-600,0,0,300,600,300,0,600,0,-300,300,0,-300,0,0,-900,-300,-600,600,-600,0,-300,0,900,-300,0,0,0,300,0,-300,300,0,600,0,0,0,300,600,-600,300,-600,-300,300,300,600,-1200,0,300,0,0,900,-300,0,0,-900,0,300,-300,-300,-300,0,600,-300,0,-900,-300,-600,600,-600,0,-300,300,0,0,0,0,0,0,0,300,0,-300,-900,0,-300,0,-600,300,600,300,0,300,0,300,-300,300,300,600,0,-600,-600,-300,0,0,300,0,-900,600,0,-600,-900,600,600,-600,0,0,-300,0,-600,0,-300,0,300,-600,0,-600,-300,-300,0,0,0,0,300,-300,0,300,-600,0,0,0,0,0,0,0,600,-300,0,300,-300,300,300,300,0,300,0,600,600,600,-600,600,0,-300,-300,0,0,-600,-900,600,600,-600,0,0,-300,0,-600,0,-300,0,300,-600,0,-600,-300,300,0,0,-900,0,0,600,0,0,-600,0,0,300,0,-600,300,300,-600,0,0,-300,-300,0,0,0,600,0,-1800,0,300,300,0,0,0,-300,0,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,300,900,0,300,0,300,-600,0,-900,-300,0,0,0,-300,0,-300,-300,300,-900,600,0,-300,0,0,-900,600,-300,300,-300,300,-300,300,300,-300,-300,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,900,-600,0,300,0,0,300,300,300,-300,600,300,-300,300,0,-300,300,300,0,0,-300,0,300,-300,-300,0,0,300,300,-300,600,-300,300,-300,0,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-900,600,-600,0,0,-600,0,0,0,-300,0,0,0,300,0,0,0,-600,300,0,-600,-300,-600,300,-300,0,600,600,300,1200,-300,0,-900,-600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,-300,-300,-300,-300,0,-300,0,300,0,0,0,0,300,300,0,-300,600,-300,300,0,600,300,0,0,0,0,600,300,1200,-300,0,-900,-600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-900,0,300,0,0,0,0,0,-300,300,-300,0,900,-1200,-300,-300,0,0,600,900,300,300,300,-600,-300,0,-900,0,0,-300,-600,300,600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,0,-300,0,0,0,300,-300,0,0,0,0,600,300,-300,0,-600,0,-900,-300,-600,-300,0,-300,0,-300,-300,-900,0,0,-300,-600,300,600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-600,0,300,-600,0,300,900,-600,-600,-300,0,0,300,0,-900,0,0,0,-600,0,-300,0,0,0,-300,-600,300,0,0,-300,0,600,-600,-600,0,600,0,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,600,0,600,0,900,0,300,0,0,-300,0,0,0,-900,600,-600,900,-300,-300,300,0,0,0,-300,300,300,600,0,-900,0,-300,-300,0,300,0,0,0,0,-600,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-600,0,-900,600,0,0,0,0,-300,0,-300,600,0,0,-300,300,0,300,0,0,0,-300,0,300,0,-900,1500,-300,0,600,-300,300,0,300,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-600,-300,-300,600,600,0,-300,-300,0,0,0,0,-300,0,-300,0,-300,0,0,-300,-300,-600,-900,-600,-600,0,-300,0,600,300,0,0,300,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-300,-600,0,300,600,300,0,0,-600,0,0,0,-600,0,300,0,-600,0,0,0,-600,600,-600,0,300,0,0,0,-300,0,0,-300,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,600,-300,300,600,-300,-1500,0,900,0,0,-900,-300,-300,0,0,0,300,300,0,-300,0,0,0,-300,-900,0,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-600,300,0,300,300,0,-300,-600,0,0,600,0,0,-300,-600,300,0,300,0,0,-300,300,0,-300,0,0,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,300,0,0,300,0,-300,0,0,600,-300,0,-300,-300,0,-900,0,-300,0,300,-600,0,0,-600,900,600,300,-600,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,0,-300,300,300,0,0,0,0,0,-300,-300,0,0,0,-600,0,0,0,0,0,300,0,0,600,-600,0,-600,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,0,-300,-300,-600,-600,0,300,-300,0,300,0,-600,300,0,-300,0,600,0,300,0,1200,-300,0,0,600,-600,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,600,-300,-300,-300,300,0,0,300,0,600,-600,0,0,-600,0,0,-600,0,300,0,0,900,-300,0,-600,600,-300,0,-300,-300,0,0,-300,600,-900,300,0,0,-300,-600,-300,300,600,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,600,300,-300,-600,300,600,0,0,0,-300,0,0,0,600,-600,900,-600,0,0,300,-300,300,-600,0,300,600,0,-300,-300,0,0,-300,600,-900,300,0,0,-300,-600,-300,300,600,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300];
        end
 
        function GenerateSimuLinkData(app)
            % GENERATESIMULINKDATA Caculate and save staggering for microtubule ends based on Stevens et al.
            
            sim([pwd filesep 'Functions' filesep 'SimulinkFunctions' filesep 'Coupled_Model_crosslinked_intext.slx'])
            app.LengthSim = kMtsOut(500:end,:);
        end
    
        function CalculateData(app)
            % CALCULATEDATA Calculate all the structures and add selected ones to the master list to be written out
            
            StructureCalculate(app) % Calculate 3D points for all structures based on given parameters
            app.MasterPointInfo.CoordPoints = [];
            app.MasterPointInfo.Color = [];
            if app.N_Nuf2CheckBox.Value == true % If Nuf2 box is checked, add its values and colors to the master list
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.N_Nuf2PointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.N_Nuf2PointInfo.Color);
            end
            if app.Spc29CheckBox.Value == true % If Spc29 box is checked, add its values and colors to the master list
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.Spc29PointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.Spc29PointInfo.Color);
            end
            if app.KinetochoreCheckBox.Value == true % If kinetochore box is checked, add its values and colors to the master list
                app.MasterPointInfo.CoordPoints = horzcat(app.MasterPointInfo.CoordPoints, app.KinetochorePointInfo.CoordPoints);
                app.MasterPointInfo.Color = horzcat(app.MasterPointInfo.Color, app.KinetochorePointInfo.Color);
            end
        end
    
        function StructureCalculate(app)
            % STRUCTURECALCULATE Calculate the [X;Y;Z] coordinates for all of the structures
            
            UpdateRandomVariables(app) 
            N_Nuf2Calculate(app)
            KinetochoreCalculate(app)
            Spc29Calculate(app)
        end
    
        function UpdateRandomVariables(app)
            % UPDATERANDOMVARIABLES Calculate and update random variables if requested by parameters
            
            app.BioDistanceCorrection = app.BioDistances(:,ceil(rand()*length(app.BioDistances)))/2; % Calculate the spindle distance correction by randomly choosing a vector and dividing it by 2
            if strcmp(app.NumberofComplexesSwitch.Value, '1')
                NoC = 1;
            else
                NoC = 2;
            end
            if app.RotationCheckBox.Value == true % Calculate possible splay if chosen
                app.Rotation = rand(app.NumberofChromosomesSpinner.Value*NoC,3);
                if app.FixedRotationButton.Value == true
                    app.Rotation(:,1) = app.XSpinner.Value;
                    app.Rotation(:,2) = app.YSpinner.Value;
                    app.Rotation(:,3) = app.ZSpinner.Value;
                else
                    rangediff = app.UpLimSpinner.Value - app.LowLimSpinner.Value;
                    app.Rotation = app.Rotation*rangediff + app.LowLimSpinner.Value;
                end
            end
            if ~strcmp(app.StaggerDropDown.Value, 'None') % Calculate possible stagger, if any, based on the drop down selection
                if strcmp(app.StaggerDropDown.Value, 'Random')
                    app.Stagger = (rand(1,app.NumberofChromosomesSpinner.Value*NoC)-0.5)*(app.RangenmSpinner.Value*2);
                else
                    app.Stagger = (app.LengthSim(ceil(rand(1,app.NumberofChromosomesSpinner.Value*NoC)*size(app.LengthSim,1)),ceil(rand(1,app.NumberofChromosomesSpinner.Value*NoC)*size(app.LengthSim,2)))-3.5e-07)*1e9;
                end
            end
        end

        function N_Nuf2Calculate(app)
            % N_NUF2CALCULATE Calculate the Nuf2 coordinates, depending on the number of complexes, and create an array of the color used
            
            if strcmp(app.NumberofComplexesSwitch.Value, '1')
                N_Nuf2Structure1(app)
            else
                N_Nuf2Structure2(app)
            end
            app.N_Nuf2PointInfo.Color = repmat(convertCharsToStrings(app.N_Nuf2ColorChannelDropDown.Value),1,size(app.N_Nuf2PointInfo.CoordPoints,2));
        end
        
        function N_Nuf2Structure1(app) 
            % N_NUF2STRUCTURE1 Calculate the coordinates for Nuf2 in 1 complex
            
            RotationCheck = (strcmp(app.RotationParametersPanel.Visible,'on')) & (app.RotationCheckBox.Value == true);
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck);
        end
    
        function N_Nuf2Structure2(app)
            % N_NUF2STRUCTURE1 Calculate the coordinates for Nuf2 in 2 complexs
            
            RotationCheck = (strcmp(app.RotationParametersPanel.Visible,'on')) & (app.RotationCheckBox.Value == true);
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck); % Calculate the Nuf2 coordinates for the 1st complex
            app.N_Nuf2PointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints) - app.BioDistanceCorrection; % Rotate based on the BioDistanceCorrection vector and offset from the center
            app.N_Nuf2PointInfo.CoordPoints2 = StructurePointsGenerate(app,1+app.NumberofChromosomesSpinner.Value,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,RotationCheck); % Calculate the Nuf2 coordinates for the 2nd complex
            app.N_Nuf2PointInfo.CoordPoints2 = (RotationMatrixGenerate(app,-app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints2) + app.BioDistanceCorrection; % Rotate based on the negative of the BioDistanceCorrection vector and offset from the center
            app.N_Nuf2PointInfo.CoordPoints = horzcat(app.N_Nuf2PointInfo.CoordPoints, app.N_Nuf2PointInfo.CoordPoints2); % Combine 1st and 2nd complex coordiante variables into 1
        end
    
        function KinetochoreCalculate(app)
            % KINETOCHORECALCULATE Calculate the kinetochore coordinates, depending on the number of complexes, and create an array of the color used
            
            if strcmp(app.NumberofComplexesSwitch.Value, '1')
                KinetochoreStructure1(app)
            else
                KinetochoreStructure2(app)
            end
            app.KinetochorePointInfo.Color = repmat(convertCharsToStrings(app.KinetochoreColorChannel.Value),1,size(app.KinetochorePointInfo.CoordPoints,2));
        end
    
        function KinetochoreStructure1(app)
            % KINETOCHORESTRUCTURE1 Calculate the coordinates for kinetochore in 1 complex
            
            app.KinetochorePointInfo.CoordPoints = KinetochoreGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value);
        end
    
        function KinetochoreStructure2(app)
            % KINETOCHORESTRUCTURE2 Calculate the coordinates for kinetochore in 2 complexs
            
            app.KinetochorePointInfo.CoordPoints = KinetochoreGenerate(app,1,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value); % Calculate the coordinates for the 1st kinetochore complex
            app.KinetochorePointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.KinetochorePointInfo.CoordPoints) - app.BioDistanceCorrection; % Rotate based on the BioDistanceCorrection vector and offest from the center
            app.KinetochorePointInfo.CoordPoints2 = KinetochoreGenerate(app,1+app.NumberofChromosomesSpinner.Value,app.NumberofChromosomesSpinner.Value,app.StaggerDropDown.Value,app.StructureDiameternmSpinner.Value,app.NumberofComplexesSpinner.Value,cosd(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,sind(app.AnglefromMTAxisnmSpinner.Value)*app.LengthofArmnmSpinner.Value,app.NumberofBoundComplexesSpinner.Value,app.MicrotubuleDiameternmSpinner.Value,app.ofLengthMarkedSpinner.Value,app.LengthofArmnmSpinner.Value,app.UpperAngleSpinner.Value,app.LowerAngleSpinner.Value); % Calculate the coordinates for the 2nd kinetochore complex
            app.KinetochorePointInfo.CoordPoints2 = (RotationMatrixGenerate(app,-app.BioDistanceCorrection)*app.KinetochorePointInfo.CoordPoints2) + app.BioDistanceCorrection; % Rotate based on the negative of the BioDistanceCorrection vector and offset from the center
            app.KinetochorePointInfo.CoordPoints = horzcat(app.KinetochorePointInfo.CoordPoints, app.KinetochorePointInfo.CoordPoints2); % Combine 1st and 2nd complex coordinate variables into 1
            
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
        
        function SaveMasterPointInfo(app)
            save(strcat(app.FileFolderNameStringEditField.Value,'.mat'),'app.MasterPointInfo');
        end
    
        function GenerateXML(app,filestructure,fileidx)
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
            xmlfile = fopen(sprintf(filestructure,fileidx),'w');
            fprintf(xmlfile,xmlstr);
            fclose all;
        end
    
        function GenerateTIFs(app)
            folderlist = dir(sprintf('%s*',app.FileFolderNameStringEditField.Value));
            commandstring = 'python.exe BrownianXMLtoTIFF.py ';
            if (strcmp("All", app.N_Nuf2ColorChannelDropDown.Value) && app.N_Nuf2CheckBox.Value == true)  || (strcmp("All", app.Spc29ColorChannelDropDown.Value) && app.Spc29CheckBox.Value == true) || (strcmp("All", app.KinetochoreColorChannel.Value) && app.KinetochoreCheckBox.Value == true)
                commandstring = strcat(commandstring,{' '},'-out %s %s');
            else
                if strcmp("Green", app.N_Nuf2ColorChannelDropDown.Value) || strcmp("Green", app.Spc29ColorChannelDropDown.Value) || strcmp("Green", app.KinetochoreColorChannel.Value)
                    commandstring = strcat(commandstring,{' '}, '-green ');
                end
                if strcmp("Red", app.N_Nuf2ColorChannelDropDown.Value) || strcmp("Red", app.Spc29ColorChannelDropDown.Value) || strcmp("Red", app.KinetochoreColorChannel.Value)
                    commandstring = strcat(commandstring,{' '}, '-red ');
                end
                if strcmp("Blue", app.N_Nuf2ColorChannelDropDown.Value) || strcmp("Blue", app.Spc29ColorChannelDropDown.Value) || strcmp("Blue", app.KinetochoreColorChannel.Value)
                    commandstring = strcat(commandstring,{' '}, '-blue ');
                end
                commandstring = strcat(commandstring,{' '}, '-out %s %s');
            end
            parfor n = 1:numel(folderlist)
                [~,basename,~] = fileparts(folderlist(n).name);
                newfolderbase = basename(1:end-5);
                system(sprintf(commandstring{1}, strcat(newfolderbase,'_TIF'), basename))
                CheckTIFsOutputs(app,strcat(newfolderbase,'_TIF'))
            end
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
                
        function MasterPointInfoCorrection(app)
            app.MasterPointInfo.CoordPointsCorrect = app.MasterPointInfo.CoordPoints + [(app.WidthpixelsSpinner.Value*app.PixelSizenmSpinner.Value)/2;(app.HeightpixelsSpinner.Value*app.PixelSizenmSpinner.Value)/2;((app.NumberofPlanesSpinner.Value-1)/2)*app.SpacingBetweenPlanesnmSpinner.Value];
        end
    
        function MainLoop(app)
            folderstructure = strcat(app.FileFolderNameStringEditField.Value,'_%0',num2str(floor(log10(app.NumberofXMLstoGenerateSpinner.Value))+1),'d','_DATA');
            filestructure = strcat(app.FileFolderNameStringEditField.Value,'_%0',num2str(floor(log10(app.NumberofXMLstoGenerateSpinner.Value))+1),'d_.xml');
            parfor fileidx = 1:app.NumberofXMLstoGenerateSpinner.Value
                mkdir(sprintf(folderstructure,fileidx))
                cd(sprintf(folderstructure,fileidx))
                CalculateData(app)
                MasterPointInfoCorrection(app)
                GenerateXML(app,filestructure,fileidx)
                cd ..
            end
        end
    
        function CheckTIFsOutputs(app,folder)
            path = [pwd filesep folder filesep '*_0000_*'];
            ImagesGenerated = dir(path);
            if numel(ImagesGenerated) == 0
                app.CurrentErrorMessage = "ERROR! - TIF's aren't being generated properly. Terminating simulation. Please fix me!";
                error("ERROR! - TIF's are not being generated properly. Terminating simulation. Please fix me!")
            end
            imgtotest = bf2mat(bfopen2([ImagesGenerated(1).folder filesep ImagesGenerated(1).name]));
            if max(imgtotest,[],'all') == 0
                app.CurrentErrorMessage = "ERROR! - PSF is not working properly. Terminating simulation. Please fix me!";
                error("ERROR! - PSF is not working properly. Terminating simulation. Please fix me!");
            end 
        end
    
        function PreProcess(app)
            cd(app.FileFolderNameStringEditField.Value)
            SimulatedImagesPreProcess
            cd ..
        end
    
        function CopyBtoF(app)
            copyfile([pwd filesep 'Functions' filesep 'KineticButShakelessFunctions' filesep 'BrownianXMLtoTIFF.py'],app.FileFolderNameStringEditField.Value)
            copyfile([pwd filesep 'Functions' filesep 'KineticButShakelessFunctions' filesep 'SendEmail.py'],app.FileFolderNameStringEditField.Value)
        end

        function SendEmailApp(app,purpose,string)
            SendEmail(purpose,app.EmailEditField.Value,string);
        end
        
    end

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            warning('off','all')
            GeneralParameterCheck(app)
            SaveBioDistanceData(app)
            GenerateSimuLinkData(app)
        end

        % Callback function: RotationCheckBox, 
        % RotationParametersPanel, StaggerDropDown
        function MainParameterChange(app, event)
            MainParameterCheck(app)
        end

        % Callback function: FileFolderNameStringEditField, 
        % FileFolderNameStringEditField, GenerateTIFsCheckBox
        function OutputParameterChange(app, event)
            OutputParameterCheck(app)
        end

        % Callback function: LowerAngleSpinner, LowerAngleSpinner, 
        % UpperAngleSpinner, UpperAngleSpinner
        function KinetochoreParameterChange(app, event)
            KinetochoreParameterCheck(app)
        end

        % Button pushed function: GenerateOutputButton
        function GenerateOutput(app, event)
            try
                app.CurrentErrorMessage = "ERROR! - Something went wrong and I do not know what. Please fix me!";
                if app.N_Nuf2CheckBox.Value == false && app.Spc29CheckBox.Value == false
                    app.StatusEditField.Value = 'No Structure Has Been Selected';
                else
                    app.StatusEditField.Value = 'Writing';
                    app.FileFolderNameStringEditField.Value = strtrim(app.FileFolderNameStringEditField.Value);
                    mkdir(app.FileFolderNameStringEditField.Value)
                    CopyBtoF(app)
                    cd(app.FileFolderNameStringEditField.Value)
                    MainLoop(app)
                    SendEmailApp(app,app.FileFolderNameStringEditField.Value,"Finished generating xml's")
                    if app.GenerateTIFsCheckBox.Value == true
                        GenerateTIFs(app)
                        SendEmailApp(app,app.FileFolderNameStringEditField.Value,"Finished generating TIF's")
                    end
                    cd ..
                    if app.GenerateTIFsCheckBox.Value == true && strcmp(app.PreProcessTIFsCheckBox.Enable,"on") && app.PreProcessTIFsCheckBox.Value == true
                        PreProcess(app)
                        SendEmailApp(app,app.FileFolderNameStringEditField.Value,"Finished pre-processing TIF's")
                    end
                    app.StatusEditField.Value = 'Finished!';
                end
            catch e
                fprintf(1,'\nThe identifier was:\n%s\n',e.identifier);
                fprintf(1,'\nThere was an error! The message was:\n%s',e.message);
                SendEmailApp(app,app.FileFolderNameStringEditField.Value,app.CurrentErrorMessage);
            end
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create StaticKinetinMassUIFigure
            app.StaticKinetinMassUIFigure = uifigure;
            app.StaticKinetinMassUIFigure.Position = [100 100 1231 596];
            app.StaticKinetinMassUIFigure.Name = 'Static Kinet in Mass';

            % Create FileMenu
            app.FileMenu = uimenu(app.StaticKinetinMassUIFigure);
            app.FileMenu.Text = 'File';

            % Create QuitMenu
            app.QuitMenu = uimenu(app.FileMenu);
            app.QuitMenu.Text = 'Quit';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.StaticKinetinMassUIFigure);
            app.AboutMenu.Text = 'About';

            % Create BloomLabWebsiteMenu
            app.BloomLabWebsiteMenu = uimenu(app.AboutMenu);
            app.BloomLabWebsiteMenu.Text = 'Bloom Lab Website';

            % Create OtherProgramsMenu
            app.OtherProgramsMenu = uimenu(app.AboutMenu);
            app.OtherProgramsMenu.Text = 'Other Programs';

            % Create GitHubMenu
            app.GitHubMenu = uimenu(app.AboutMenu);
            app.GitHubMenu.Text = 'GitHub';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.StaticKinetinMassUIFigure);
            app.HelpMenu.Text = 'Help';

            % Create DocumentationMenu
            app.DocumentationMenu = uimenu(app.HelpMenu);
            app.DocumentationMenu.Text = 'Documentation';

            % Create OutputPanel
            app.OutputPanel = uipanel(app.StaticKinetinMassUIFigure);
            app.OutputPanel.BorderType = 'none';
            app.OutputPanel.TitlePosition = 'centertop';
            app.OutputPanel.Title = 'Output';
            app.OutputPanel.FontName = 'Arial';
            app.OutputPanel.FontSize = 26;
            app.OutputPanel.Position = [814 60 298 430];

            % Create FileFolderNameStringEditFieldLabel
            app.FileFolderNameStringEditFieldLabel = uilabel(app.OutputPanel);
            app.FileFolderNameStringEditFieldLabel.HorizontalAlignment = 'right';
            app.FileFolderNameStringEditFieldLabel.Position = [8 358 136 22];
            app.FileFolderNameStringEditFieldLabel.Text = 'File/Folder Name String:';

            % Create FileFolderNameStringEditField
            app.FileFolderNameStringEditField = uieditfield(app.OutputPanel, 'text');
            app.FileFolderNameStringEditField.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.ValueChangingFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.HorizontalAlignment = 'center';
            app.FileFolderNameStringEditField.Position = [146 358 130 22];

            % Create MicroscopeSimulatorParametersPanel
            app.MicroscopeSimulatorParametersPanel = uipanel(app.OutputPanel);
            app.MicroscopeSimulatorParametersPanel.BorderType = 'none';
            app.MicroscopeSimulatorParametersPanel.TitlePosition = 'centertop';
            app.MicroscopeSimulatorParametersPanel.Title = 'Microscope Simulator Parameters';
            app.MicroscopeSimulatorParametersPanel.Position = [6 161 287 165];

            % Create GainEditFieldLabel
            app.GainEditFieldLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GainEditFieldLabel.HorizontalAlignment = 'center';
            app.GainEditFieldLabel.Position = [9 29 30 22];
            app.GainEditFieldLabel.Text = 'Gain:';

            % Create GainEditField
            app.GainEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GainEditField.UpperLimitInclusive = 'off';
            app.GainEditField.Limits = [0 Inf];
            app.GainEditField.HorizontalAlignment = 'center';
            app.GainEditField.Position = [39 29 64 22];
            app.GainEditField.Value = 76660;

            % Create OffsetEditFieldLabel
            app.OffsetEditFieldLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.OffsetEditFieldLabel.HorizontalAlignment = 'center';
            app.OffsetEditFieldLabel.Position = [7 3 41 22];
            app.OffsetEditFieldLabel.Text = 'Offset:';

            % Create OffsetEditField
            app.OffsetEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.OffsetEditField.UpperLimitInclusive = 'off';
            app.OffsetEditField.Limits = [0 Inf];
            app.OffsetEditField.HorizontalAlignment = 'center';
            app.OffsetEditField.Position = [56 2 50 22];

            % Create GaussianNoiseSDEditFieldLabel
            app.GaussianNoiseSDEditFieldLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GaussianNoiseSDEditFieldLabel.HorizontalAlignment = 'center';
            app.GaussianNoiseSDEditFieldLabel.Position = [106 29 113 22];
            app.GaussianNoiseSDEditFieldLabel.Text = 'Gaussian Noise SD:';

            % Create GaussianNoiseSDEditField
            app.GaussianNoiseSDEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GaussianNoiseSDEditField.UpperLimitInclusive = 'off';
            app.GaussianNoiseSDEditField.Limits = [0 Inf];
            app.GaussianNoiseSDEditField.HorizontalAlignment = 'center';
            app.GaussianNoiseSDEditField.Position = [219 29 65 22];

            % Create MaxVoxelIntensityEditFieldLabel
            app.MaxVoxelIntensityEditFieldLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.MaxVoxelIntensityEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxVoxelIntensityEditFieldLabel.Position = [107 3 111 22];
            app.MaxVoxelIntensityEditFieldLabel.Text = 'Max. Voxel Intensity:';

            % Create MaxVoxelIntensityEditField
            app.MaxVoxelIntensityEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.MaxVoxelIntensityEditField.UpperLimitInclusive = 'off';
            app.MaxVoxelIntensityEditField.Limits = [0 Inf];
            app.MaxVoxelIntensityEditField.HorizontalAlignment = 'center';
            app.MaxVoxelIntensityEditField.Position = [221 3 60 22];
            app.MaxVoxelIntensityEditField.Value = 200;

            % Create NumberofPlanesSpinnerLabel
            app.NumberofPlanesSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinnerLabel.Position = [65 118 102 22];
            app.NumberofPlanesSpinnerLabel.Text = 'Number of Planes';

            % Create NumberofPlanesSpinner
            app.NumberofPlanesSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinner.LowerLimitInclusive = 'off';
            app.NumberofPlanesSpinner.UpperLimitInclusive = 'off';
            app.NumberofPlanesSpinner.Limits = [0 Inf];
            app.NumberofPlanesSpinner.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinner.Position = [171 118 51 22];
            app.NumberofPlanesSpinner.Value = 7;

            % Create SpacingBetweenPlanesnmSpinnerLabel
            app.SpacingBetweenPlanesnmSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinnerLabel.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinnerLabel.Position = [26 97 167 22];
            app.SpacingBetweenPlanesnmSpinnerLabel.Text = 'Spacing Between Planes (nm)';

            % Create SpacingBetweenPlanesnmSpinner
            app.SpacingBetweenPlanesnmSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinner.Step = 50;
            app.SpacingBetweenPlanesnmSpinner.LowerLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.UpperLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.Limits = [0 Inf];
            app.SpacingBetweenPlanesnmSpinner.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinner.Position = [197 97 66 22];
            app.SpacingBetweenPlanesnmSpinner.Value = 300;

            % Create WidthpixelsSpinnerLabel
            app.WidthpixelsSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.WidthpixelsSpinnerLabel.HorizontalAlignment = 'center';
            app.WidthpixelsSpinnerLabel.Position = [3 76 78 22];
            app.WidthpixelsSpinnerLabel.Text = 'Width (pixels)';

            % Create WidthpixelsSpinner
            app.WidthpixelsSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.WidthpixelsSpinner.Step = 10;
            app.WidthpixelsSpinner.UpperLimitInclusive = 'off';
            app.WidthpixelsSpinner.Limits = [1 Inf];
            app.WidthpixelsSpinner.ValueDisplayFormat = '%.0f';
            app.WidthpixelsSpinner.HorizontalAlignment = 'center';
            app.WidthpixelsSpinner.Position = [82 76 61 22];
            app.WidthpixelsSpinner.Value = 40;

            % Create HeightpixelsSpinnerLabel
            app.HeightpixelsSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.HeightpixelsSpinnerLabel.HorizontalAlignment = 'center';
            app.HeightpixelsSpinnerLabel.Position = [148 76 82 22];
            app.HeightpixelsSpinnerLabel.Text = 'Height (pixels)';

            % Create HeightpixelsSpinner
            app.HeightpixelsSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.HeightpixelsSpinner.Step = 10;
            app.HeightpixelsSpinner.UpperLimitInclusive = 'off';
            app.HeightpixelsSpinner.Limits = [1 Inf];
            app.HeightpixelsSpinner.ValueDisplayFormat = '%.0f';
            app.HeightpixelsSpinner.HorizontalAlignment = 'center';
            app.HeightpixelsSpinner.Position = [231 76 57 22];
            app.HeightpixelsSpinner.Value = 40;

            % Create PixelSizenmSpinnerLabel
            app.PixelSizenmSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.PixelSizenmSpinnerLabel.HorizontalAlignment = 'center';
            app.PixelSizenmSpinnerLabel.Position = [67 52 86 22];
            app.PixelSizenmSpinnerLabel.Text = 'Pixel Size (nm)';

            % Create PixelSizenmSpinner
            app.PixelSizenmSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.PixelSizenmSpinner.LowerLimitInclusive = 'off';
            app.PixelSizenmSpinner.UpperLimitInclusive = 'off';
            app.PixelSizenmSpinner.Limits = [0 Inf];
            app.PixelSizenmSpinner.HorizontalAlignment = 'center';
            app.PixelSizenmSpinner.Position = [158 52 64 22];
            app.PixelSizenmSpinner.Value = 65;

            % Create StatusOutputPanel
            app.StatusOutputPanel = uipanel(app.OutputPanel);
            app.StatusOutputPanel.Position = [1 8 296 103];

            % Create GenerateOutputButton
            app.GenerateOutputButton = uibutton(app.StatusOutputPanel, 'push');
            app.GenerateOutputButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateOutput, true);
            app.GenerateOutputButton.FontSize = 18;
            app.GenerateOutputButton.Enable = 'off';
            app.GenerateOutputButton.Position = [60 40 176 58];
            app.GenerateOutputButton.Text = 'Generate Output!';

            % Create StatusEditFieldLabel
            app.StatusEditFieldLabel = uilabel(app.StatusOutputPanel);
            app.StatusEditFieldLabel.HorizontalAlignment = 'right';
            app.StatusEditFieldLabel.Position = [1 10 42 22];
            app.StatusEditFieldLabel.Text = 'Status:';

            % Create StatusEditField
            app.StatusEditField = uieditfield(app.StatusOutputPanel, 'text');
            app.StatusEditField.HorizontalAlignment = 'center';
            app.StatusEditField.Position = [46 10 246 22];

            % Create GenerateTIFsCheckBox
            app.GenerateTIFsCheckBox = uicheckbox(app.OutputPanel);
            app.GenerateTIFsCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.GenerateTIFsCheckBox.Text = 'Generate TIF''s';
            app.GenerateTIFsCheckBox.Position = [99 134 102 22];

            % Create PreProcessTIFsCheckBox
            app.PreProcessTIFsCheckBox = uicheckbox(app.OutputPanel);
            app.PreProcessTIFsCheckBox.Text = 'Pre-Process TIF''s';
            app.PreProcessTIFsCheckBox.Position = [99 114 118 22];

            % Create EmailEditFieldLabel
            app.EmailEditFieldLabel = uilabel(app.OutputPanel);
            app.EmailEditFieldLabel.HorizontalAlignment = 'right';
            app.EmailEditFieldLabel.Position = [20 330 36 22];
            app.EmailEditFieldLabel.Text = 'Email';

            % Create EmailEditField
            app.EmailEditField = uieditfield(app.OutputPanel, 'text');
            app.EmailEditField.Position = [71 330 227 22];

            % Create NumberotXMLstoGenerateSpinnerLabel
            app.NumberotXMLstoGenerateSpinnerLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.NumberotXMLstoGenerateSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberotXMLstoGenerateSpinnerLabel.Position = [43 558 175 22];
            app.NumberotXMLstoGenerateSpinnerLabel.Text = 'Number ot XMLs to Generate';

            % Create NumberofXMLstoGenerateSpinner
            app.NumberofXMLstoGenerateSpinner = uispinner(app.StaticKinetinMassUIFigure);
            app.NumberofXMLstoGenerateSpinner.LowerLimitInclusive = 'off';
            app.NumberofXMLstoGenerateSpinner.UpperLimitInclusive = 'off';
            app.NumberofXMLstoGenerateSpinner.Limits = [0 Inf];
            app.NumberofXMLstoGenerateSpinner.ValueDisplayFormat = '%.0f';
            app.NumberofXMLstoGenerateSpinner.HorizontalAlignment = 'center';
            app.NumberofXMLstoGenerateSpinner.Position = [217 558 120 22];
            app.NumberofXMLstoGenerateSpinner.Value = 10000;

            % Create N_Nuf2StructurePanel
            app.N_Nuf2StructurePanel = uipanel(app.StaticKinetinMassUIFigure);
            app.N_Nuf2StructurePanel.BorderType = 'none';
            app.N_Nuf2StructurePanel.TitlePosition = 'centertop';
            app.N_Nuf2StructurePanel.Title = 'N-Terminal Nuf2';
            app.N_Nuf2StructurePanel.FontName = 'Arial';
            app.N_Nuf2StructurePanel.FontSize = 24;
            app.N_Nuf2StructurePanel.Position = [11 304 260 120];

            % Create N_Nuf2NumberofFluorophoreSpinnerLabel
            app.N_Nuf2NumberofFluorophoreSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Position = [26 38 145 22];
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Text = 'Number of Fluorophore';

            % Create N_Nuf2NumberofFluorophoreSpinner
            app.N_Nuf2NumberofFluorophoreSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofFluorophoreSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2NumberofFluorophoreSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2NumberofFluorophoreSpinner.Limits = [0 Inf];
            app.N_Nuf2NumberofFluorophoreSpinner.RoundFractionalValues = 'on';
            app.N_Nuf2NumberofFluorophoreSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofFluorophoreSpinner.FontName = 'Arial';
            app.N_Nuf2NumberofFluorophoreSpinner.Position = [170 38 66 22];
            app.N_Nuf2NumberofFluorophoreSpinner.Value = 20;

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
            app.N_Nuf2LengthnmSpinner.Limits = [0 Inf];
            app.N_Nuf2LengthnmSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2LengthnmSpinner.FontName = 'Arial';
            app.N_Nuf2LengthnmSpinner.Position = [170 59 66 22];
            app.N_Nuf2LengthnmSpinner.Value = 2;

            % Create N_Nuf2ColorChannelDropDownLabel
            app.N_Nuf2ColorChannelDropDownLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDownLabel.HorizontalAlignment = 'center';
            app.N_Nuf2ColorChannelDropDownLabel.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDownLabel.Position = [76 13 95 22];
            app.N_Nuf2ColorChannelDropDownLabel.Text = 'Color Channel';

            % Create N_Nuf2ColorChannelDropDown
            app.N_Nuf2ColorChannelDropDown = uidropdown(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDown.Items = {'All', 'Green', 'Red', 'Blue'};
            app.N_Nuf2ColorChannelDropDown.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDown.Position = [170 13 66 22];
            app.N_Nuf2ColorChannelDropDown.Value = 'Green';

            % Create Spc29StructurePanel
            app.Spc29StructurePanel = uipanel(app.StaticKinetinMassUIFigure);
            app.Spc29StructurePanel.BorderType = 'none';
            app.Spc29StructurePanel.TitlePosition = 'centertop';
            app.Spc29StructurePanel.Title = 'Spc-29';
            app.Spc29StructurePanel.FontName = 'Arial';
            app.Spc29StructurePanel.FontSize = 24;
            app.Spc29StructurePanel.Position = [277 231 221 193];

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
            app.Spc29TubuleDiameternmSpinner.Limits = [0 Inf];
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
            app.Spc29StructureDiameternmSpinner.Limits = [0 Inf];
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
            app.Spc29NumberofFluorophoreSpinner.Limits = [0 Inf];
            app.Spc29NumberofFluorophoreSpinner.RoundFractionalValues = 'on';
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
            app.Spc29NumberofTubulesSpinner.Limits = [0 Inf];
            app.Spc29NumberofTubulesSpinner.RoundFractionalValues = 'on';
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
            app.Spc29LengthnmSpinner.Limits = [0 Inf];
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
            app.Spc29DistancetonmSpinner.Limits = [0 Inf];
            app.Spc29DistancetonmSpinner.HorizontalAlignment = 'center';
            app.Spc29DistancetonmSpinner.Position = [145 116 66 22];
            app.Spc29DistancetonmSpinner.Value = 350;

            % Create N_Nuf2CheckBox
            app.N_Nuf2CheckBox = uicheckbox(app.StaticKinetinMassUIFigure);
            app.N_Nuf2CheckBox.Text = '';
            app.N_Nuf2CheckBox.Position = [232 397 14 23];

            % Create Spc29CheckBox
            app.Spc29CheckBox = uicheckbox(app.StaticKinetinMassUIFigure);
            app.Spc29CheckBox.Text = '';
            app.Spc29CheckBox.Position = [430 397 14 23];

            % Create KinetochoreProteinPanel
            app.KinetochoreProteinPanel = uipanel(app.StaticKinetinMassUIFigure);
            app.KinetochoreProteinPanel.BorderType = 'none';
            app.KinetochoreProteinPanel.Title = 'Kinetochore Protein';
            app.KinetochoreProteinPanel.FontSize = 24;
            app.KinetochoreProteinPanel.Position = [532 143 260 278];

            % Create LengthofArmnmSpinnerLabel
            app.LengthofArmnmSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.LengthofArmnmSpinnerLabel.HorizontalAlignment = 'right';
            app.LengthofArmnmSpinnerLabel.Position = [31 151 134 22];
            app.LengthofArmnmSpinnerLabel.Text = 'Length of Arm (nm)';

            % Create LengthofArmnmSpinner
            app.LengthofArmnmSpinner = uispinner(app.KinetochoreProteinPanel);
            app.LengthofArmnmSpinner.Step = 10;
            app.LengthofArmnmSpinner.LowerLimitInclusive = 'off';
            app.LengthofArmnmSpinner.UpperLimitInclusive = 'off';
            app.LengthofArmnmSpinner.Limits = [0 Inf];
            app.LengthofArmnmSpinner.HorizontalAlignment = 'center';
            app.LengthofArmnmSpinner.Position = [172 151 64 22];
            app.LengthofArmnmSpinner.Value = 70;

            % Create NumberofComplexesSpinnerLabel
            app.NumberofComplexesSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.NumberofComplexesSpinnerLabel.HorizontalAlignment = 'right';
            app.NumberofComplexesSpinnerLabel.Tooltip = {'The number of complexes over everything kjk akdfjaklfjkadsjfklasdjfkjsadkfj asdkfjalskfjskajflaskjflksajfkasjdflk afjlka jflkasjfkl asfjaslkd fklsdajflasdkf jklasdjfsdfj j'};
            app.NumberofComplexesSpinnerLabel.Position = [42 213 125 22];
            app.NumberofComplexesSpinnerLabel.Text = 'Number of Complexes';

            % Create NumberofComplexesSpinner
            app.NumberofComplexesSpinner = uispinner(app.KinetochoreProteinPanel);
            app.NumberofComplexesSpinner.UpperLimitInclusive = 'off';
            app.NumberofComplexesSpinner.Limits = [0 Inf];
            app.NumberofComplexesSpinner.RoundFractionalValues = 'on';
            app.NumberofComplexesSpinner.HorizontalAlignment = 'center';
            app.NumberofComplexesSpinner.Tooltip = {'The number of complexes over everything'};
            app.NumberofComplexesSpinner.Position = [172 213 64 22];
            app.NumberofComplexesSpinner.Value = 8;

            % Create NumberofBoundComplexesSpinnerLabel
            app.NumberofBoundComplexesSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.NumberofBoundComplexesSpinnerLabel.HorizontalAlignment = 'right';
            app.NumberofBoundComplexesSpinnerLabel.Position = [4 192 163 22];
            app.NumberofBoundComplexesSpinnerLabel.Text = 'Number of Bound Complexes';

            % Create NumberofBoundComplexesSpinner
            app.NumberofBoundComplexesSpinner = uispinner(app.KinetochoreProteinPanel);
            app.NumberofBoundComplexesSpinner.Limits = [0 Inf];
            app.NumberofBoundComplexesSpinner.RoundFractionalValues = 'on';
            app.NumberofBoundComplexesSpinner.HorizontalAlignment = 'center';
            app.NumberofBoundComplexesSpinner.Position = [172 192 64 22];
            app.NumberofBoundComplexesSpinner.Value = 8;

            % Create UpperAngleLabel
            app.UpperAngleLabel = uilabel(app.KinetochoreProteinPanel);
            app.UpperAngleLabel.HorizontalAlignment = 'center';
            app.UpperAngleLabel.Position = [127 85 21 22];
            app.UpperAngleLabel.Text = 'to';

            % Create UpperAngleSpinner
            app.UpperAngleSpinner = uispinner(app.KinetochoreProteinPanel);
            app.UpperAngleSpinner.Step = 5;
            app.UpperAngleSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreParameterChange, true);
            app.UpperAngleSpinner.Limits = [-90 90];
            app.UpperAngleSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreParameterChange, true);
            app.UpperAngleSpinner.HorizontalAlignment = 'center';
            app.UpperAngleSpinner.Position = [159 85 67 22];
            app.UpperAngleSpinner.Value = 90;

            % Create ofLengthMarkedSpinnerLabel
            app.ofLengthMarkedSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.ofLengthMarkedSpinnerLabel.HorizontalAlignment = 'right';
            app.ofLengthMarkedSpinnerLabel.Position = [54 172 113 22];
            app.ofLengthMarkedSpinnerLabel.Text = '% of Length Marked';

            % Create ofLengthMarkedSpinner
            app.ofLengthMarkedSpinner = uispinner(app.KinetochoreProteinPanel);
            app.ofLengthMarkedSpinner.LowerLimitInclusive = 'off';
            app.ofLengthMarkedSpinner.UpperLimitInclusive = 'off';
            app.ofLengthMarkedSpinner.HorizontalAlignment = 'center';
            app.ofLengthMarkedSpinner.Position = [172 172 64 22];
            app.ofLengthMarkedSpinner.Value = 100;

            % Create AnglefromMTAxisnmSpinnerLabel
            app.AnglefromMTAxisnmSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.AnglefromMTAxisnmSpinnerLabel.HorizontalAlignment = 'right';
            app.AnglefromMTAxisnmSpinnerLabel.Position = [28 130 138 22];
            app.AnglefromMTAxisnmSpinnerLabel.Text = 'Angle from MT Axis (nm)';

            % Create AnglefromMTAxisnmSpinner
            app.AnglefromMTAxisnmSpinner = uispinner(app.KinetochoreProteinPanel);
            app.AnglefromMTAxisnmSpinner.Limits = [-180 180];
            app.AnglefromMTAxisnmSpinner.HorizontalAlignment = 'center';
            app.AnglefromMTAxisnmSpinner.Position = [172 129 64 22];

            % Create AngleRangeforUnbounddegSpinnerLabel
            app.AngleRangeforUnbounddegSpinnerLabel = uilabel(app.KinetochoreProteinPanel);
            app.AngleRangeforUnbounddegSpinnerLabel.HorizontalAlignment = 'right';
            app.AngleRangeforUnbounddegSpinnerLabel.Position = [49 105 179 22];
            app.AngleRangeforUnbounddegSpinnerLabel.Text = 'Angle Range for Unbound (deg.)';

            % Create LowerAngleSpinner
            app.LowerAngleSpinner = uispinner(app.KinetochoreProteinPanel);
            app.LowerAngleSpinner.Step = 5;
            app.LowerAngleSpinner.ValueChangingFcn = createCallbackFcn(app, @KinetochoreParameterChange, true);
            app.LowerAngleSpinner.Limits = [-90 90];
            app.LowerAngleSpinner.ValueChangedFcn = createCallbackFcn(app, @KinetochoreParameterChange, true);
            app.LowerAngleSpinner.HorizontalAlignment = 'center';
            app.LowerAngleSpinner.Position = [54 85 67 22];
            app.LowerAngleSpinner.Value = -90;

            % Create KinetochoreColorChannelLabel
            app.KinetochoreColorChannelLabel = uilabel(app.KinetochoreProteinPanel);
            app.KinetochoreColorChannelLabel.HorizontalAlignment = 'center';
            app.KinetochoreColorChannelLabel.FontName = 'Arial';
            app.KinetochoreColorChannelLabel.Position = [51 56 91 22];
            app.KinetochoreColorChannelLabel.Text = 'Color Channel';

            % Create KinetochoreColorChannel
            app.KinetochoreColorChannel = uidropdown(app.KinetochoreProteinPanel);
            app.KinetochoreColorChannel.Items = {'All', 'Green', 'Red', 'Blue'};
            app.KinetochoreColorChannel.FontName = 'Arial';
            app.KinetochoreColorChannel.Position = [168 57 66 22];
            app.KinetochoreColorChannel.Value = 'Green';

            % Create KinetochoreCheckBox
            app.KinetochoreCheckBox = uicheckbox(app.StaticKinetinMassUIFigure);
            app.KinetochoreCheckBox.Text = '';
            app.KinetochoreCheckBox.Position = [753 395 18 22];

            % Create RotationPanel
            app.RotationPanel = uipanel(app.StaticKinetinMassUIFigure);
            app.RotationPanel.BorderType = 'none';
            app.RotationPanel.Position = [11 437 516 52];

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
            app.LowLimSpinner.Limits = [0 360];
            app.LowLimSpinner.HorizontalAlignment = 'center';
            app.LowLimSpinner.Position = [63 3 51 22];

            % Create UpLimSpinnerLabel
            app.UpLimSpinnerLabel = uilabel(app.RandomRotationParametersdegPanel);
            app.UpLimSpinnerLabel.HorizontalAlignment = 'center';
            app.UpLimSpinnerLabel.Position = [128 3 50 22];
            app.UpLimSpinnerLabel.Text = 'Up. Lim.';

            % Create UpLimSpinner
            app.UpLimSpinner = uispinner(app.RandomRotationParametersdegPanel);
            app.UpLimSpinner.Limits = [0 360];
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
            app.XSpinner.Limits = [0 360];
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
            app.YSpinner.Limits = [0 360];
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
            app.ZSpinner.Limits = [0 360];
            app.ZSpinner.HorizontalAlignment = 'center';
            app.ZSpinner.FontName = 'Arial';
            app.ZSpinner.Position = [178 4 51 22];

            % Create MicrotubuleDiameternmSpinnerLabel
            app.MicrotubuleDiameternmSpinnerLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.MicrotubuleDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.MicrotubuleDiameternmSpinnerLabel.Position = [435 523 148 22];
            app.MicrotubuleDiameternmSpinnerLabel.Text = 'Microtubule Diameter (nm)';

            % Create MicrotubuleDiameternmSpinner
            app.MicrotubuleDiameternmSpinner = uispinner(app.StaticKinetinMassUIFigure);
            app.MicrotubuleDiameternmSpinner.Step = 5;
            app.MicrotubuleDiameternmSpinner.LowerLimitInclusive = 'off';
            app.MicrotubuleDiameternmSpinner.UpperLimitInclusive = 'off';
            app.MicrotubuleDiameternmSpinner.Limits = [0 Inf];
            app.MicrotubuleDiameternmSpinner.HorizontalAlignment = 'center';
            app.MicrotubuleDiameternmSpinner.FontName = 'Arial';
            app.MicrotubuleDiameternmSpinner.Position = [586 523 66 22];
            app.MicrotubuleDiameternmSpinner.Value = 25;

            % Create StructureDiameternmSpinnerLabel
            app.StructureDiameternmSpinnerLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.StructureDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.StructureDiameternmSpinnerLabel.FontName = 'Arial';
            app.StructureDiameternmSpinnerLabel.Position = [17 496 134 22];
            app.StructureDiameternmSpinnerLabel.Text = 'Structure Diameter (nm)';

            % Create StructureDiameternmSpinner
            app.StructureDiameternmSpinner = uispinner(app.StaticKinetinMassUIFigure);
            app.StructureDiameternmSpinner.Step = 10;
            app.StructureDiameternmSpinner.LowerLimitInclusive = 'off';
            app.StructureDiameternmSpinner.UpperLimitInclusive = 'off';
            app.StructureDiameternmSpinner.Limits = [0 Inf];
            app.StructureDiameternmSpinner.HorizontalAlignment = 'center';
            app.StructureDiameternmSpinner.FontName = 'Arial';
            app.StructureDiameternmSpinner.Position = [158 496 67 22];
            app.StructureDiameternmSpinner.Value = 250;

            % Create NumberofChromosomesSpinnerLabel
            app.NumberofChromosomesSpinnerLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.NumberofChromosomesSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberofChromosomesSpinnerLabel.FontName = 'Arial';
            app.NumberofChromosomesSpinnerLabel.Position = [215 523 143 22];
            app.NumberofChromosomesSpinnerLabel.Text = 'Number of Chromosomes';

            % Create NumberofChromosomesSpinner
            app.NumberofChromosomesSpinner = uispinner(app.StaticKinetinMassUIFigure);
            app.NumberofChromosomesSpinner.LowerLimitInclusive = 'off';
            app.NumberofChromosomesSpinner.UpperLimitInclusive = 'off';
            app.NumberofChromosomesSpinner.Limits = [0 Inf];
            app.NumberofChromosomesSpinner.RoundFractionalValues = 'on';
            app.NumberofChromosomesSpinner.HorizontalAlignment = 'center';
            app.NumberofChromosomesSpinner.FontName = 'Arial';
            app.NumberofChromosomesSpinner.Position = [359 523 66 22];
            app.NumberofChromosomesSpinner.Value = 16;

            % Create StaggerDropDownLabel
            app.StaggerDropDownLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.StaggerDropDownLabel.HorizontalAlignment = 'center';
            app.StaggerDropDownLabel.Position = [235 497 48 22];
            app.StaggerDropDownLabel.Text = 'Stagger';

            % Create StaggerDropDown
            app.StaggerDropDown = uidropdown(app.StaticKinetinMassUIFigure);
            app.StaggerDropDown.Items = {'None', 'Random', 'SimuLink Data (Stevens et al.)'};
            app.StaggerDropDown.ValueChangedFcn = createCallbackFcn(app, @MainParameterChange, true);
            app.StaggerDropDown.Position = [289 496 187 22];
            app.StaggerDropDown.Value = 'None';

            % Create RangenmSpinnerLabel
            app.RangenmSpinnerLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.RangenmSpinnerLabel.HorizontalAlignment = 'center';
            app.RangenmSpinnerLabel.Visible = 'off';
            app.RangenmSpinnerLabel.Position = [486 493 87 22];
            app.RangenmSpinnerLabel.Text = 'Range +/- (nm)';

            % Create RangenmSpinner
            app.RangenmSpinner = uispinner(app.StaticKinetinMassUIFigure);
            app.RangenmSpinner.HorizontalAlignment = 'center';
            app.RangenmSpinner.Visible = 'off';
            app.RangenmSpinner.Position = [575 493 78 22];

            % Create NumberofComplexesSwitchLabel
            app.NumberofComplexesSwitchLabel = uilabel(app.StaticKinetinMassUIFigure);
            app.NumberofComplexesSwitchLabel.HorizontalAlignment = 'center';
            app.NumberofComplexesSwitchLabel.FontName = 'Arial';
            app.NumberofComplexesSwitchLabel.Position = [11 523 125 22];
            app.NumberofComplexesSwitchLabel.Text = 'Number of Complexes';

            % Create NumberofComplexesSwitch
            app.NumberofComplexesSwitch = uiswitch(app.StaticKinetinMassUIFigure, 'slider');
            app.NumberofComplexesSwitch.Items = {'1', '2'};
            app.NumberofComplexesSwitch.FontName = 'Arial';
            app.NumberofComplexesSwitch.Position = [153 525 42 19];
            app.NumberofComplexesSwitch.Value = '1';
        end
    end

    methods (Access = public)

        % Construct app
        function app = StaticKinetInMass

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.StaticKinetinMassUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.StaticKinetinMassUIFigure)
        end
    end
end