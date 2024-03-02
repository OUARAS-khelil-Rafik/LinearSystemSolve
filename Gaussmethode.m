A=input('Entrez la matrice carre:');
B=input('Entrez le vecteur  second membre:');
[n,m]=size(A);
[p,q]=size(B);
if n~=m
    error('Matrice non carre');
else
    if det(A)==0
        error('Matrice non inversible');
    else
        disp('A est Okay')
    end
end
if p==n && q==1
    disp('B est Okay')
else 
    error('B est mal saisie');
end
%AX=B    qui est à resoudre 
A=[A, B]
for i=1:n-1
    for j=i+1:n
        if A(i,i)==0
          per=0
          for m=i+1:n
              if A(m,i)~=0
                  per=m
                  break
              end
          end
          if per==0
              error('Non resolvable')
          else
              temp=A(i,:)
              A(i,:)=A(per,:)
              A(per,:)=temp
          end
          A
        else
            A(j,:)=A(j,:)-((A(j,i)*A(i,:))/A(i,i));
        end
    end
end
A
x=zeros(n,1);
x(n)=A(n,n+1)/A(n,n);
for i=1:n
    A(i,:)=A(i,:)/A(i,i);
end
for i=n-1:-1:1
    S=0;
    for l=i+1:n
        S=S+A(i,l)*x(l);
    end
    x(i)=A(i,n+1)-S
end
%------------------------------------------------------
        %Réaliser par : OUARAS KHELIL RAFIK
           %Groupe : 03 (L2 Informatique)

        
