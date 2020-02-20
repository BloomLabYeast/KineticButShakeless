function out = runme()
me = dir(pwd);
files = cell(1,10);
cnt = 1;
for i = 1:length(me)
    if contains(me(i).name, 'Batch')||contains(me(i).name,'new')
        continue
    elseif contains(me(i).name, 'MTAxisat')||contains(me(i).name,'80FIXED')
        files{1,cnt} = me(i).name;
        cnt = cnt+1;
    end
end
for n = 1:length(files)
    cd(files{1,n});
    current = dir(pwd);
    for i = 1:length(current)
        if contains(current(i).name, 'FIXED.mat')
            here = current(i).name;
            data = load(here);
            xcoords = [data.data.filterCell{4,5}(2),data.data.filterCell{4,6}(2)];
            ycoords = [data.data.filterCell{4,5}(1),data.data.filterCell{4,6}(1)];
            imshow(max(data.data.filterCell{4,9}, [], 3), []); hold on; scatter(xcoords, ycoords); hold off;
        end
    end
    w = waitforbuttonpress;
    cd ..
end
out = 1;
end