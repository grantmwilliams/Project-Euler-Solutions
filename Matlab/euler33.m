%% Digit Cancelling Fractions 33
clear;close all;clc;
tic

denprod = 1;
nomprod = 1;

for i = 1:10
    for den = 1:i
        for nom = 1:den
            if((nom*10+i)*den == nom*(i*10+den))
                denprod = denprod*den;
                nomprod = nomprod*nom;
            end
        end
    end
end

denprod = denprod / gcd(nomprod,denprod);

disp(denprod);
toc