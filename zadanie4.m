unikalne_panstwa = unique(data.country);    %znajdz unikalne panstwa

histogram = []; %utworz zmienna histogram
for panstwo = transpose(unikalne_panstwa)   %iteruj po panstwach
    index = find(data.year == 2013 & strcmp(data.country, panstwo) & data.world_rank <= 100);   %znajd� pozycje spelniajace warunki
    ilosc_szukanych_uczelni = numel(index); %policz szukane
    histogram = [histogram ilosc_szukanych_uczelni];    %dodaj do histogramu
end

bar(histogram); %narysuj histogram
uchwyt_wykresu = gca(); %znajd� uchwyt do zmiany podpis�w
uchwyt_wykresu.XTick = 1:numel(unikalne_panstwa);   %strw�rz 59 etykiet
uchwyt_wykresu.XTickLabel = unikalne_panstwa;   %podpisz nazwami panstw
uchwyt_wykresu.XTickLabelRotation = 70; %obr�� etykiety