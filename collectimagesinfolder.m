function collectimagesinfolder(directory,newfoldername, pattern)
file_struct = dir(fullfile(directory, pattern));
mkdir(newfoldername);
addpath(newfoldername);
thisdirectory = pwd;
for i = 1:length(file_struct)
    files = dir(file_struct(i).name);
    cd(file_struct(i).name);
    for n = 1:length(files)
        if files(n).bytes > 0
            copyfile(files(n).name, fullfile(thisdirectory,newfoldername));
        end
    end
    cd(thisdirectory);
end
end
    