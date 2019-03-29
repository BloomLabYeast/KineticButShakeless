%#eml
function [on] = singleToDouble(singleBound, Llap, Lip)
% this function approximates how many motors over the overlap
% region attach to both ipMt.
if Lip>=Llap
    overlapMotors = round(singleBound*(2*Llap/(Llap+Lip))); % this approximates the number of motors over the overlap region
                  % note: 2*Llap/(2*Llap + Lip - Llap) = 2*Llap/(Lap+Lip)
else
    overlapMotors = 0;
    error('Overlap Zone is Larger than Spindle Length');
end
on = 0; % counter
for i = 1:overlapMotors
    r = rand();
    if r<0.12 % XXX stub probability 
        on = on+1;
    end
end
end