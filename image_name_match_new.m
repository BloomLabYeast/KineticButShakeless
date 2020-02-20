function name_struct = image_name_match_new(directory, field1nopattern, field2nopattern, field3nopattern)

    %Input: 
        %file_struct: file struct created using simdatacopy that has images with
        %unique endings (e.g. R.tif and G.tif)
        
        %field1nopattern: the last portion of your file after the final delimiter
        %(e.g. G.tif) for the first set of files. No pattern recognition is
        %needed (e.g. *).
        
        %field2nopattern: the last portion of your file after the final delimiter
        %(e.g. R.tif) for the second set of files. No pattern recognition
        %is needed (e.g. *).
        
    %Output: 
        %name_cell: structure array with field names of each unique group of files (field one and field two),
        %and the files with those unique file endings in numerical order.
        
%initialize the cell array to hold split up file names
file_struct = dir(directory);
% cell_array = cell(4,numel(file_struct));
name_struct = struct();
%loop through and split each file name and store it in cell array
% for n = 1:length(file_struct)
%     if file_struct(n).bytes > 0
%         split = strsplit(file_struct(n).name, '_');
%         cell_array{1,n} = split{1};
%         cell_array{2,n} = split{2};
%         cell_array{3,n} = split{3};
%         cell_array{4,n} = split{4};
%     end
% end
% %create a cell array that has values sorted numerically (will be 00001,
% %etc.)
% sorted_array = unique(cell_array);
 cnt1 = 1;
 cnt2 = 1;
 cnt3 = 1;
% for n = 1:numel(sorted_array)
%     %get rid of the sorted_array value = 0 case brought up by sorted_array because this will
%     %ruin the whole loop (e.g. if '0000' then loop is ruined becuase they all share this pattern typically)
%     number = str2double(sorted_array{n});
%     if ~(number > 0)
%         sorted_array{n} = 'NaN';
%     end
    %check each file to see if it matches our sorted_array, and then check
    %to see which field it belongs in (field 1 or field 2)
    for i = 1:numel(file_struct)
        if contains(file_struct(i).name, '_TIF')
            original = pwd;
            location = file_struct(i).name;
            cd(location);
            files = dir(pwd);
            for n = 1:numel(files)
                if files(n).bytes > 0
                    if contains(files(n).name, field1nopattern)
                        name_struct(cnt1).fieldone = fullfile(files(n).folder,files(n).name);
                        cnt1 = cnt1+1;
                    elseif contains(files(n).name, field2nopattern)
                        name_struct(cnt2).fieldtwo = fullfile(files(n).folder,files(n).name);
                        cnt2 = cnt2+1;
                    elseif contains(files(n).name, field3nopattern)
                        name_struct(cnt3).fieldthree = fullfile(files(n).folder,files(n).name);
                        cnt3 = cnt3+1;
                    end
                end
                cd(original);
            end
        end
    end
end
