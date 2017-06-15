function wykres(nazwa1, nazwa2, n)  %funckja wykres
domyslna_wartosc_n = 2; %domy�lna warto�� n
x = evalin('base',nazwa1);  %uzyskanie warto�ci zmiennej za pomoc� jej nazwy
y = evalin('base',nazwa2);
scatter(x,y);   %narysowanie wykresu

if ~exist('n')  %wpisanie domy�lnej warto�ci je�li n nie zosta�o podane
    n = domyslna_wartosc_n;
end

wspolczynniki_dopasowania = polyfit(x,y,n); %znajdowanie krzywej dopasowania zgodnie z dokumentacj�
x = linspace(0,max(x),numel(y));
krzywa_dopasowania = polyval(wspolczynniki_dopasowania, x);
plot(x, krzywa_dopasowania);    %rysowanie krzywej dopasowania

xlabel(nazwa1); %podpisywanie osi
ylabel(nazwa2); 

wielomian = sprintf('x^%d*%.2d',  n, wspolczynniki_dopasowania(n+1));   %stworzenie wielomianu
for i = 0:n-1
    wielomian = sprintf('%s + x^%d*%.2d', wielomian, n-1-i, wspolczynniki_dopasowania(n-i));
end
legend('dane', wielomian);  %dodanie legendy do wykresu

end