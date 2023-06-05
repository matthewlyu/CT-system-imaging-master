s = 0.2778;
center = -33.5*s; 
yc = 20*s;       
vv = xlsread('A3.xlsx');
vv = [zeros(100,180); vv; zeros(100,180)];
imagesc(vv)
figure
img = iradon(vv,[0:179]-90-150);
n = size(img,1);
[x, y] = meshgrid([-n/2:n/2]*s);
imagesc(x(1,:),y(:,1),img')
hold on
plot(center,yc,'ok')
xp = [-50  50 50 -50 -50]';
yp = [-50 -50 50  50 -50]';
[xp, yp] = rotxy(xp, yp, -yc, -center, 0); 
plot(yp,xp,'-w')
axis image