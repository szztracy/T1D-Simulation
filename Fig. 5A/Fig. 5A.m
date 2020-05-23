%% make heatmap

figure1=figure
set(figure1,'Position',[0,0,1600,800]);    

x=[4,5,6,7,8,9,10,11,12,13,14,15,16];

y=120:-3:84;

z=xlsread('Average Lifespan of CTL.xlsx','sheet1');


surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.2 0.8])
xlim([4 16])
ylim([84 120])

xlabel('Weeks','fontweight','bold','fontsize',27);
ylabel('Therapy 1','fontweight','bold','fontsize',27);
set(gca,'linewidth',3,'fontsize',27,'fontweight','bold','YTick', 84:6:120,'XTick',4:2:16);   
