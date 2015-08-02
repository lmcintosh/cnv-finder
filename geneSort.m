% geneSort.m
% genes input should be list of single genes sans info
function geneSort(genes)

% vars
s = [];
s = size(genes);
result = [];
v = zeros(s);
sizev = [];
temp = [];

for i = 1:s;
    % examine each input gene one at a time
    u = genes(i);
    % store each position of gene(i) repeats as vector v
    temp = strmatch(u, genes);
    szt = size(temp);
    for z = 1:szt;
        v(i,z) = temp(z);
    end
    sizev = size(v,1);
    % do something for every repeat of gene(i)
    % for z = 1:sizev;    % will need to use this later when input has info as well
    %    a = v(z);
    %    b(z) = genes(a);
        % dup(z,1) = genes(i);
        % x = num2str(v);
        % b = cellstr(x);
        % dup(z,2) = b
    %    result(z,:) = v(z,:);
        % result(z,2) = v(z,2);
    %end
    save v;
end
    