function SimulatedImagesPreProcess
mkdir('ColorCombine')
cd('ColorCombine')
mkdir('Images')
mkdir('Quarantine')
cd ..
folderlist = dir('*_TIF');
f = waitbar(0,'Editing and Color Combining Images');
for folderidx = 1:numel(folderlist)
    cd(folderlist(folderidx).name)
    filelist = dir('*.tif');
    for fileidx = 1:numel(filelist)
        [dimensions] = Max3DProjection(filelist(fileidx).name);
    end
    ColorCombine(folderlist(folderidx).name,dimensions)
    cd ..
    waitbar(folderidx/numel(folderlist),f,sprintf('%d/%d - Editing and Color Combining Images',folderidx,numel(folderlist)));
end
close(f)
cd('ColorCombine')
cd('Images')
warning('off','all')
ThreshCheck
cd ..
cd ..
end