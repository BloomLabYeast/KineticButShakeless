function PreProcessManual(folderstring, email)
cd(folderstring);
mkdir('ColorCombine')
cd('ColorCombine')
mkdir('Images')
mkdir('Quarantine')
cd ..
folderlist = dir('*_TIF');
for folderidx = 1:numel(folderlist)
    cd(folderlist(folderidx).name)
    filelist = dir('*.tif');
    for fileidx = 1:numel(filelist)
        [dimensions] = Max3DProjection(filelist(fileidx).name);
    end
    ColorCombine(folderlist(folderidx).name,dimensions)
    cd ..
end
close(f)
cd('ColorCombine')
cd('Images')
warning('off','all')
ThreshCheck
cd ..
cd ..
cd ..
SendEmail(folderstring,email,"Finished preprocessing images");