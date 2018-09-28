folderlist = dir('Stagger*');
commandstring = 'python.exe BrownianXMLtoTIFF.py ';
commandstring = strcat(commandstring,{' '}, '-green ');
commandstring = strcat(commandstring,{' '}, '-red ');
commandstring = strcat(commandstring,{' '}, '-out %s %s');
parfor n = 1:numel(folderlist)
    [~,basename,~] = fileparts(folderlist(n).name);
    newfolderbase = basename(:end-5);
    system(sprintf(commandstring{1}, strcat(newfolderbase,'_TIF'), basename))
end