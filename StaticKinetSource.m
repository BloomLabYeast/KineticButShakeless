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
        N_Nuf2TubuleDiameternmSpinnerLabel  matlab.ui.control.Label
        N_Nuf2StructureDiameternmSpinnerLabel  matlab.ui.control.Label
        N_Nuf2NumberofFluorophoreSpinnerLabel  matlab.ui.control.Label
        N_Nuf2ColorChannelDropDownLabel  matlab.ui.control.Label
        N_Nuf2NumberofChromosomesSpinnerLabel  matlab.ui.control.Label
        N_Nuf2LengthnmSpinnerLabel      matlab.ui.control.Label
        N_Nuf2LengthnmSpinner           matlab.ui.control.Spinner
        N_Nuf2TubuleDiameternmSpinner   matlab.ui.control.Spinner
        N_Nuf2StructureDiameternmSpinner  matlab.ui.control.Spinner
        N_Nuf2NumberofFluorophoreSpinner  matlab.ui.control.Spinner
        N_Nuf2ColorChannelDropDown      matlab.ui.control.DropDown
        N_Nuf2NumberofChromosomesSpinner  matlab.ui.control.Spinner
        N_Nuf2StaggerDropDownLabel      matlab.ui.control.Label
        N_Nuf2StaggerDropDown           matlab.ui.control.DropDown
        N_Nuf2RangenmSpinnerLabel       matlab.ui.control.Label
        N_Nuf2RangenmSpinner            matlab.ui.control.Spinner
        N_Nuf2RotationPanel             matlab.ui.container.Panel
        N_Nuf2RotationParametersPanel   matlab.ui.container.ButtonGroup
        N_Nuf2FixedRotationButton       matlab.ui.control.RadioButton
        N_Nuf2RandomRotationButton      matlab.ui.control.RadioButton
        N_Nuf2RandomRotationParametersdegPanel  matlab.ui.container.Panel
        N_Nuf2LowLimSpinnerLabel        matlab.ui.control.Label
        N_Nuf2LowLimSpinner             matlab.ui.control.Spinner
        N_Nuf2UpLimSpinnerLabel         matlab.ui.control.Label
        N_Nuf2UpLimSpinner              matlab.ui.control.Spinner
        N_Nuf2FixedRotationParametersdegPanel  matlab.ui.container.Panel
        N_Nuf2XSpinnerLabel             matlab.ui.control.Label
        N_Nuf2XSpinner                  matlab.ui.control.Spinner
        N_Nuf2YSpinnerLabel             matlab.ui.control.Label
        N_Nuf2YSpinner                  matlab.ui.control.Spinner
        N_Nuf2ZSpinnerLabel             matlab.ui.control.Label
        N_Nuf2ZSpinner                  matlab.ui.control.Spinner
        N_Nuf2RotationCheckBox          matlab.ui.control.CheckBox
        N_Nuf2RotationLabel             matlab.ui.control.Label
        N_Nuf2CheckBox                  matlab.ui.control.CheckBox
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
        N_Nuf2StructureLabel            matlab.ui.control.Label
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
        Spc29CheckBox                   matlab.ui.control.CheckBox
        Spc29StructureLabel             matlab.ui.control.Label
    end


    properties (Access = public)
        N_Nuf2PointInfo % Contains information about the points that make up the N_Nuf2 structure
        Spc29PointInfo % Continas information about the points that make up the Spc29 structure
        MasterPointInfo % Contains information about the points that make up the entire simulation
        LengthSimth % Array of possible stagger lengths acquired from running Coupled Model Crosslinked Simulation by Stevens et al.
        BioDistances % Description
        BioDistanceCorrection % Description
    end

    properties (Access = private)
    end

    methods (Access = public)
    
        % Function that produces fluorophore location for a single cylinder for the N_Nuf2 model
        function GeneralParametreCheck(app)
            N_Nuf2ParametersCheck(app)
            N_Nuf2ParameterLocationCheck(app)
            Spc29ParametersCheck(app)
            OutputParameterCheck(app)
            OutputParameterLocationCheck(app)
            AxisParameterCheck(app)            
        end
    
        function N_Nuf2ParametersCheck(app)
            if app.N_Nuf2CheckBox.Value == false
                app.N_Nuf2StructurePanel.Visible = 'off';
            else
                app.N_Nuf2StructurePanel.Visible = 'on';
                if strcmp(app.N_Nuf2StaggerDropDown.Value,'Random')
                    app.N_Nuf2RangenmSpinnerLabel.Visible = 'on';
                    app.N_Nuf2RangenmSpinner.Visible = 'on';
                else
                    app.N_Nuf2RangenmSpinnerLabel.Visible = 'off';
                    app.N_Nuf2RangenmSpinner.Visible = 'off';
                end
                if app.N_Nuf2RotationCheckBox.Value == false
                    app.N_Nuf2RotationParametersPanel.Visible = 'off';
                else
                    app.N_Nuf2RotationParametersPanel.Visible = 'on';
                    if app.N_Nuf2FixedRotationButton.Value == true
                        app.N_Nuf2FixedRotationParametersdegPanel.Visible = 'on';
                        app.N_Nuf2RandomRotationParametersdegPanel.Visible = 'off';
                    else
                        app.N_Nuf2FixedRotationParametersdegPanel.Visible = 'off';
                        app.N_Nuf2RandomRotationParametersdegPanel.Visible = 'on';
                    end
                end
            end               
        end
    
        function N_Nuf2ParameterLocationCheck(app)
            if strcmp(app.N_Nuf2StaggerDropDown.Value,'Random')
                app.N_Nuf2RotationPanel.Position = [1 10 260 106];
            else
                app.N_Nuf2RotationPanel.Position = [1 37 260 106];
            end
        end
    
        function Spc29ParametersCheck(app)
            if app.Spc29CheckBox.Value == false
                app.Spc29StructurePanel.Visible = 'off';
            else
                app.Spc29StructurePanel.Visible = 'on';
            end               
        end
    
        function OutputParameterCheck(app)
            if app.GenerateXMLCheckBox.Value == true
                app.MicroscopeSimulatorParametersPanel.Visible = 'on';
            else
                app.MicroscopeSimulatorParametersPanel.Visible = 'off';
            end
            if isempty(app.FileFolderNameStringEditField.Value) || (app.GenerateXMLCheckBox.Value == false && app.SaveMATFileCheckBox.Value == false)
                app.GenerateOutputButton.Enable = "off";
            else
                app.GenerateOutputButton.Enable = "on";
            end
        end
    
        function OutputParameterLocationCheck(app)
            if app.GenerateXMLCheckBox.Value == true
                app.StatusOutputPanel.Position = [2 10 296 103];
            else
                app.StatusOutputPanel.Position = [2 161 296 103];
            end
        end
        
        function AxisParameterCheck(app)
            if app.AutomaticButton.Value == true
                app.GraphPanel.Position = [493 330 151 85];
                app.AxisLimPanel.Visible = "off";
            else
                app.GraphPanel.Position = [493 389 151 85];
                app.AxisLimPanel.Visible = "on";
            end
        end
        
        function SaveBioDistanceData(app)
            app.BioDistances = [-192,-1344,-640,-256,-576,-192,-768,192,-448,-1920,-512,-576,-960,-832,-128,-896,-512,-256,-704,-704,-256,-512,-256,-832,-1216,-64,-576,-768,-1024,-256,-768,-256,0,-960,-1088,-640,-832,-1024,-768,-1088,-704,-1216,-1408,-832,-896,-704,-320,-896,-512,-512,-1024,-832,-448,-256,-640,-256,-768,-576,192,-192,-384,-640,-768,-960,-768,64,-320,-704,-448,-192,-128,64,-640,-640,-448,-832,-832,-832,-960,-384,-128,-1152,-128,-256,-256,-384,-576,-896,-576,-768,-896,-640,-1024,-832,-896,-704,-320,-896,-512,-512,-192,-768,-768,-512,-960,-576,-448,-1728,-1088,128,-704,-256,-256,-832,-64,-1728,-192,-640,-1088,-832,-960,-704,-256,-1024,-960,-1152,-768,-1024,-384,-64,-512,-512,64,-640,-832,-512,-576,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0,-640,-768,-704,-256,-192,64,-192,256,-1152,-832,-640,-576,-576,-128,-896,-384,0,-320,-320,-448,-320,-128,-896,-1280,-448,-512,-448,-896,-832,-576,-1152,-320,-832,-256,-576,-512,-128,-704,-320,-832,-320,192,64,-1664,-832,-768,-384,-1152,-896,-768,64,-768,-448,-576,-192,0,-640,-768,0,-1024,-896,-1344,-1600,-256,128,-1216,-704,128,-1216,-960,-768,-832,-832,-320,-640,-640,0,-704,64,-896,-320,-768,-1024,-1216,-768,-448,-832,-960,-960,128,-960,-704,-256,-256,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-1152,0,-320,-320,-448,-704,-704,-512,-1408,-1088,-576,-128,0,-1024,128,-1152,-192,-320,-576,-384,-128,64,-704,-1024,-384,-320,-1024,-832,-448,-1152,-640,-832,-704,-192,-832,128,-768,-576,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-576,-768,-576,-256,-320,-512,-448,-128,-1344,-960,-1024,-128,-832,-1024,-704,-384,-1728,-832,-640,-1024,-1152,-256,-256,-448,-512,-768,-448,-512,-1600,-1216,-448,-512,-768,-768,-320,-448,-896,192,-832,-960,-960,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-1216,-704,-576,-512,-768,-1088,-256,-1152,-384,-384,-896,-832,-576,-448,-576,-640,128,-896,-384,-512,-704,-960,-960,-1152,-384,-576,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,128,-1152,-128,-1024,-128,-832,-192,-256,320,-448,-1344,-832,-1216,-512,-768,64,-576,-960,-896,-512,-1024,192,-1280,-192,-832,64,-768,-960,-320,-832,-960,-960,-704,-1024,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-1024,-768,-960,64,-1024,-320,128,-256,-512,-192,64,-192,-320,-448,-896,0,-1216,-960,-768,-576,-576,-192,-1216,-512,-1280,-384,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-960,192,-128,-1152,-640,-448,-384,-192,-640,-64,-704,-1024,-704,-640,-1216,-704,-512,-256,-512,-640,-256,-704,-256,-832,-704,-576,-256,-704,64,-512,-512,-704,-384,-896,-320,-256,-832,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-192,-448,128,-192,-192,-384,-192,-576,-1280,-448,-1280,-384,-576,-960,-320,-128,-64,-896,-896,-512,-384,0,-192,-640,-640,-384,-384,-320,-640,-128,-960,-960,-576,-384,-320,-448,-192,0,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-832,-384,-320,64,-960,-1024,256,-832,-768,-320,-768,-576,-64,0,-448,-960,-1088,-384,-192,-640,-256,-1472,-1216,-640,-192,-448,-512,-256,-448,-768,-960,-384,-448,-320,-576,-960,-1024,-320,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,128,-832,-384,-256,-1024,-384,-640,-256,-832,64,-896,64,-640,-320,-704,-320,-1024,-576,-960,0,-1088,-832,-192,-1088,-1024,-512,-640,-832,-256,-960,-512,-640,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-128,-1088,-384,-1088,-192,-512,-960,-320,-960,-704,-512,-960,-64,-320,-128,-704,-640,-1152,-256,-576,-768,-512,-256,-1152,-704,-896,-512,-384,-576,128,128,-704,-384,-704,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-576,-1024,-704,-768,-768,-640,-448,-1280,-1024,-704,-896,-1728,-256,-512,-1024,-64,-384,-128,-1024,-576,-832,-128,-320,-832,-640,64,-256,-384,-192,-768,-704,-960,-64,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-640,-640,-448,-128,-704,-448,-768,-1216,-448,-832,-192,-832,-384,-832,-768,-704,-448,-640,128,64,-448,-640,-768,-64,-704,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-768,-448,-384,-1152,192,-896,-384,-960,-384,-704,-512,-512,-192,-128,-832,-448,-1024,-256,-128,-576,-256,-192,-192,-832,-192,-1216,-1280,-896,-192,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-1152,-832,-640,-256,-1088,-512,-384,-1280,-320,-512,-256,-384,-1280,-1024,-896,-1216,-640,-640,-640,-1024,128,-256,-1856,-128,-1088,-512,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-960,-512,-192,128,-384,-960,-256,-128,-448,-640,-576,-960,-576,-896,-1024,-512,128,-960,-640,-640,-896,-512,-768,-128,-256,-896,-320,-448,-576,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-192,-128,-1024,-1344,-896,-320,-576,-768,-384,-832,-576,-128,-320,-512,-896,-1600,-256,-256,-448,-256,-704,-1216,-1280,128,-1088,-704,-1088,-512,-256,-64,-640,-512,-832,-1088,-1088,-1216,-448,-640,-704,-768,-448,-896,-1024,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-640,-704,-576,-1280,-1536,-448,-768,-1344,-192,-768,-896,-448,-1088,-768,-256,-1408,-704,-1088,-640,-640,-640,-1152,-1216,-1152,-768,-128,-576,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768,-832,-512,-384,-704,-256,-704,-768,-768,-384,-1344,-832,-64,-704,-256,-576,-768,0,-832,-1152,-768,-704,-704,-768,-1024,-960,-128,-960,-192,-512,-320,-640,-576,-832,192,-512,-832,-832,64,-448,-1088,-256,-256,-1344,-576,-1216,-1216,-896,-640,-1408,-960,-320,-576,-192,0,-640,-768;-960,-192,-384,1536,-384,-960,640,-1280,-448,-128,576,-768,1216,128,-1024,448,-384,-1344,-64,-640,-768,832,-832,512,704,-704,0,-896,-448,640,256,576,-384,64,-64,640,256,-1088,64,-64,1216,-768,-192,512,704,-1280,704,384,576,1088,832,-896,768,576,0,-576,704,-64,-640,-960,1024,-640,384,-384,-64,-1280,-1088,512,-384,-512,-896,-960,-1024,448,832,0,0,576,64,-1344,832,-256,-512,512,-1408,-1408,576,448,1024,384,128,-576,-576,512,704,-1280,704,384,576,1088,1216,-192,320,0,-640,512,960,256,768,-576,1088,1280,-960,1280,-1024,-64,704,-448,128,384,448,320,-1088,64,832,128,640,512,640,-640,704,-128,-960,320,-640,-704,-512,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-1152,-704,-640,-832,-768,-1408,1088,448,384,-704,0,704,-704,576,-576,640,1024,-512,768,-1088,576,-576,960,384,448,-192,320,-704,-384,448,64,-1088,320,256,448,192,704,-256,896,-1024,-576,704,-448,448,-768,-192,-448,832,-640,256,-1024,-320,-448,-768,256,832,-896,-448,448,448,512,960,-768,-256,704,-1024,64,-64,-512,448,512,448,0,-1152,-768,-384,-640,704,-768,-448,-256,-128,960,1088,320,64,-256,-832,576,64,448,640,-576,832,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-704,-704,-1088,704,-192,-1408,-704,-576,-128,-64,-448,-960,-896,-512,-1152,192,576,832,256,-320,-448,-448,960,64,1024,1088,-832,-1216,-448,-448,768,-192,1088,-448,-64,-576,-576,832,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,256,-832,960,-640,1152,1088,576,-1280,-256,64,-128,448,-832,-512,320,1408,0,-576,320,320,-512,768,-1216,-704,-768,-576,1408,704,-64,-256,1216,768,-640,576,-896,-128,-1152,-960,1280,-640,-448,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1216,64,-448,-384,960,128,64,704,-1216,1344,832,-64,64,-1152,-512,0,384,-1280,-320,-1088,-1024,-384,768,256,-128,448,320,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,-448,-1280,-64,1024,1088,-576,768,-960,-1088,-192,64,-256,768,384,-1216,384,384,-960,576,-64,-768,-256,-448,-320,-960,704,64,-384,-1024,-512,-256,320,-256,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-320,64,-576,-128,-768,-576,1536,-1088,-1088,640,576,-896,-576,-1024,768,-256,-896,384,0,-128,-192,1024,-896,128,448,-1024,-512,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,-896,960,960,1280,-832,704,704,256,-640,512,192,960,768,-704,-704,-896,-1216,-576,-704,-1024,64,-576,960,576,-896,-832,128,-576,-256,-512,192,1344,832,-768,960,-256,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-960,960,-384,-448,-704,576,448,-768,128,192,384,320,-576,1024,-64,1024,-1024,-576,384,-448,-640,896,-704,-640,-1088,256,-704,512,576,832,384,-448,384,-192,576,1472,384,-1280,-512,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,512,-448,448,-512,64,704,-1216,-1088,640,-512,-768,448,-704,768,1152,-320,-448,576,-384,576,256,896,-768,-384,576,-640,-64,-1024,704,-768,256,-896,-512,960,-448,-960,-832,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-1024,768,1152,896,-192,-640,0,-704,-448,-640,256,-896,-704,-768,-576,-832,-576,-192,-320,-640,384,-576,832,576,192,1280,640,128,-960,-576,-1152,-832,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,640,-832,448,-832,-768,1024,960,-448,-512,-832,-512,1088,-896,-1344,-1024,576,960,-448,-960,1536,-832,-576,-960,192,640,384,-320,704,-320,-1152,-960,448,-896,-1152,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,576,-512,-832,-384,1280,-704,0,-448,-128,1280,-512,-1088,-1664,-640,-896,1088,-640,-320,-832,-512,960,-1920,-64,-384,-1088,-768,896,832,-448,-640,-640,-576,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,0,832,1280,-448,-704,192,640,128,320,-384,576,640,832,-576,-1024,512,256,-1088,576,-896,-832,-1088,1088,-64,-704,-896,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,512,-512,64,-832,-768,-512,640,1216,960,832,-640,384,1024,-896,-128,1024,576,448,576,-768,-768,640,832,-128,-832,256,-1600,320,-1088,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-640,-192,512,1408,576,64,320,-320,384,640,-192,-576,192,256,320,-768,-576,-256,704,-192,256,-960,1024,640,-768,-1152,320,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-64,1152,-576,-1088,1024,192,-512,-896,640,-256,-448,-256,384,-320,-576,960,-960,0,64,-832,-192,-768,-384,-448,-1024,192,-896,-896,-576,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,576,-1408,128,320,448,-704,-832,-256,896,128,-512,-832,704,-320,-320,-192,1088,-1664,640,1408,256,128,576,-640,576,-64,832,448,768,-896,832,640,-64,-320,256,704,704,-320,-192,256,-512,128,-64,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-896,320,832,-256,896,576,-832,384,-832,1280,576,768,-1152,-384,-576,64,-448,192,-256,-192,576,384,704,320,256,832,704,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832,-448,704,-1088,896,-768,-1216,-384,448,-704,64,640,-704,-704,1280,576,-512,-960,-448,128,0,64,192,192,1408,-1600,1216,-1216,704,960,832,512,512,-192,-1088,384,64,768,-1088,-576,768,-704,384,512,896,0,256,768,-704,576,-832,640,-320,-448,-768,256,832;0,-300,0,0,0,0,-1200,-300,-900,-300,0,0,-300,300,0,600,0,300,-300,0,0,0,0,0,0,0,600,0,-600,0,0,300,600,300,0,600,0,-300,300,0,-300,0,0,-900,-300,-600,600,-600,0,-300,0,900,-300,0,0,0,300,0,-300,300,0,600,0,0,0,300,600,-600,300,-600,-300,300,300,600,-1200,0,300,0,0,900,-300,0,0,-900,0,300,-300,-300,-300,0,600,-300,0,-900,-300,-600,600,-600,0,-300,300,0,0,0,0,0,0,0,300,0,-300,-900,0,-300,0,-600,300,600,300,0,300,0,300,-300,300,300,600,0,-600,-600,-300,0,0,300,0,-900,600,0,-600,-900,600,600,-600,0,0,-300,0,-600,0,-300,0,300,-600,0,-600,-300,-300,0,0,0,0,300,-300,0,300,-600,0,0,0,0,0,0,0,600,-300,0,300,-300,300,300,300,0,300,0,600,600,600,-600,600,0,-300,-300,0,0,-600,-900,600,600,-600,0,0,-300,0,-600,0,-300,0,300,-600,0,-600,-300,300,0,0,-900,0,0,600,0,0,-600,0,0,300,0,-600,300,300,-600,0,0,-300,-300,0,0,0,600,0,-1800,0,300,300,0,0,0,-300,0,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,300,900,0,300,0,300,-600,0,-900,-300,0,0,0,-300,0,-300,-300,300,-900,600,0,-300,0,0,-900,600,-300,300,-300,300,-300,300,300,-300,-300,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,900,-600,0,300,0,0,300,300,300,-300,600,300,-300,300,0,-300,300,300,0,0,-300,0,300,-300,-300,0,0,300,300,-300,600,-300,300,-300,0,0,0,0,0,-300,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-900,600,-600,0,0,-600,0,0,0,-300,0,0,0,300,0,0,0,-600,300,0,-600,-300,-600,300,-300,0,600,600,300,1200,-300,0,-900,-600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,-300,-300,-300,-300,0,-300,0,300,0,0,0,0,300,300,0,-300,600,-300,300,0,600,300,0,0,0,0,600,300,1200,-300,0,-900,-600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-900,0,300,0,0,0,0,0,-300,300,-300,0,900,-1200,-300,-300,0,0,600,900,300,300,300,-600,-300,0,-900,0,0,-300,-600,300,600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,0,-300,0,0,0,300,-300,0,0,0,0,600,300,-300,0,-600,0,-900,-300,-600,-300,0,-300,0,-300,-300,-900,0,0,-300,-600,300,600,300,300,-600,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-600,0,300,-600,0,300,900,-600,-600,-300,0,0,300,0,-900,0,0,0,-600,0,-300,0,0,0,-300,-600,300,0,0,-300,0,600,-600,-600,0,600,0,900,300,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,600,0,600,0,900,0,300,0,0,-300,0,0,0,-900,600,-600,900,-300,-300,300,0,0,0,-300,300,300,600,0,-900,0,-300,-300,0,300,0,0,0,0,-600,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-600,0,-900,600,0,0,0,0,-300,0,-300,600,0,0,-300,300,0,300,0,0,0,-300,0,300,0,-900,1500,-300,0,600,-300,300,0,300,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-600,-300,-300,600,600,0,-300,-300,0,0,0,0,-300,0,-300,0,-300,0,0,-300,-300,-600,-900,-600,-600,0,-300,0,600,300,0,0,300,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-300,-600,0,300,600,300,0,0,-600,0,0,0,-600,0,300,0,-600,0,0,0,-600,600,-600,0,300,0,0,0,-300,0,0,-300,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,600,-300,300,600,-300,-1500,0,900,0,0,-900,-300,-300,0,0,0,300,300,0,-300,0,0,0,-300,-900,0,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,-600,300,0,300,300,0,-300,-600,0,0,600,0,0,-300,-600,300,0,300,0,0,-300,300,0,-300,0,0,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,300,300,0,0,300,0,-300,0,0,600,-300,0,-300,-300,0,-900,0,-300,0,300,-600,0,0,-600,900,600,300,-600,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,0,-300,300,300,0,0,0,0,0,-300,-300,0,0,0,-600,0,0,0,0,0,300,0,0,600,-600,0,-600,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,-300,0,-300,-300,-600,-600,0,300,-300,0,300,0,-600,300,0,-300,0,600,0,300,0,1200,-300,0,0,600,-600,0,0,300,300,0,0,-600,-300,0,0,0,0,0,-600,0,-300,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,600,-300,-300,-300,300,0,0,300,0,600,-600,0,0,-600,0,0,-600,0,300,0,0,900,-300,0,-600,600,-300,0,-300,-300,0,0,-300,600,-900,300,0,0,-300,-600,-300,300,600,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300,0,600,300,-300,-600,300,600,0,0,0,-300,0,0,0,600,-600,900,-600,0,0,300,-300,300,-600,0,300,600,0,-300,-300,0,0,-300,600,-900,300,0,0,-300,-600,-300,300,600,-900,0,0,-600,-300,-600,0,0,300,-600,0,-600,-300];
        end
        
        function GenerateSimuLinkData(app)
                sim('Coupled_Model_crosslinked_intext.slx')
                app.LengthSimth = kMtsOut(500:end,:);
        end
        
        function UpdateDataandPlot(app)
            StructureCalculate(app)
            app.MasterPointInfo.CoordPoints = horzcat(app.N_Nuf2PointInfo.CoordPoints,app.Spc29PointInfo.CoordPoints);
            app.MasterPointInfo.Color = horzcat(app.N_Nuf2PointInfo.Color,app.Spc29PointInfo.Color);
            updateplot(app)
        end
        
        function StructureCalculate(app)
            UpdateBioDistanceCorrection(app)
            N_Nuf2Calculate(app)
            Spc29Calculate(app)
        end
    
        function UpdateBioDistanceCorrection(app)
            app.BioDistanceCorrection = app.BioDistances(:,ceil(rand()*length(app.BioDistances)))/2;
        end
        
        function N_Nuf2Calculate(app)
            if app.N_Nuf2CheckBox.Value == true
                app.N_Nuf2PointInfo.CoordPoints = [];
                if strcmp(app.NumberofComplexesSwitch.Value, '1')
                    N_Nuf2Structure1(app)
                else
                    app.N_Nuf2PointInfo.CoordPoints2 = [];
                    N_Nuf2Structure2(app)
                end
                app.N_Nuf2PointInfo.Color = repmat(convertCharsToStrings(app.N_Nuf2ColorChannelDropDown.Value),1,size(app.N_Nuf2PointInfo.CoordPoints,2));
            else
                app.N_Nuf2PointInfo.CoordPoints = [];
                app.N_Nuf2PointInfo.Color = [];
            end
        end
    
        function N_Nuf2Structure1(app)
            RotationCheck = (strcmp(app.N_Nuf2RotationParametersPanel.Visible,'on')) & (app.N_Nuf2RotationCheckBox.Value == true);
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,app.N_Nuf2NumberofChromosomesSpinner.Value,app.N_Nuf2StaggerDropDown.Value,app.N_Nuf2RangenmSpinner.Value,app.LengthSimth,app.N_Nuf2StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.N_Nuf2TubuleDiameternmSpinner.Value,RotationCheck,app.N_Nuf2FixedRotationButton.Value,app.N_Nuf2XSpinner.Value,app.N_Nuf2YSpinner.Value,app.N_Nuf2ZSpinner.Value,app.N_Nuf2LowLimSpinner.Value,app.N_Nuf2UpLimSpinner.Value);
        end
    
        function N_Nuf2Structure2(app)
            RotationCheck = (strcmp(app.N_Nuf2RotationParametersPanel.Visible,'on')) & (app.N_Nuf2RotationCheckBox.Value == true);
            app.N_Nuf2PointInfo.CoordPoints = StructurePointsGenerate(app,app.N_Nuf2NumberofChromosomesSpinner.Value,app.N_Nuf2StaggerDropDown.Value,app.N_Nuf2RangenmSpinner.Value,app.LengthSimth,app.N_Nuf2StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.N_Nuf2TubuleDiameternmSpinner.Value,RotationCheck,app.N_Nuf2FixedRotationButton.Value,app.N_Nuf2XSpinner.Value,app.N_Nuf2YSpinner.Value,app.N_Nuf2ZSpinner.Value,app.N_Nuf2LowLimSpinner.Value,app.N_Nuf2UpLimSpinner.Value);
            app.N_Nuf2PointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints) - app.BioDistanceCorrection;
            app.N_Nuf2PointInfo.CoordPoints2 = StructurePointsGenerate(app,app.N_Nuf2NumberofChromosomesSpinner.Value,app.N_Nuf2StaggerDropDown.Value,app.N_Nuf2RangenmSpinner.Value,app.LengthSimth,app.N_Nuf2StructureDiameternmSpinner.Value,app.N_Nuf2NumberofFluorophoreSpinner.Value,app.N_Nuf2LengthnmSpinner.Value,app.N_Nuf2TubuleDiameternmSpinner.Value,RotationCheck,app.N_Nuf2FixedRotationButton.Value,app.N_Nuf2XSpinner.Value,app.N_Nuf2YSpinner.Value,app.N_Nuf2ZSpinner.Value,app.N_Nuf2LowLimSpinner.Value,app.N_Nuf2UpLimSpinner.Value);
            app.N_Nuf2PointInfo.CoordPoints2 = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.N_Nuf2PointInfo.CoordPoints2) + app.BioDistanceCorrection;
            app.N_Nuf2PointInfo.CoordPoints = horzcat(app.N_Nuf2PointInfo.CoordPoints, app.N_Nuf2PointInfo.CoordPoints2);
        end
    
        function Spc29Calculate(app)
            if app.Spc29CheckBox.Value == true
                app.Spc29PointInfo.CoordPoints = [];
                if strcmp(app.NumberofComplexesSwitch.Value, '1')
                    Spc29Structure1(app)
                else
                    app.Spc29PointInfo.CoordPoints2 = [];
                    Spc29Structure2(app)
                end
                app.Spc29PointInfo.Color = repmat(convertCharsToStrings(app.Spc29ColorChannelDropDown.Value),1,size(app.Spc29PointInfo.CoordPoints,2));
            else
                app.Spc29PointInfo.CoordPoints = [];
                app.Spc29PointInfo.Color = [];
            end
        end
    
        function Spc29Structure1(app)
            app.Spc29PointInfo.CoordPoints = StructurePointsGenerate(app,app.Spc29NumberofTubulesSpinner.Value,"~",0,app.LengthSimth,app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false,false,0,0,0,0,0);
            app.Spc29PointInfo.CoordPoints = app.Spc29PointInfo.CoordPoints - [app.Spc29DistancetonmSpinner.Value;0;0];
        end
    
        function Spc29Structure2(app)
            Spc29Correction = (app.BioDistanceCorrection/norm(app.BioDistanceCorrection'))*(norm(app.BioDistanceCorrection') + app.Spc29DistancetonmSpinner.Value);
            app.Spc29PointInfo.CoordPoints = StructurePointsGenerate(app,app.Spc29NumberofTubulesSpinner.Value,"~",0,app.LengthSimth,app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false,false,0,0,0,0,0);
            app.Spc29PointInfo.CoordPoints = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.Spc29PointInfo.CoordPoints) - Spc29Correction;
            app.Spc29PointInfo.CoordPoints2 = StructurePointsGenerate(app,app.Spc29NumberofTubulesSpinner.Value,"~",0,app.LengthSimth,app.Spc29StructureDiameternmSpinner.Value,app.Spc29NumberofFluorophoreSpinner.Value,app.Spc29LengthnmSpinner.Value,app.Spc29TubuleDiameternmSpinner.Value,false,false,0,0,0,0,0);
            app.Spc29PointInfo.CoordPoints2 = (RotationMatrixGenerate(app,app.BioDistanceCorrection)*app.Spc29PointInfo.CoordPoints2) + Spc29Correction;
            app.Spc29PointInfo.CoordPoints = horzcat(app.Spc29PointInfo.CoordPoints, app.Spc29PointInfo.CoordPoints2);
        end

        function updateplot(app)
            if ~isempty(app.MasterPointInfo.CoordPoints) == 1
                scatter(app.UIAxes1,app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(2,:),'filled')
                scatter(app.UIAxes2,app.MasterPointInfo.CoordPoints(2,:),app.MasterPointInfo.CoordPoints(3,:),'filled')
                scatter(app.UIAxes3,app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(3,:),'filled')
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
            MasterPointInfo = app.MasterPointInfo;
            save(strcat(app.FileFolderNameStringEditField.Value,'.mat'),'MasterPointInfo');
        end
    
        function GenerateXML(app)
            xmlstr = sprintf('<?xml version="1.0" encoding="ISO-8859-1"?><SimulatedExperiments file="C:/Users/ayush/Desktop/two_points.xml" modified="Mon Jul 23 13:30:09 2018&#10;" created="Mon Jul 23 13:30:09 2018&#10;"><Version major="2" minor="3" revision="0"/><AFMSimulation pixelSize="10.000000" imageWidth="300" imageHeight="300" clipGroundPlane="false" displayAsWireframe="false" surfaceOpacity="1.000000"/><FluorescenceSimulation focalPlaneIndex="14" focalPlaneSpacing="%.6f" numberOfFocalPlanes="%d" useCustomFocalPlanePositions="false" gain="%.6f" offset="%.6f" maximumVoxelIntensity="%.6f" pixelSize="65.000000" psfName="Gibson-Lanni Widefield" imageWidth="200" imageHeight="200" shearInX="0.000000" shearInY="0.000000" addGaussianNoise="true" noiseStdDev="%.6f" showImageVolumeOutline="false" showRefGrid="true" refGridSpacing="1000.000000" superimposeSimulatedImage="true" superimposeComparisonImage="false" minimumIntensityLevel="0.000000" maximumIntensityLevel="200.000015"><FocalPlanes>', app.SpacingBetweenPlanesnmSpinner.Value,app.NumberofPlanesSpinner.Value, app.GainEditField.Value,app.OffsetEditField.Value,app.MaxVoxelIntensityEditField.Value,app.GaussianNoiseSDEditField.Value);
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
            strtemp = strcat({'python XMLtoTIF.py -norename -out'},{' '},{app.FileFolderNameStringEditField.Value},{' '},{app.FileFolderNameStringEditField.Value});
            system(strtemp{1}); 
        end
    
        function CylinderCoordPoints = CylinderFluorophorePoints(app,NumberofFluorophore,Length,TubuleDiameter,RotationCheck,FixedRotationCheck,XSpinner,YSpinner,ZSpinner,LowLimSpinner,UpLimSpinner)
                CylinderCoordPoints = zeros(3,NumberofFluorophore);
                for PointIdx = 1:NumberofFluorophore
                    CylinderCoordPoints(1,PointIdx) = Length*(rand()-0.5);
                    CoordAng = rand()*2*pi;
                    CylinderCoordPoints(2,PointIdx) = cos(CoordAng)*TubuleDiameter/2;
                    CylinderCoordPoints(3,PointIdx) = sin(CoordAng)*TubuleDiameter/2;
                end
                if RotationCheck % Allow for rotation of the initial coordinates
                    if FixedRotationCheck == true % Rotation that is fixed for each axis
                        CylinderCoordPoints = rotx(XSpinner)*roty(YSpinner)*rotz(ZSpinner)*CylinderCoordPoints;
                    else % Rotation that is random, but confined to a certain range of possible angles 
                        randanglediff = UpLimSpinner - LowLimSpinner;
                        CylinderCoordPoints = roty(rand()*randanglediff+LowLimSpinner)*rotz(rand()*randanglediff+LowLimSpinner)*CylinderCoordPoints;
                    end
                end
        end
        
        function StructurePoints = StructurePointsGenerate(app,NumberCylinders,Stagger,RandomRange,StaggerSample,StructureDiameter,NumberofFluorophore,Length,TubuleDiameter,RotationCheck,FixedRotationCheck,XSpinner,YSpinner,ZSpinner,LowLimSpinner,UpLimSpinner)
            StructurePoints = [];
            CoordAdjustment = zeros(3,1);
                for angle = 0:(2*pi/NumberCylinders):(2*pi-2*pi/NumberCylinders)
                    if strcmp(Stagger,'Random')
                        CoordAdjustment(1,1) = (rand()-0.5)*(RandomRange*2);
                    end
                    if strcmp(Stagger,'SimuLink Data (Stevens et al.)') & NumberCylinders <= 32
                        CoordAdjustment(1,1) = (StaggerSample(ceil(rand()*size(StaggerSample,1)),ceil(rand()*size(StaggerSample,2)))-3.5e-07)*1e9;
                    end
                    CoordAdjustment(2,1) = cos(angle)*StructureDiameter/2;
                    CoordAdjustment(3,1) = sin(angle)*StructureDiameter/2;
                    CylinderCoordPoints = CylinderFluorophorePoints(app,NumberofFluorophore,Length,TubuleDiameter,RotationCheck,FixedRotationCheck,XSpinner,YSpinner,ZSpinner,LowLimSpinner,UpLimSpinner);
                    StructurePoints = horzcat(StructurePoints, (CylinderCoordPoints + CoordAdjustment));
                end
        end
        
        function rotation = RotationMatrixGenerate(app,vector)
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
            app.MasterPointInfo.CoordPointsCorrect = app.MasterPointInfo.CoordPoints + [6500;6500;((app.NumberofPlanesSpinner.Value-1)/2)*app.SpacingBetweenPlanesnmSpinner.Value]
        end
    end

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            GeneralParametreCheck(app)
            SaveBioDistanceData(app)
            GenerateSimuLinkData(app)
            UpdateDataandPlot(app)
        end

        % Callback function: N_Nuf2CheckBox, N_Nuf2RotationCheckBox, 
        % N_Nuf2RotationParametersPanel, N_Nuf2StaggerDropDown
        function N_Nuf2StructureParameterChange(app, event)
            N_Nuf2ParametersCheck(app)
            N_Nuf2ParameterLocationCheck(app)
            UpdateDataandPlot(app) 
        end

        % Callback function: N_Nuf2ColorChannelDropDown, 
        % N_Nuf2LengthnmSpinner, N_Nuf2LowLimSpinner, 
        % N_Nuf2NumberofChromosomesSpinner, 
        % N_Nuf2NumberofFluorophoreSpinner, N_Nuf2RangenmSpinner, 
        % N_Nuf2StructureDiameternmSpinner, 
        % N_Nuf2TubuleDiameternmSpinner, N_Nuf2UpLimSpinner, 
        % N_Nuf2XSpinner, N_Nuf2YSpinner, N_Nuf2ZSpinner
        function N_Nuf2StructureValueChange(app, event)
            UpdateDataandPlot(app)
        end

        % Callback function: FileFolderNameStringEditField, 
        % GenerateTIFsCheckBox, GenerateXMLCheckBox, SaveMATFileCheckBox
        function OutputParameterChange(app, event)
            OutputParameterCheck(app)
            OutputParameterLocationCheck(app)
        end

        % Button pushed function: GenerateOutputButton
        function GenerateOutputButtonPushed(app, event)
            if isempty(app.MasterPointInfo.CoordPoints) == 1
                app.StatusEditField.Value = 'No Structure Has Been Selected';
            else
                app.StatusEditField.Value = 'Saving/Writing/Taking Pictures. Please Hold.';
                app.FileFolderNameStringEditField.Value = strtrim(app.FileFolderNameStringEditField.Value);
                TestOrCreateDirectory(app)
                cd(app.FileFolderNameStringEditField.Value)
                if app.SaveMATFileCheckBox.Value == true
                    SaveMasterPointInfo(app);
                end
                MasterPointInforCorrection(app)
                if app.GenerateXMLCheckBox.Value == true
                    GenerateXML(app);
                end
                cd ..
                if strcmp(app.MicroscopeSimulatorParametersPanel.Visible,'on') & app.GenerateTIFsCheckBox.Value == true
                        GenerateTIF(app)
                end
                app.StatusEditField.Value = 'Finished!';
            end
        end

        % Button pushed function: DViewPopOutButton
        function DViewPopOutButtonPushed(app, event)
            if ~isempty(app.MasterPointInfo.CoordPoints) == 1
                figure()
                scatter3(app.MasterPointInfo.CoordPoints(1,:),app.MasterPointInfo.CoordPoints(2,:),app.MasterPointInfo.CoordPoints(3,:),'filled')
                rotate3d on
            end
        end

        % Selection changed function: AxisLimitsButtonGroup
        function AxisLimitsParameterChange(app, event)
            AxisParameterCheck(app)
            updateplot(app)
        end

        % Value changed function: XLowerLimnmEditField1, 
        % XLowerLimnmEditField2, XLowerLimnmEditField3, 
        % XUpperLimnmEditField1, XUpperLimnmEditField2, 
        % XUpperLimnmEditField3, YLowerLimnmEditField1, 
        % YLowerLimnmEditField2, YLowerLimnmEditField3, 
        % YUpperLimnmEditField1, YUpperLimnmEditField2, 
        % YUpperLimnmEditField3
        function AxisLimitsValueChange(app, event)
            updateplot(app)
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

        % Value changed function: NumberofComplexesSwitch
        function ComplexParameterChange(app, event)
            UpdateDataandPlot(app)
        end

        % Value changed function: Spc29CheckBox
        function Spc29StructureParmeterChange(app, event)
            Spc29ParametersCheck(app)
            UpdateDataandPlot(app)
        end

        % Callback function: Spc29ColorChannelDropDown, 
        % Spc29DistancetonmSpinner, Spc29LengthnmSpinner, 
        % Spc29NumberofFluorophoreSpinner, Spc29NumberofTubulesSpinner, 
        % Spc29StructureDiameternmSpinner, Spc29TubuleDiameternmSpinner
        function Spc29StructureValueChange(app, event)
            UpdateDataandPlot(app)
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
            app.N_Nuf2StructurePanel.FontName = 'Arial';
            app.N_Nuf2StructurePanel.FontSize = 16;
            app.N_Nuf2StructurePanel.Position = [20 482 260 313];

            % Create N_Nuf2TubuleDiameternmSpinnerLabel
            app.N_Nuf2TubuleDiameternmSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2TubuleDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2TubuleDiameternmSpinnerLabel.Position = [1 267 145 22];
            app.N_Nuf2TubuleDiameternmSpinnerLabel.Text = 'Tubule Diameter (nm)';

            % Create N_Nuf2StructureDiameternmSpinnerLabel
            app.N_Nuf2StructureDiameternmSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2StructureDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2StructureDiameternmSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2StructureDiameternmSpinnerLabel.Position = [1 246 145 22];
            app.N_Nuf2StructureDiameternmSpinnerLabel.Text = 'Structure Diameter (nm)';

            % Create N_Nuf2NumberofFluorophoreSpinnerLabel
            app.N_Nuf2NumberofFluorophoreSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Position = [1 225 145 22];
            app.N_Nuf2NumberofFluorophoreSpinnerLabel.Text = 'Number of Fluorophore';

            % Create N_Nuf2ColorChannelDropDownLabel
            app.N_Nuf2ColorChannelDropDownLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDownLabel.HorizontalAlignment = 'center';
            app.N_Nuf2ColorChannelDropDownLabel.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDownLabel.Position = [1 183 145 22];
            app.N_Nuf2ColorChannelDropDownLabel.Text = 'Color Channel';

            % Create N_Nuf2NumberofChromosomesSpinnerLabel
            app.N_Nuf2NumberofChromosomesSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofChromosomesSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofChromosomesSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2NumberofChromosomesSpinnerLabel.Position = [1 204 143 22];
            app.N_Nuf2NumberofChromosomesSpinnerLabel.Text = 'Number of Chromosomes';

            % Create N_Nuf2LengthnmSpinnerLabel
            app.N_Nuf2LengthnmSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2LengthnmSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2LengthnmSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2LengthnmSpinnerLabel.Position = [1 288 145 22];
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
            app.N_Nuf2LengthnmSpinner.Position = [145 288 66 22];
            app.N_Nuf2LengthnmSpinner.Value = 2;

            % Create N_Nuf2TubuleDiameternmSpinner
            app.N_Nuf2TubuleDiameternmSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2TubuleDiameternmSpinner.Step = 5;
            app.N_Nuf2TubuleDiameternmSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2TubuleDiameternmSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2TubuleDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2TubuleDiameternmSpinner.Limits = [0 Inf];
            app.N_Nuf2TubuleDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2TubuleDiameternmSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2TubuleDiameternmSpinner.FontName = 'Arial';
            app.N_Nuf2TubuleDiameternmSpinner.Position = [145 267 66 22];
            app.N_Nuf2TubuleDiameternmSpinner.Value = 25;

            % Create N_Nuf2StructureDiameternmSpinner
            app.N_Nuf2StructureDiameternmSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2StructureDiameternmSpinner.Step = 10;
            app.N_Nuf2StructureDiameternmSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2StructureDiameternmSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2StructureDiameternmSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2StructureDiameternmSpinner.Limits = [0 Inf];
            app.N_Nuf2StructureDiameternmSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2StructureDiameternmSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2StructureDiameternmSpinner.FontName = 'Arial';
            app.N_Nuf2StructureDiameternmSpinner.Position = [145 246 66 22];
            app.N_Nuf2StructureDiameternmSpinner.Value = 250;

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
            app.N_Nuf2NumberofFluorophoreSpinner.Position = [145 225 66 22];
            app.N_Nuf2NumberofFluorophoreSpinner.Value = 20;

            % Create N_Nuf2ColorChannelDropDown
            app.N_Nuf2ColorChannelDropDown = uidropdown(app.N_Nuf2StructurePanel);
            app.N_Nuf2ColorChannelDropDown.Items = {'All', 'Green', 'Red', 'Blue'};
            app.N_Nuf2ColorChannelDropDown.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2ColorChannelDropDown.FontName = 'Arial';
            app.N_Nuf2ColorChannelDropDown.Position = [145 183 66 22];
            app.N_Nuf2ColorChannelDropDown.Value = 'All';

            % Create N_Nuf2NumberofChromosomesSpinner
            app.N_Nuf2NumberofChromosomesSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2NumberofChromosomesSpinner.LowerLimitInclusive = 'off';
            app.N_Nuf2NumberofChromosomesSpinner.UpperLimitInclusive = 'off';
            app.N_Nuf2NumberofChromosomesSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2NumberofChromosomesSpinner.Limits = [0 Inf];
            app.N_Nuf2NumberofChromosomesSpinner.RoundFractionalValues = 'on';
            app.N_Nuf2NumberofChromosomesSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2NumberofChromosomesSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2NumberofChromosomesSpinner.FontName = 'Arial';
            app.N_Nuf2NumberofChromosomesSpinner.Position = [145 204 66 22];
            app.N_Nuf2NumberofChromosomesSpinner.Value = 16;

            % Create N_Nuf2StaggerDropDownLabel
            app.N_Nuf2StaggerDropDownLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2StaggerDropDownLabel.HorizontalAlignment = 'right';
            app.N_Nuf2StaggerDropDownLabel.Position = [4 155 48 22];
            app.N_Nuf2StaggerDropDownLabel.Text = 'Stagger';

            % Create N_Nuf2StaggerDropDown
            app.N_Nuf2StaggerDropDown = uidropdown(app.N_Nuf2StructurePanel);
            app.N_Nuf2StaggerDropDown.Items = {'None', 'Random', 'SimuLink Data (Stevens et al.)'};
            app.N_Nuf2StaggerDropDown.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureParameterChange, true);
            app.N_Nuf2StaggerDropDown.Position = [58 154 187 22];
            app.N_Nuf2StaggerDropDown.Value = 'None';

            % Create N_Nuf2RangenmSpinnerLabel
            app.N_Nuf2RangenmSpinnerLabel = uilabel(app.N_Nuf2StructurePanel);
            app.N_Nuf2RangenmSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2RangenmSpinnerLabel.Visible = 'off';
            app.N_Nuf2RangenmSpinnerLabel.Position = [44 126 87 22];
            app.N_Nuf2RangenmSpinnerLabel.Text = 'Range +/- (nm)';

            % Create N_Nuf2RangenmSpinner
            app.N_Nuf2RangenmSpinner = uispinner(app.N_Nuf2StructurePanel);
            app.N_Nuf2RangenmSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2RangenmSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2RangenmSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2RangenmSpinner.Visible = 'off';
            app.N_Nuf2RangenmSpinner.Position = [133 126 78 22];

            % Create N_Nuf2RotationPanel
            app.N_Nuf2RotationPanel = uipanel(app.N_Nuf2StructurePanel);
            app.N_Nuf2RotationPanel.BorderType = 'none';
            app.N_Nuf2RotationPanel.Position = [1 37 260 106];

            % Create N_Nuf2RotationParametersPanel
            app.N_Nuf2RotationParametersPanel = uibuttongroup(app.N_Nuf2RotationPanel);
            app.N_Nuf2RotationParametersPanel.SelectionChangedFcn = createCallbackFcn(app, @N_Nuf2StructureParameterChange, true);
            app.N_Nuf2RotationParametersPanel.BorderType = 'none';
            app.N_Nuf2RotationParametersPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.N_Nuf2RotationParametersPanel.HandleVisibility = 'off';
            app.N_Nuf2RotationParametersPanel.Position = [4 5 251 84];

            % Create N_Nuf2FixedRotationButton
            app.N_Nuf2FixedRotationButton = uiradiobutton(app.N_Nuf2RotationParametersPanel);
            app.N_Nuf2FixedRotationButton.Text = 'Fixed Rotation';
            app.N_Nuf2FixedRotationButton.Position = [25 63 99 19];
            app.N_Nuf2FixedRotationButton.Value = true;

            % Create N_Nuf2RandomRotationButton
            app.N_Nuf2RandomRotationButton = uiradiobutton(app.N_Nuf2RotationParametersPanel);
            app.N_Nuf2RandomRotationButton.Text = 'Random Rotation';
            app.N_Nuf2RandomRotationButton.Position = [125 62 115 20];

            % Create N_Nuf2RandomRotationParametersdegPanel
            app.N_Nuf2RandomRotationParametersdegPanel = uipanel(app.N_Nuf2RotationParametersPanel);
            app.N_Nuf2RandomRotationParametersdegPanel.BorderType = 'none';
            app.N_Nuf2RandomRotationParametersdegPanel.TitlePosition = 'centertop';
            app.N_Nuf2RandomRotationParametersdegPanel.Title = 'Random Rotation Parameters (deg.)';
            app.N_Nuf2RandomRotationParametersdegPanel.Visible = 'off';
            app.N_Nuf2RandomRotationParametersdegPanel.Position = [12 0 233 51];

            % Create N_Nuf2LowLimSpinnerLabel
            app.N_Nuf2LowLimSpinnerLabel = uilabel(app.N_Nuf2RandomRotationParametersdegPanel);
            app.N_Nuf2LowLimSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2LowLimSpinnerLabel.Position = [2 3 56 22];
            app.N_Nuf2LowLimSpinnerLabel.Text = 'Low. Lim.';

            % Create N_Nuf2LowLimSpinner
            app.N_Nuf2LowLimSpinner = uispinner(app.N_Nuf2RandomRotationParametersdegPanel);
            app.N_Nuf2LowLimSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2LowLimSpinner.Limits = [0 360];
            app.N_Nuf2LowLimSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2LowLimSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2LowLimSpinner.Position = [63 3 51 22];

            % Create N_Nuf2UpLimSpinnerLabel
            app.N_Nuf2UpLimSpinnerLabel = uilabel(app.N_Nuf2RandomRotationParametersdegPanel);
            app.N_Nuf2UpLimSpinnerLabel.HorizontalAlignment = 'center';
            app.N_Nuf2UpLimSpinnerLabel.Position = [128 3 50 22];
            app.N_Nuf2UpLimSpinnerLabel.Text = 'Up. Lim.';

            % Create N_Nuf2UpLimSpinner
            app.N_Nuf2UpLimSpinner = uispinner(app.N_Nuf2RandomRotationParametersdegPanel);
            app.N_Nuf2UpLimSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2UpLimSpinner.Limits = [0 360];
            app.N_Nuf2UpLimSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2UpLimSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2UpLimSpinner.Position = [178 3 52 22];

            % Create N_Nuf2FixedRotationParametersdegPanel
            app.N_Nuf2FixedRotationParametersdegPanel = uipanel(app.N_Nuf2RotationParametersPanel);
            app.N_Nuf2FixedRotationParametersdegPanel.BorderType = 'none';
            app.N_Nuf2FixedRotationParametersdegPanel.TitlePosition = 'centertop';
            app.N_Nuf2FixedRotationParametersdegPanel.Title = 'Fixed Rotation Parameters (deg.)';
            app.N_Nuf2FixedRotationParametersdegPanel.Position = [12 3 233 49];

            % Create N_Nuf2XSpinnerLabel
            app.N_Nuf2XSpinnerLabel = uilabel(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2XSpinnerLabel.HorizontalAlignment = 'right';
            app.N_Nuf2XSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2XSpinnerLabel.Position = [10 2 10 22];
            app.N_Nuf2XSpinnerLabel.Text = 'X';

            % Create N_Nuf2XSpinner
            app.N_Nuf2XSpinner = uispinner(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2XSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2XSpinner.Limits = [0 360];
            app.N_Nuf2XSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2XSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2XSpinner.FontName = 'Arial';
            app.N_Nuf2XSpinner.Position = [23 2 51 22];

            % Create N_Nuf2YSpinnerLabel
            app.N_Nuf2YSpinnerLabel = uilabel(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2YSpinnerLabel.HorizontalAlignment = 'right';
            app.N_Nuf2YSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2YSpinnerLabel.Position = [88 2 10 22];
            app.N_Nuf2YSpinnerLabel.Text = 'Y';

            % Create N_Nuf2YSpinner
            app.N_Nuf2YSpinner = uispinner(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2YSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2YSpinner.Limits = [0 360];
            app.N_Nuf2YSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2YSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2YSpinner.FontName = 'Arial';
            app.N_Nuf2YSpinner.Position = [101 2 51 22];

            % Create N_Nuf2ZSpinnerLabel
            app.N_Nuf2ZSpinnerLabel = uilabel(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2ZSpinnerLabel.HorizontalAlignment = 'right';
            app.N_Nuf2ZSpinnerLabel.FontName = 'Arial';
            app.N_Nuf2ZSpinnerLabel.Position = [165 2 10 22];
            app.N_Nuf2ZSpinnerLabel.Text = 'Z';

            % Create N_Nuf2ZSpinner
            app.N_Nuf2ZSpinner = uispinner(app.N_Nuf2FixedRotationParametersdegPanel);
            app.N_Nuf2ZSpinner.ValueChangingFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2ZSpinner.Limits = [0 360];
            app.N_Nuf2ZSpinner.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureValueChange, true);
            app.N_Nuf2ZSpinner.HorizontalAlignment = 'center';
            app.N_Nuf2ZSpinner.FontName = 'Arial';
            app.N_Nuf2ZSpinner.Position = [178 2 51 22];

            % Create N_Nuf2RotationCheckBox
            app.N_Nuf2RotationCheckBox = uicheckbox(app.N_Nuf2RotationPanel);
            app.N_Nuf2RotationCheckBox.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureParameterChange, true);
            app.N_Nuf2RotationCheckBox.Text = '';
            app.N_Nuf2RotationCheckBox.Position = [142 87 16 21];

            % Create N_Nuf2RotationLabel
            app.N_Nuf2RotationLabel = uilabel(app.N_Nuf2RotationPanel);
            app.N_Nuf2RotationLabel.FontSize = 14;
            app.N_Nuf2RotationLabel.Position = [83 86 58 22];
            app.N_Nuf2RotationLabel.Text = 'Rotation';

            % Create N_Nuf2CheckBox
            app.N_Nuf2CheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.N_Nuf2CheckBox.ValueChangedFcn = createCallbackFcn(app, @N_Nuf2StructureParameterChange, true);
            app.N_Nuf2CheckBox.Text = '';
            app.N_Nuf2CheckBox.Position = [190 798 14 23];

            % Create OutputPanel
            app.OutputPanel = uipanel(app.StaticKinetUIFigure);
            app.OutputPanel.BorderType = 'none';
            app.OutputPanel.TitlePosition = 'centertop';
            app.OutputPanel.Title = 'Output';
            app.OutputPanel.FontName = 'Arial';
            app.OutputPanel.FontSize = 26;
            app.OutputPanel.Position = [801 430 298 393];

            % Create FileFolderNameStringLabel
            app.FileFolderNameStringLabel = uilabel(app.OutputPanel);
            app.FileFolderNameStringLabel.HorizontalAlignment = 'right';
            app.FileFolderNameStringLabel.Position = [8 321 136 22];
            app.FileFolderNameStringLabel.Text = 'File/Folder Name String:';

            % Create FileFolderNameStringEditField
            app.FileFolderNameStringEditField = uieditfield(app.OutputPanel, 'text');
            app.FileFolderNameStringEditField.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.ValueChangingFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.FileFolderNameStringEditField.HorizontalAlignment = 'center';
            app.FileFolderNameStringEditField.Position = [146 321 130 22];

            % Create GenerateXMLCheckBox
            app.GenerateXMLCheckBox = uicheckbox(app.OutputPanel);
            app.GenerateXMLCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.GenerateXMLCheckBox.Text = 'Generate XML';
            app.GenerateXMLCheckBox.Position = [99 269 100 22];

            % Create SaveMATFileCheckBox
            app.SaveMATFileCheckBox = uicheckbox(app.OutputPanel);
            app.SaveMATFileCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.SaveMATFileCheckBox.Text = 'Save MAT File';
            app.SaveMATFileCheckBox.Position = [99 290 100 22];

            % Create MicroscopeSimulatorParametersPanel
            app.MicroscopeSimulatorParametersPanel = uipanel(app.OutputPanel);
            app.MicroscopeSimulatorParametersPanel.BorderType = 'none';
            app.MicroscopeSimulatorParametersPanel.TitlePosition = 'centertop';
            app.MicroscopeSimulatorParametersPanel.Title = 'Microscope Simulator Parameters';
            app.MicroscopeSimulatorParametersPanel.Visible = 'off';
            app.MicroscopeSimulatorParametersPanel.Position = [7 115 287 152];

            % Create GainLabel
            app.GainLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GainLabel.HorizontalAlignment = 'center';
            app.GainLabel.Position = [9 53 30 22];
            app.GainLabel.Text = 'Gain:';

            % Create GainEditField
            app.GainEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GainEditField.UpperLimitInclusive = 'off';
            app.GainEditField.Limits = [0 Inf];
            app.GainEditField.HorizontalAlignment = 'center';
            app.GainEditField.Position = [39 53 64 22];
            app.GainEditField.Value = 260;

            % Create OffsetLabel
            app.OffsetLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.OffsetLabel.HorizontalAlignment = 'center';
            app.OffsetLabel.Position = [7 26 41 22];
            app.OffsetLabel.Text = 'Offset:';

            % Create OffsetEditField
            app.OffsetEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.OffsetEditField.UpperLimitInclusive = 'off';
            app.OffsetEditField.Limits = [0 Inf];
            app.OffsetEditField.HorizontalAlignment = 'center';
            app.OffsetEditField.Position = [56 26 50 22];

            % Create GaussianNoiseSDLabel
            app.GaussianNoiseSDLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.GaussianNoiseSDLabel.HorizontalAlignment = 'center';
            app.GaussianNoiseSDLabel.Position = [106 53 113 22];
            app.GaussianNoiseSDLabel.Text = 'Gaussian Noise SD:';

            % Create GaussianNoiseSDEditField
            app.GaussianNoiseSDEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.GaussianNoiseSDEditField.UpperLimitInclusive = 'off';
            app.GaussianNoiseSDEditField.Limits = [0 Inf];
            app.GaussianNoiseSDEditField.HorizontalAlignment = 'center';
            app.GaussianNoiseSDEditField.Position = [219 53 65 22];

            % Create MaxVoxelIntensityLabel
            app.MaxVoxelIntensityLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.MaxVoxelIntensityLabel.HorizontalAlignment = 'right';
            app.MaxVoxelIntensityLabel.Position = [107 27 111 22];
            app.MaxVoxelIntensityLabel.Text = 'Max. Voxel Intensity:';

            % Create MaxVoxelIntensityEditField
            app.MaxVoxelIntensityEditField = uieditfield(app.MicroscopeSimulatorParametersPanel, 'numeric');
            app.MaxVoxelIntensityEditField.UpperLimitInclusive = 'off';
            app.MaxVoxelIntensityEditField.Limits = [0 Inf];
            app.MaxVoxelIntensityEditField.HorizontalAlignment = 'center';
            app.MaxVoxelIntensityEditField.Position = [221 27 60 22];
            app.MaxVoxelIntensityEditField.Value = 200;

            % Create GenerateTIFsCheckBox
            app.GenerateTIFsCheckBox = uicheckbox(app.MicroscopeSimulatorParametersPanel);
            app.GenerateTIFsCheckBox.ValueChangedFcn = createCallbackFcn(app, @OutputParameterChange, true);
            app.GenerateTIFsCheckBox.Text = 'Generate TIFs';
            app.GenerateTIFsCheckBox.Position = [99 0 99 22];

            % Create NumberofPlanesSpinnerLabel
            app.NumberofPlanesSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinnerLabel.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinnerLabel.Position = [65 105 102 22];
            app.NumberofPlanesSpinnerLabel.Text = 'Number of Planes';

            % Create NumberofPlanesSpinner
            app.NumberofPlanesSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.NumberofPlanesSpinner.LowerLimitInclusive = 'off';
            app.NumberofPlanesSpinner.UpperLimitInclusive = 'off';
            app.NumberofPlanesSpinner.Limits = [0 Inf];
            app.NumberofPlanesSpinner.HorizontalAlignment = 'center';
            app.NumberofPlanesSpinner.Position = [171 105 51 22];
            app.NumberofPlanesSpinner.Value = 7;

            % Create SpacingBetweenPlanesnmSpinnerLabel
            app.SpacingBetweenPlanesnmSpinnerLabel = uilabel(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinnerLabel.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinnerLabel.Position = [25 79 167 22];
            app.SpacingBetweenPlanesnmSpinnerLabel.Text = 'Spacing Between Planes (nm)';

            % Create SpacingBetweenPlanesnmSpinner
            app.SpacingBetweenPlanesnmSpinner = uispinner(app.MicroscopeSimulatorParametersPanel);
            app.SpacingBetweenPlanesnmSpinner.Step = 50;
            app.SpacingBetweenPlanesnmSpinner.LowerLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.UpperLimitInclusive = 'off';
            app.SpacingBetweenPlanesnmSpinner.Limits = [0 Inf];
            app.SpacingBetweenPlanesnmSpinner.HorizontalAlignment = 'center';
            app.SpacingBetweenPlanesnmSpinner.Position = [196 79 66 22];
            app.SpacingBetweenPlanesnmSpinner.Value = 300;

            % Create StatusOutputPanel
            app.StatusOutputPanel = uipanel(app.OutputPanel);
            app.StatusOutputPanel.Position = [2 161 296 103];

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

            % Create N_Nuf2StructureLabel
            app.N_Nuf2StructureLabel = uilabel(app.StaticKinetUIFigure);
            app.N_Nuf2StructureLabel.FontName = 'Arial';
            app.N_Nuf2StructureLabel.FontSize = 18;
            app.N_Nuf2StructureLabel.Position = [55 798 136 22];
            app.N_Nuf2StructureLabel.Text = 'N-Terminal Nuf2';

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
            app.NumberofComplexesSwitchLabel.Position = [470 829 125 22];
            app.NumberofComplexesSwitchLabel.Text = 'Number of Complexes';

            % Create NumberofComplexesSwitch
            app.NumberofComplexesSwitch = uiswitch(app.StaticKinetUIFigure, 'slider');
            app.NumberofComplexesSwitch.Items = {'1', '2'};
            app.NumberofComplexesSwitch.ValueChangedFcn = createCallbackFcn(app, @ComplexParameterChange, true);
            app.NumberofComplexesSwitch.FontName = 'Arial';
            app.NumberofComplexesSwitch.Position = [612 831 42 19];
            app.NumberofComplexesSwitch.Value = '1';

            % Create Spc29StructurePanel
            app.Spc29StructurePanel = uipanel(app.StaticKinetUIFigure);
            app.Spc29StructurePanel.BorderType = 'none';
            app.Spc29StructurePanel.FontName = 'Arial';
            app.Spc29StructurePanel.FontSize = 16;
            app.Spc29StructurePanel.Position = [283 643 221 155];

            % Create Spc29TubuleDiameternmSpinnerLabel
            app.Spc29TubuleDiameternmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29TubuleDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29TubuleDiameternmSpinnerLabel.Position = [1 90 145 22];
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
            app.Spc29TubuleDiameternmSpinner.Position = [145 90 66 22];
            app.Spc29TubuleDiameternmSpinner.Value = 25;

            % Create Spc29StructureDiameternmSpinnerLabel
            app.Spc29StructureDiameternmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29StructureDiameternmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29StructureDiameternmSpinnerLabel.FontName = 'Arial';
            app.Spc29StructureDiameternmSpinnerLabel.Position = [1 69 145 22];
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
            app.Spc29StructureDiameternmSpinner.Position = [145 69 66 22];
            app.Spc29StructureDiameternmSpinner.Value = 250;

            % Create Spc29NumberofFluorophoreSpinnerLabel
            app.Spc29NumberofFluorophoreSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29NumberofFluorophoreSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29NumberofFluorophoreSpinnerLabel.FontName = 'Arial';
            app.Spc29NumberofFluorophoreSpinnerLabel.Position = [1 48 145 22];
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
            app.Spc29NumberofFluorophoreSpinner.Position = [145 48 66 22];
            app.Spc29NumberofFluorophoreSpinner.Value = 20;

            % Create Spc29ColorChannelDropDownLabel
            app.Spc29ColorChannelDropDownLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29ColorChannelDropDownLabel.HorizontalAlignment = 'center';
            app.Spc29ColorChannelDropDownLabel.FontName = 'Arial';
            app.Spc29ColorChannelDropDownLabel.Position = [1 6 145 22];
            app.Spc29ColorChannelDropDownLabel.Text = 'Color Channel';

            % Create Spc29ColorChannelDropDown
            app.Spc29ColorChannelDropDown = uidropdown(app.Spc29StructurePanel);
            app.Spc29ColorChannelDropDown.Items = {'All', 'Green', 'Red', 'Blue'};
            app.Spc29ColorChannelDropDown.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29ColorChannelDropDown.FontName = 'Arial';
            app.Spc29ColorChannelDropDown.Position = [145 6 66 22];
            app.Spc29ColorChannelDropDown.Value = 'All';

            % Create Spc29NumberofTubulesSpinnerLabel
            app.Spc29NumberofTubulesSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29NumberofTubulesSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29NumberofTubulesSpinnerLabel.FontName = 'Arial';
            app.Spc29NumberofTubulesSpinnerLabel.Position = [19 27 107 22];
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
            app.Spc29NumberofTubulesSpinner.Position = [145 27 66 22];
            app.Spc29NumberofTubulesSpinner.Value = 16;

            % Create Spc29LengthnmSpinnerLabel
            app.Spc29LengthnmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29LengthnmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29LengthnmSpinnerLabel.FontName = 'Arial';
            app.Spc29LengthnmSpinnerLabel.Position = [1 130 145 22];
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
            app.Spc29LengthnmSpinner.Position = [145 130 66 22];
            app.Spc29LengthnmSpinner.Value = 2;

            % Create Spc29DistancetonmSpinnerLabel
            app.Spc29DistancetonmSpinnerLabel = uilabel(app.Spc29StructurePanel);
            app.Spc29DistancetonmSpinnerLabel.HorizontalAlignment = 'center';
            app.Spc29DistancetonmSpinnerLabel.Position = [18 111 112 22];
            app.Spc29DistancetonmSpinnerLabel.Text = 'Distance to (+) (nm)';

            % Create Spc29DistancetonmSpinner
            app.Spc29DistancetonmSpinner = uispinner(app.Spc29StructurePanel);
            app.Spc29DistancetonmSpinner.Step = 10;
            app.Spc29DistancetonmSpinner.UpperLimitInclusive = 'off';
            app.Spc29DistancetonmSpinner.ValueChangingFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29DistancetonmSpinner.Limits = [0 Inf];
            app.Spc29DistancetonmSpinner.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureValueChange, true);
            app.Spc29DistancetonmSpinner.HorizontalAlignment = 'center';
            app.Spc29DistancetonmSpinner.Position = [145 111 66 22];
            app.Spc29DistancetonmSpinner.Value = 350;

            % Create Spc29CheckBox
            app.Spc29CheckBox = uicheckbox(app.StaticKinetUIFigure);
            app.Spc29CheckBox.ValueChangedFcn = createCallbackFcn(app, @Spc29StructureParmeterChange, true);
            app.Spc29CheckBox.Text = '';
            app.Spc29CheckBox.Position = [421 798 14 23];

            % Create Spc29StructureLabel
            app.Spc29StructureLabel = uilabel(app.StaticKinetUIFigure);
            app.Spc29StructureLabel.FontName = 'Arial';
            app.Spc29StructureLabel.FontSize = 18;
            app.Spc29StructureLabel.Position = [364 797 57 22];
            app.Spc29StructureLabel.Text = 'Spc29';
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