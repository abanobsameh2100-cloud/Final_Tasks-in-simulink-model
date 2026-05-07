b=10;
x=1;
k=400;
m=5;

mdl=gcs;
massvalue=1:2:11;
for i=1:numel(massvalue)
    m=massvalue(i);
    result=sim(mdl);
    plot(result.logsout.get("x").Values);
    hold on
    disp("simulation "+num2str(i)+" complete");
    legendlabels{i}= "m = "+num2str(m);
end
legend(legendlabels)