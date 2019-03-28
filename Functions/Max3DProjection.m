function [dimensions] = Max3DProjection(filestruct)
[~,name,~] = fileparts(filestruct.name);
name = erase(name,'_0000_');
imdata = bf2mat(bfopen2([filestruct.folder filesep filestruct.name]));
maxprojection = max(imdata,[],3);
maxprojection = double(maxprojection);
normmax = round((maxprojection - min(min(maxprojection)))/(max(max(maxprojection)) - min(min(maxprojection)))*4095);
bfsave(uint16(wiener2(normmax)),[filestruct.folder filesep name '_NormMax_1.tiff']);
bfsave(imrotate(uint16(wiener2(normmax)),90),[filestruct.folder filesep name '_NormMax_2.tiff']);
bfsave(imrotate(uint16(wiener2(normmax)),180),[filestruct.folder filesep name '_NormMax_3.tiff']);
bfsave(imrotate(uint16(wiener2(normmax)),270),[filestruct.folder filesep name '_NormMax_4.tiff']);
bfsave(flip(uint16(wiener2(normmax))),[filestruct.folder filesep name '_NormMax_5.tiff']);
bfsave(imrotate(flip(uint16(wiener2(normmax))),90),[filestruct.folder filesep name '_NormMax_6.tiff']);
bfsave(imrotate(flip(uint16(wiener2(normmax))),180),[filestruct.folder filesep name '_NormMax_7.tiff']);
bfsave(imrotate(flip(uint16(wiener2(normmax))),270),[filestruct.folder filesep name '_NormMax_8.tiff']);
dimensions = size(normmax);
end