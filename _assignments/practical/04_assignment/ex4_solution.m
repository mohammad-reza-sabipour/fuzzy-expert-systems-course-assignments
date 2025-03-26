% soal 1 %

num = input('give me a number: ');
data_type = class(num);
switch data_type
    case {'single', 'double', 'int8', 'int16', 'int32', 'int64', 'uint8', 'uint16', 'uint32', 'uint64'}
        disp('your variable is a number')
    otherwise
        disp('your variable is not a number')
end

% soal 2 %

n = input('i will calculate factorial for you: ');
ans = 1;
while n > 1
    ans = n * ans;
    n = n-1;
end
disp(ans);

% soal 3 %

A = input('matrix A: ');
B = input('matrix B: ');
tmp = 0;
[n, m] = size(A);
[r, q] = size(B);
C = zeros(n,q);
if m == r
    for i=1:n
        for j=1:q
            for k=1:m
                tmp = tmp + B(k,j)*A(i,k);
            end
        C(i,j) = tmp;
        tmp = 0;
        end
    end
else
    disp('dimensions do not match')
end

% soal 4 %

c = [];
while 1
    r = randn();
    if r >= -2 && r <= 2
        c(end+1) = r;
        continue
    else
        break
    end
end
disp(c)

