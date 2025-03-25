clc;
clear;
% 1-1 : creation of a matrix %
A = [10 14 7; 9 1 0 ; 2 31 12];

% 1-2 a vector with 3 rows and 1 column%
B = transpose(A(3,:));

% 1-3 random gaussian matrix using the size of A and B %
n = size(mtimes(A,B));
C = randn(n(1), n(2));

% 1-4 creation of a matrix by repeating [1 2 3 4] %
tmp = [1 2 ; 3 4];
D = repmat(tmp,2);

% 1-5 generate a 3*3 matrix uniformly distributed in [1,3] % 
E = 1 + (3-1).*rand(3);

% 1-5 generate a matrix from A^transpose(E) %
F = zeros(n(1), n(2));
m = size(A);
E_T = E';
for i=1:m(1)
    for j=1:m(2)
        F(i,j) = A(i,j)^E_T(i,j);
    end
end

% 2-1 %
a = find(A < 2 | A > 30 | A == 7);

% 2-2 &
G = A(find(A<2 | A>30 | A==7));

% 2-3 %
H = sum(find(A<2 | A>30 | A==7));

% 2-4 what does [c, ia, ib] = union[A,B] mean ? %
% ذخیره می کند C این تابع عناصر دو ماتریکس را با هم اجتماع می کند ( بدون تکرار ) و در متغیر%
% دو متغیر بعدی ایندکس عناصر انتخاب شده از هر ماتریکس را ذخیره می کنند %
% در این مثال خاص عناصر ماتریکس دوم در اولی هستند پس هیچ عنصری از آن انتخاب
% نشده است و بردار ایندکس آن خالی خواهد بود
