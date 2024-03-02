A=input('Entrez la matrice carre:');
[n,m]=size(A);
if n~=m
    error('Matrice non carre');
else
    if det(A)==0
        error('Matrice non inversible');
    else
        disp('A est Okay')
    end
end
% Choleski's Factorization
 A(1,1) = sqrt(A(1,1));
 for j = 2 : n 
   A(j,1) = A(j,1)/A(1,1);
 end
 
 m = n-1;
 for i = 2 : m 
   kk = i-1;
   s = 0;
   for k = 1 : kk 
     s = s-A(i,k)*A(i,k);
   end
   A(i,i) = sqrt(A(i,i)+s);
   jj = i+1;
   for j = jj : n 
     s = 0;
     kk = i-1;
     for k = 1 : kk 
        s = s - A(j,k)*A(i,k);
     end
     A(j,i) = (A(j,i)+s)/A(i,i);
   end
 end

 
 s = 0;
 for k = 1 : m 
 s = s-A(n,k)*A(n,k);
 end
 A(n,n) = sqrt(A(n,n)+s);
 fprintf('The matrix L output by rows:\n');
 for i = 1 : n 
   for j = 1 : i 
     fprintf('  %11.8f', A(i,j));
   end
   fprintf('\n');
 end
 %------------------------------------------------------
        %Réaliser par : OUARAS KHELIL RAFIK