function SimulatedImagesPreProcess
mkdir('ColorCombine')
cd('ColorCombine')
mkdir('Images')
mkdir('Quarantine')
cd ..
folderlist = dir('*_tif');
for folderidx = 1:numel(folderlist)
    cd(folderlist(folderidx).name)
    filelist = dir('*.tif');
    for fileidx = 1:numel(filelist)
        [dimensions] = Max3DProjection(filelist(fileidx).name);
    end
    ColorCombine(dimensions)
    cd ..
end
cd('ColorCombine')
cd('Images')
ThreshCheck
cd ..
cd ..
end

        
