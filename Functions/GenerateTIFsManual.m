function GenerateTIFsManual(folderstring,colorarrayRGB,email)
cd(folderstring)
folderlist = dir(sprintf('%s*',folderstring));
commandstring = 'python.exe BrownianXMLtoTIFF.py ';
if min(colorarrayRGB) ~= 0 || max(colorarrayRGB) ~= 1 || size(colorarrayRGB,1) ~= 1 || size(colorarrayRGB,2) ~= 3
    disp('Color array not properly organized')
    return
else
    colorarrayRGB = logical(colorarrayRGB);
    if colorarrayRGB(1)
        commandstring = strcat(commandstring,{' '}, '-red ');
    end
    if colorarrayRGB(2)
        commandstring = strcat(commandstring,{' '}, '-green ');
    end
    if colorarrayRGB(3)
        commandstring = strcat(commandstring,{' '}, '-blue ');
    end
    commandstring = strcat(commandstring,{' '}, '-out %s %s');
end
parfor n = 1:numel(folderlist)
    [~,basename,~] = fileparts(folderlist(n).name);
    newfolderbase = basename(1:end-5);
    system(sprintf(commandstring{1}, strcat(newfolderbase,'_TIF'), basename))
    folder = strcat(newfolderbase,'_TIF');
    path = [pwd filesep folder filesep '*_0000_*'];
    ImagesGenerated = dir(path);
    if numel(ImagesGenerated) == 0
        SendEmail(folder,email,"ERROR! - TIF's are not being generated properly. Terminating simulation. Please fix me!")
        error("ERROR! - TIF's are not being generated properly. Terminating simulation. Please fix me!")
    end
    imgtotest = bf2mat(bfopen2([ImagesGenerated(1).folder filesep ImagesGenerated(1).name]));
    if max(imgtotest,[],'all') == 0
        SendEmail(folder,email,"ERROR! - PSF is not working properly. Terminating simulation. Please fix me!")
        error("ERROR! - PSF is not working properly. Terminating simulation. Please fix me!");
    end 
end
SendEmail(folderstring,email,"TIF's have been generated!");
end