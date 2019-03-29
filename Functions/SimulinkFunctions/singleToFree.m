%#eml
function [off] = singleToFree(singleBound)
offRate = 0.3; % the motor off rate = 0.3/sec
off = round(singleBound*offRate);
