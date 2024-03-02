A=input('Enter la matrice A:');
B=input('Enter la matrice B:');

X = GaussJordan(A,B);

function X = GaussJordan(A,B)
[M, N] = size(A);
if M ~= N
    disp('Pas de solution, Il faut introduire une matrice carrée!')
    return
end

D = det(A);
if D == 0
    disp('Pas de solution, déterminant égale à zéro!')
    return
end
   
for i = 1 : N
    
    if A(i , i) == 0  
        A(i:i+1,:) = flipud (A(i:i+1,:));% Permutation entre les linges
        B(i:i+1) = flipud (B(i:i+1));    % Permutation entre les linges
    end
    
    B(i) = B(i) / A(i , i);
    A(i , :) = A(i , :) / A(i , i);
    
    for j = 1 : N
        if j ~= i
            
            B(j) = B(j ) - B(i) * A(j,i);
            A(j , i : N) = A(j , i : N) - A(i , i : N) * A(j,i);
            
        end
    end
    
end
X = B;
end

           %--------------------------------------------%
                  %OUARAS KHELIL RAFIK Groupe: 03%
                