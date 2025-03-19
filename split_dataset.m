function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  
  % am calculat numarul de elemente cu ajutorul procentului
  number = floor(percent * size(X, 1));
  % am adaugat elementele pana la numarul calculat
  X_train = X(1 : number, :);
  y_train = y(1 : number, :);
  % am adaugat elementele ramase
  X_test = X(number + 1 : end, :);
  y_test = y(number + 1 : end, :);
  
endfunction
