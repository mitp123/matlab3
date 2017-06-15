%to samo co wykres.m
function wykres2(color, figure, nazwa1, nazwa2, n) %dodatkowo figura i kolor
hold on;
domyslna_wartosc_n = 2;
x = evalin('base',nazwa1);
y = evalin('base',nazwa2);
scatter(x,y,figure, color); %<- tutaj u¿ywamy figury i koloru

if ~exist('n')
    n = domyslna_wartosc_n;
end
wspolczynniki_dopasowania = polyfit(x,y,n);
x = linspace(0,max(x),numel(y));
krzywa_dopasowania = polyval(wspolczynniki_dopasowania, x);
plot(x, krzywa_dopasowania);

xlabel(nazwa1);
ylabel(nazwa2);

wielomian = sprintf('x^%d*%.2d',  n, wspolczynniki_dopasowania(n+1));
for i = 0:n-1
    wielomian = sprintf('%s + x^%d*%.2d', wielomian, n-1-i, wspolczynniki_dopasowania(n-i));
end
legend('dane', wielomian);

end