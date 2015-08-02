% McElroy p-values

clear all;
close all;
load mcdata.mat;
textdata = textdata(2:175,:);
sigval = 0.05;

data = num;

pl = zeros(length(data)-1,1);
pr = zeros(length(data)-1,1);
pb = zeros(length(data)-1,1);
count = zeros(length(data),3);

for i = 1:length(data)-1;
    [pr(i),pl(i),pb(i)] = Fisherextest(data(i,1),data(i,2),data(i+1,1),data(i+1,2));
    if pl(i) < sigval;
        count(i,1) = 1;
    end
    if pr(i) < sigval;
        count(i,2) = 1;
    end
    if pb(i) < sigval;
        count(i,3) = 1;
    end
end

figure;
semilogy(pl,'k.')
hold on; semilogy(pr,'r*')
hold on; semilogy(pb,'b+')
%ylim([0 1.2])
line([0 180],[0.05 0.05])
xlabel('CNV')
ylabel('P-value')
title('BLACK - Left Tail P-value, RED - Right Tail P-value, BLUE - 2 Tail P-value')