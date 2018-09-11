%#eml
function [on] = freeToSinglekMt(free, Lip, Llap, LkMt)
onRate = 1; % the motor on rate = 1/mM*sec, depends on concentration of tubulin
tubulinConc = 34; % NOTE: unit in mM
% constants are from Kerry's student's thesis.
freeconc = free/200;
on =round(freeconc * onRate * tubulinConc * LkMt/(Llap+Lip+LkMt)); % the motor on rate
                                % assumed to be distributed uniformly over
                                % the length of the microtubules, which
                                % includes L,RkMt, as well as the ipMts.
if on > free
    on = free;
end
