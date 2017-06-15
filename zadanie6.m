%wymaga wykres2.m
hold on;    %zamro¿enie wykresu
stopien_dopasowania = 3;
subplot(3,2,1); %podzielenie wykresu na czêœci
wykres2('b', 's', 'data.world_rank', 'data.quality_of_education', stopien_dopasowania); %tworzenie poszczególnych wykresów
subplot(3,2,2);
wykres2('r', 'o', 'data.world_rank', 'data.quality_of_faculty', stopien_dopasowania);
subplot(3,2,3);
wykres2('y', '+', 'data.world_rank', 'data.alumni_employment', stopien_dopasowania);
subplot(3,2,4);
wykres2('m', '^', 'data.world_rank', 'data.publications', stopien_dopasowania);
subplot(3,2,5);
wykres2('k', '*', 'data.world_rank', 'data.citations', stopien_dopasowania);
subplot(3,2,6);
wykres2('g', 'x', 'data.world_rank', 'data.influence', stopien_dopasowania);
