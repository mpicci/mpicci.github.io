unwrapped_cut=unwrapped(148:342,178:487);
imshow(unwrapped_cut)

figure
hold on
grid on
y=10
x=5:1:size(unwrapped_cut,1)
plot(unwrapped_cut(y,x),'b')
y=30
plot(unwrapped_cut(y,x),'y')
y=60
plot(unwrapped_cut(y,x),'k')
y=90
plot(unwrapped_cut(y,x),'r')
y=120
plot(unwrapped_cut(y,x),'g')
y=150
plot(unwrapped_cut(y,x),'c')
y=170
plot(unwrapped_cut(y,x),'m')
y=190
plot(unwrapped_cut(y,x),'or')



p=polyfit(double(x'),double(unwrapped_cut(100,x))',1)
yfit=polyval(p,x')
plot(x,yfit,'s')

yresid = double(unwrapped_cut(100,x))' - yfit;

SSresid = sum(yresid.^2);

SStotal = (length(unwrapped_cut(100,:))-1) * var(double(unwrapped_cut(100,:)));

rsq = 1 - SSresid/SStotal