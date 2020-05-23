%% Fig S2(A)
w1=24;
w2=2;

s1=[-pi/2 pi/2];
s=[-pi/2:.002:pi/2];

y1=0.5+(1/pi)*asin(sin(w1*s));
y2=0.5+(1/pi)*asin(sin(w2*s));

plot(s,y1,'k','linewidth',3.5)

hold on

plot(s,y2,'k--','linewidth',3.5)
xticks([-1*pi/2 0 1*pi/2])
xlim(s1);
ylim([0 1]);
xlabel('s','fontweight','bold','fontsize',47,'FontAngle', 'italic');
xticklabels({'-\pi/2','0','\pi/2'});
ylabel('q_i,q_j','fontweight','bold','fontsize',47,'FontAngle', 'italic');
set(gca,'linewidth',5,'fontsize',27,'fontweight','bold','YTick', 0:0.2:1);
box off

%% Fig S2(B)

scatter(y1,y2,'LineWidth',2.7,'MarkerEdgeColor','k')
xlabel('q_j','fontweight','bold','fontsize',47,'FontAngle', 'italic');
ylabel('q_i','fontweight','bold','fontsize',47,'FontAngle', 'italic');
set(gca,'linewidth',5,'fontsize',27,'fontweight','bold','XTick',0:0.2:1,'YTick', 0:0.2:1);

%% Fig S2(C)

scatter(y1,y2,'k')
xlim([0 1]);
ylim([0 1]);
xlabel('\itq_1','fontweight','bold','fontsize',47);
ylabel('\itq_2','fontweight','bold','fontsize',47);
set(gca,'linewidth',5,'fontsize',27,'fontweight','bold','YTick', 0:0.2:1,'XTick',0:0.2:1);
box on;


x=[0:1:200];
mu=100;
sigma=20;
p = normcdf(x,mu,sigma);
plot(x,p,'k','linewidth',3.5)

xlim([0 200]);
ylim([0 1]);
xlabel('\itX','fontweight','bold','fontsize',47);
ylabel('\itq','fontweight','bold','fontsize',47);
set(gca,'linewidth',5,'fontsize',27,'fontweight','bold','YTick', 0:0.2:1,'XTick',0:50:200);


