clear

x1 = linspace(0,deg2rad(360),500);

y1 = [];

for time1 = x1
    
    output1 = time1.*exp(-time1);
    
    y1(end+1) = output1;
    
end

y2 = [];

for time2 = x1
    
   output2 = 2^cos(time2);
   
   y2(end+1) = output2;
end



fig_0 = figure("Name","Zero Figure");
plot(x1,y1)

legend("f(x)= x.e^{-x}")
title("f(x) visualized")
saveas(fig_0, "fig_0_plot.png");


fig_1 = figure("Name","First Figure");
plot(x1,y2)

legend("y(x)= 2^{cos(x)}")
title("y(x) visualized")
saveas(fig_1, "fig_1_plot.png");


unit_step_res_0= [];

for t = -5:0.1:12.7
    
   if t > 0
       
       unit_step_res_0(end+1) = 1;
   
   else
       unit_step_res_0(end+1) = 0;
       
   end
    
end


unit_step_res_3= [];

for t = -5:0.1:12.7
    
   if t > 3
       
       unit_step_res_3(end+1) = 1;
   
   else
       unit_step_res_3(end+1) = 0;
       
   end
    
end

func_res = [];

x_val_3 = [-5:0.1:12.7];
    
for t = 1:length(x_val_3)
    
    res = x_val_3(t).*sin(deg2rad(360).*t).*(unit_step_res_0(t)-unit_step_res_3(t));
    
    func_res(end+1) = res;
    
end

t = [-5:0.01:12.71];

x = t.*sin(2*pi*t);

t1 = -5:0.01:0;
t2 = 0:0.01:12.7;

u_1 = zeros(size(t1));
u_2 = ones(size(t2));

t3 = [t1 t2];
u = [u_1, u_2];

t4 = -5:0.01:3;
t5 = 3:0.01:12.7;

u_3 = zeros(size(t4));
u_4 = ones(size(t5));

t_three = [t4 t5];
u_three = [u_3, u_4];


%%
fig_2 = figure("Name","Second Figure");
plot(t, t.*sin(2.*pi.*t).*(u-u_three))
xlabel("Time")
ylabel("System Output")

legend("x(t) = t.sin(2.pi.t).(u(t) - u(t-3))")
title("x(t) visualized")
saveas(fig_2, "fig_2_plot.png");


%%
fig_3 = figure("Name","Third Figure");
plot(t3, u)
xlabel("Time")
ylabel("System Output")
ylim([-0.3, 1.3])

legend("u(t)")
title("u(t) visualized")
saveas(fig_3, "fig_3_plot.png");
%%

fig_4 = figure("Name","Fourth Figure");
plot(t_three, u_three)
xlabel("Time")
ylabel("System Output")
ylim([-0.3, 1.3])

legend("u(t-3)")
title("u(t-3) visualized")
saveas(fig_4, "fig_4_plot.png");

%% 

fig_5 = figure("Name","Fifth Figure");
plot(t_three, (u-u_three))
xlabel("Time")
ylabel("System Output")
ylim([-0.3, 1.3])

legend("u(t)-u(t-3))")
title("u(t)-u(t-3) visualized")
saveas(fig_5, "fig_5_plot.png");

%%

fig_6 = figure("Name", "Sixth Figure");
plot(t_three, (u-u_three), t, t.*sin(2.*pi.*t).*(u-u_three))

xlabel("Time")
ylabel("System Output")
ylim([-3, 3])

legend("u(t)-u(t-3))", "x(t) = t.sin(2.pi.t).(u(t) - u(t-3))")
title("u(t)-u(t-3) visualized")
saveas(fig_6, "fig_6_plot.png");

%%

fig_7 = figure("Name","Seventh Figure");
plot(x1,y1,x1,y2)

ylabel("System Output")
xlabel("Time")

title("f(x) and y(x) visualized")
legend("f(x)= x.e^{-x}", "y(x)= 2^{cos(x)}")
saveas(fig_7, "fig_7_plot.png");


