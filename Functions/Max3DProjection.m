function [dimensions] = Max3DProjection(filename)
[~,name,~] = fileparts(filename);
name = erase(name,'_0000_');
bfdata = bfopen2(filename);
imdata = bf2mat(bfdata);
maxprojection = max(imdata,[],3);
maxprojection = double(maxprojection);
normmax = round((maxprojection - min(min(maxprojection)))/(max(max(maxprojection)) - min(min(maxprojection)))*4095);
bfsave(uint16(wiener2(normmax)),strcat(name,'_NormMax_1.tiff'));
bfsave(imrotate(uint16(wiener2(normmax)),90),strcat(name,'_NormMax_2.tiff'));
bfsave(imrotate(uint16(wiener2(normmax)),180),strcat(name,'_NormMax_3.tiff'));
bfsave(imrotate(uint16(wiener2(normmax)),270),strcat(name,'_NormMax_4.tiff'));
bfsave(flip(uint16(wiener2(normmax))),strcat(name,'_NormMax_5.tiff'));
bfsave(imrotate(flip(uint16(wiener2(normmax))),90),strcat(name,'_NormMax_6.tiff'));
bfsave(imrotate(flip(uint16(wiener2(normmax))),180),strcat(name,'_NormMax_7.tiff'));
bfsave(imrotate(flip(uint16(wiener2(normmax))),270),strcat(name,'_NormMax_8.tiff'));
dimensions = size(normmax);
end