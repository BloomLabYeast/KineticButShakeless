%#eml
function off = doubleToSingle(doubleBound)
off=0;
for i = 1:doubleBound
    P_star = rand; % P_star will tell if it actually falls off or not.
    if P_star < 0.3
        off = off + 1;
    end
end
    
end