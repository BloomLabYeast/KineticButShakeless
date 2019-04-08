function RecursiveRename(ToReplace, ReplaceWith)
filesFull = dir([pwd,filesep,'**',filesep, sprintf('%s*',ToReplace)]);
files = filesFull(~[filesFull.isdir]);
parfor idx = 1:numel(files)
    movefile([files(idx).folder,filesep,files(idx).name],[files(idx).folder,filesep,strrep(files(idx).name,ToReplace,ReplaceWith)]);
end
files = flip(filesFull([filesFull.isdir]));
for idx = 1:numel(files)
    try
        movefile([files(idx).folder,filesep,files(idx).name],[files(idx).folder,filesep,strrep(files(idx).name,ToReplace,ReplaceWith)]);
    catch
        continue
    end
end
