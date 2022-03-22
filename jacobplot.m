%This script plots the sparsity of the IEEE 14 Bus Jacobian Matrix
%Author: Mostafa Farrokhabadi

%Base plot
imagesc(abs(J))

%Adding the color bar
colorbar

%Creating a smooth color map from white to black
map = [1 1 1
    0 0 0];

for i = 0:0.0001:1
    j=round(i*10000+1);
    map(j,1)=1-i;
    map(j,2)=1-i;
    map(j,3)=1-i;
end

%Creating the sparsity plot
colormap(map)