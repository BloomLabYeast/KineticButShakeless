function SimulatedImagesPreProcess
mkdir('ColorCombine')
cd('ColorCombine')
mkdir('Images')
mkdir('Quarantine')
cd ..
folderlist = dir('*_TIF');
parfor folderidx = 1:numel(folderlist)
    path = [pwd filesep folderlist(folderidx).name filesep '*.tif']
    filelist = dir(path);
    for fileidx = 1:numel(filelist)
        [dimensions] = Max3DProjection(filelist(fileidx));
    end
    ColorCombine(folderlist(folderidx).name,dimensions)
end
cd('ColorCombine')
cd('Images')
warning('off','all')
ThreshCheck
cd ..
cd ..
end