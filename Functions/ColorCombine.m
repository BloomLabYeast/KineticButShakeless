function ColorCombine(dimensions)
RedDir = dir('*_R_*.tiff');
GreenDir = dir('*_G_*.tiff');
BlueDir = dir('*_B_*.tiff');
for img = 1:8
    if numel(RedDir) ~= 0
        RedChannel = imread(RedDir(img).name);
        [~,name,~] = fileparts(RedDir(img).name);
        name = erase(name, '_R_NormMax');
    else
        RedChannel = uint16(zeros(dimensions));
    end
    if numel(GreenDir) ~= 0
        GreenChannel = imread(GreenDir(img).name);
        [~,name,~] = fileparts(GreenDir(img).name);
        name = erase(name, '_G_NormMax');
    else
        GreenChannel = uint16(zeros(dimensions));
    end
    if numel(BlueDir) ~= 0
        BlueChannel = imread(BlueDir(img).name);
        [~,name,~] = fileparts(BlueDir(img).name);
        name = erase(name, '_B_NormMax');
    else
        BlueChannel = uint16(zeros(dimensions));
    end
    RGBImg = cat(3,RedChannel, GreenChannel, BlueChannel);
    filename = strcat(name,'_ColorCombine.tiff');
    imwrite(uint16(RGBImg),filename);
    copyfile(filename,'..\ColorCombine\Images')
end
end