index2014 = find(data.year == 2014);	%znajdz pozycje z 2014 roku
index2014_top10 = index2014(1:10);      %znajdz 10 najlepszych z 2014 roku
nazwy_top10 = data.institution(index2014_top10);    %przepisz nazwy najlepszych do osobnej zmienniej

id = fopen('ranking.txt', 'w'); %otwórz plik
i = 0;        %zmienna na zliczanie
for nazwa = transpose(nazwy_top10)
    i = i+1;    %zliczaj pozycje
    fprintf(id, '%d. %s\n', i, nazwa{1,1}); %wypisuj pozycje do pliku
end