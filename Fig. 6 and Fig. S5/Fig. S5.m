
fontsize=15;

figure1=figure
set(figure1,'Position',[0,0,1600,800]);    

x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 6.xlsx','sheet2');

subplot(3,3,1)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 6')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);


%%
x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 10.xlsx','sheet2');

subplot(3,3,2)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 10')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);

%%
x=84:6:120;
y=0.55:-0.01:0.49;
z=xlsread('CTL DC 14.xlsx','sheet2');

subplot(3,3,3)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([0.49 0.55])

title('Week 14')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',84:6:120);

%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive86.xlsx','sheet2');

subplot(3,3,4)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 6')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);

%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive810.xlsx','sheet2');

subplot(3,3,5)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 10')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);

%%
x=84:6:120;
y=1.8:-0.1:1.2;
z=xlsread('CTLNaive814.xlsx','sheet2');

subplot(3,3,6)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([84 120])
ylim([1.2 1.8])

title('Week 14')
xlabel('Therapy 1','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 3','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',84:6:120);


%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 6.xlsx','sheet2');

subplot(3,3,7)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 6')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);

%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 10.xlsx','sheet2');

subplot(3,3,8)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 10')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);

%%
x=1.2:0.1:1.8;
y=0.55:-0.01:0.49;
z=xlsread('CD8 DC 14.xlsx','sheet2');

subplot(3,3,9)
surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.1 0.9])
xlim([1.2 1.8])
ylim([0.49 0.55])

title('Week 14')
xlabel('Therapy 3','fontweight','bold','fontsize',fontsize);
ylabel('Therapy 2','fontweight','bold','fontsize',fontsize);
set(gca,'linewidth',3,'fontsize',fontsize,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',1.2:0.2:1.8);

