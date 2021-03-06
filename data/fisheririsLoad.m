function [X,y,classnames,varnames] = fisheririsLoad()

load fisheriris % meas 150x4, species 150x1 cell array
X  = meas;
classnames = {'setosa', 'versicolor', 'virginica'};
varnames = {'sepal length', 'sepal width', 'petal length', 'petal width'};
y = zeros(1,150);
for c=1:3
  ndx = strmatch(classnames{c},species);
  y(ndx) = c;
end
save('C:\kmurphy\pmtk2\data\irisData.mat', 'X', 'y', 'classnames', 'varnames');