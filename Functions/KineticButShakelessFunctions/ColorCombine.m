function ColorCombine(foldername,dimensions)
    RedDir = dir([pwd filesep foldername filesep '*_R_*.tiff']);
    GreenDir = dir([pwd filesep foldername filesep '*_G_*.tiff']);
    BlueDir = dir([pwd filesep foldername filesep '*_B_*.tiff']);
    if numel(RedDir) == 0 && numel(GreenDir) == 0 && numel(BlueDir) == 0
        failID = fopen([pwd filesep 'FailedCC.txt'],'a');
        fprintf(failID,strcat(foldername,'\n'));
        fclose all;
        return 
    end
    for img = 1:8
        if numel(RedDir) ~= 0
            RedChannel = imread([RedDir(img).folder filesep RedDir(img).name]);
            [~,name,~] = fileparts(RedDir(img).name);
            name = erase(name, '_R_NormMax');
        else
            RedChannel = uint16(zeros(dimensions));
        end
        if numel(GreenDir) ~= 0
            GreenChannel = imread([GreenDir(img).folder filesep GreenDir(img).name]);
            [~,name,~] = fileparts(GreenDir(img).name);
            name = erase(name, '_G_NormMax');
        else
            GreenChannel = uint16(zeros(dimensions));
        end
        if numel(BlueDir) ~= 0
            BlueChannel = imread([BlueDir(img).folder filesep BlueDir(img).name]);
            [~,name,~] = fileparts(BlueDir(img).name);
            name = erase(name, '_B_NormMax');
        else
            BlueChannel = uint16(zeros(dimensions));
        end
        RGBImg = cat(3,RedChannel, GreenChannel, BlueChannel);
        imwrite(uint16(RGBImg),[pwd filesep foldername filesep name '_ColorCombine.tiff']);
        imwrite(uint16(RGBImg),[pwd filesep 'ColorCombine' filesep 'Images' filesep name '_ColorCombine.tiff']);
    end
end