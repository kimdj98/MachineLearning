for i = [1 2 3 4],
  for j = [1 2 3 4]
  printf("%d%d \n",i,j);
  endfor
endfor


model = svmTrain(X, y, 1, @(x1, x2) gaussianKernel(x1, x2, 1));
predictions = svmPredict(model, Xval);
new_precision = mean(double(predictions ~= yval));