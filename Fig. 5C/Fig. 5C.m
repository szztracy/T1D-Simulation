%% make heatmap

    
figure1=figure
set(figure1,'Position',[0,0,1600,800]);    

x=4:1:16;
y=1.8:-0.05:1.2;
z=xlsread('Data Source MCD.xlsx','sheet1');


surface(x,y,z);  
colorbar
colormap(jet)
shading interp
caxis([0.2 0.8])
xlim([4 16])
ylim([1.2 1.8])

xlabel('Weeks','fontweight','bold','fontsize',27);
ylabel('Therapy 3','fontweight','bold','fontsize',27);
set(gca,'linewidth',3,'fontsize',27,'fontweight','bold','YTick', 1.2:0.1:1.8,'XTick',4:2:16);   
