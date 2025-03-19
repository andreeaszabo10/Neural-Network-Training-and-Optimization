function [matrix] = initialize_weights(L_prev, L_next)
 
  % am initializat matricea si am calculat e-ul dupa formula
  matrix = zeros(L_next, L_prev + 1);
  e = sqrt(6) / sqrt(L_next + L_prev);
  % pentru fiecare element al matricei am generat un numar din range-ul (-e,e)
  for i = 1 : L_next
    for j = 1 : L_prev + 1
      matrix = 2 * rand(L_next, L_prev+1) * e - e;
    endfor
  endfor
  
endfunction
