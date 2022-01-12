function Y = oneHotEncoding(y, num_labels)
  m = size(y, 1);
  
  I = eye(num_labels);
  
  Y = zeros(size(y, 1), num_labels);
  
for i = 1:m
    Y(i,:) = I(y(i),:);
    
endfor 
  
  
  
  
end