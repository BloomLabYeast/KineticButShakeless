function ColorCombine(dimensions)
RedDir = dir('*_R_*.tiff');
GreenDir = dir('*_G_*.tiff');
BlueDir = dir('*_B_*.tiff');
if numel(RedDir) == 1
    RedChannel = imread(RedDir(1).name);
    [~,name,~] = fileparts(RedDir(1).name);
    name = erase(name, '_R_NormMax');
else
    RedChannel = uint16(zeros(dimensions));
end
if numel(GreenDir) == 1
    GreenChannel = imread(GreenDir(1).name);
    [~,name,~] = fileparts(GreenDir(1).name);
    name = erase(name, '_G_NormMax');
else
    GreenChannel = uint16(zeros(dimensions));
end
if numel(BlueDir) == 1
    BlueChannel = imread(BlueDir(1).name);
    [~,name,~] = fileparts(BlueDir(1).name);
    name = erase(name, '_B_NormMax');
else
    BlueChannel = uint16(zeros(dimensions));
end
RGBImg = cat(3,RedChannel, GreenChannel, BlueChannel);
filename = strcat(name,'_ColorCombine.tiff');
bfsave(uint16(RGBImg),filename);
copyfile(filename,'..\ColorCombine\Images')
end