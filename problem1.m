
aa = xlsread('A2.xlsx');
bb = xlsread('A1.xlsx');
width = sum(bb>0);  
[wmax, largest] = max(width);
[wmin, smallestn] = min(width);
imagesc(bb)
hold on
plot([largest,smallestn; largest smallestn],[0 0; 512 512],'w')
set(gca,'xtick', smallestn-180:30:smallestn:30:180)
set(gca,'xticklabel', [smallestn-180:30:smallestn:30:180]-smallestn)
theta0 = -smallestn
d = 80/sum(bb(:,largest)>0)
idx = find(bb(:,largest)>0);
y0 = (256-(max(idx)+min(idx))/2 )*d
idx = find(bb(:,smallestn)>0);
idx = idx(idx>100);
x0 = -(256-(max(idx)+min(idx))/2 )*d
xb = [-50  50 50 -50 -50]';
yb = [-50 -50 50  50 -50]';
t = linspace(0,2*pi,90);
xi = 15*cos(t);
yi = 40*sin(t);
xi2 = 4*cos(t)+45;
yi2 = 4*sin(t);
figure
fill(xb, yb,[0.6,0.6,0.6])
hold on
fill(xi,yi,'g', xi2, yi2,'g')
plot(x0,y0,'bx')
axis image
axis([-50 50 -50 50])
text(x0-5,y0-7,sprintf('(%6.4f,%6.4f)', x0, y0))
