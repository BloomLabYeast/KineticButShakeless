function ColorCombine(foldername,dimensions)
RedDir = dir('*R_*.tiff');
GreenDir = dir('*G_*.tiff');
BlueDir = dir('*B_*.tiff');
if numel(RedDir) == 0 && numel(GreenDir) == 0 && numel(BlueDir) == 0
    failID = fopen('..\FailedCC.txt','a');
    fprintf(failID,strcat(foldername,'\n'));
    fclose all;
    return 
end
for img = 1:8
    if numel(RedDir) ~= 0
        RedChannel = imread(RedDir(img).name);
        [~,name,~] = fileparts(RedDir(img).name);
        name = erase(name, 'R_NormMax');
    else
        RedChannel = uint16(zeros(dimensions));
    end
    if numel(GreenDir) ~= 0
        GreenChannel = imread(GreenDir(img).name);
        [~,name,~] = fileparts(GreenDir(img).name);
        name = erase(name, 'G_NormMax');
    else
        GreenChannel = uint16(zeros(dimensions));
    end
    if numel(BlueDir) ~= 0
        BlueChannel = imread(BlueDir(img).name);
        [~,name,~] = fileparts(BlueDir(img).name);
        name = erase(name, 'B_NormMax');
    else
        BlueChannel = uint16(zeros(dimensions));
    end
    RGBImg = cat(3,RedChannel, GreenChannel, BlueChannel);
    filename = strcat(name,'_ColorCombine.tiff');
    imwrite(uint16(RGBImg),filename);
    copyfile(filename,'..\ColorCombine\Images')
end
end