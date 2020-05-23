%% make heatmap

    
figure1=figure
set(figure1,'Position',[0,0,1600,800]);    
x=4:1:16;
y=0.55:-0.005:0.49;
z=xlsread('Data Source RDC.xlsx','sheet1');


surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.2 0.8])
xlim([4 16])
ylim([0.49 0.55])

xlabel('Weeks','fontweight','bold','fontsize',27);
ylabel('Therapy 2','fontweight','bold','fontsize',27);
set(gca,'linewidth',3,'fontsize',27,'fontweight','bold','YTick', 0.49:0.01:0.55,'XTick',4:2:16);   
