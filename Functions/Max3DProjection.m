function [dimensions] = Max3DProjection(filename)
[~,name,~] = fileparts(filename);
name = erase(name,'_0000');
bfdata = bfopen(filename);
imdata = bf2mat(bfdata);
maxprojection = max(imdata,[],3);
maxprojection = double(maxprojection);
normmax = round((maxprojection - min(min(maxprojection)))/(max(max(maxprojection)) - min(min(maxprojection)))*4095);
bfsave(uint16(normmax),strcat(name,'_NormMax.tiff'));
dimensions = size(normmax);
end