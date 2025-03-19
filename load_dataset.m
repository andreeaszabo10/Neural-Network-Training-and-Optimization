function [X, y] = load_dataset(path)
  
  % am incarcat datele din fisier
  data = load(path);
  % am impartit datele in matricea X si vectorul y
  X = data.X;
  y = data.y;
endfunction
