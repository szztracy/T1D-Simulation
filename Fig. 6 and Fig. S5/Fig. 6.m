fontsize=15;

figure4=figure
set(figure4,'Position',[0,0,1600,800]);    

x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 4.xlsx','sheet2');

subplot(3,4,1)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 4')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);   

%%
x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 8.xlsx','sheet2');

subplot(3,4,2)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 8')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);

%%
x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 12.xlsx','sheet2');

subplot(3,4,3)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 12')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);
%%
x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 16.xlsx','sheet2');

subplot(3,4,4)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 16')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);

%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive84.xlsx','sheet2');

subplot(3,4,5)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 4')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120); 

%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive88.xlsx','sheet2');

subplot(3,4,6)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 8')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);
%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive812.xlsx','sheet2');

subplot(3,4,7)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 12')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);
%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive816.xlsx','sheet2');

subplot(3,4,8)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 16')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);

%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 4.xlsx','sheet2');

subplot(3,4,9)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 4')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);   

%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 8.xlsx','sheet2');

subplot(3,4,10)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 8')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);
%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 12.xlsx','sheet2');

subplot(3,4,11)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 12')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);

%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 16.xlsx','sheet2');

subplot(3,4,12)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 16')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);
