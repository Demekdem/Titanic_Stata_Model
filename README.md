# Model logitowy przeżycia pasażerów Titanica (Stata)

## 1) Wstęp
W 1912 roku wydarzył się najbardziej katastrofalny wypadek morski w historii – zatonięcie Titanica, w którym zginęło około 1500 osób. Model Logit posłuży nam na zbadanie, które czynniki wpływają na przeżycie podczas katastrofy. Raport jest stworzony z zbioru danych z Kaggle.


## 2) Zmienne
1.	survival - Przeżycie pasażera (0 = Nie; 1 = Tak)
2.	pclass - Klasa pasażera (1=pierwsza, 2=druga, 3=trzecia)
3.	sex - Płeć (Mężczyzna=1, Kobieta=0)
4.	age - Wiek pasażera w latach 
5.	sibsp - Liczba rodzeństwa i małżonków podróżujących razem 
6.	parch_bin - Liczba rodziców i dzieci podróżujących razem. 
7.	fare - Opłata pasażera 
8.	Embarked - Port zaokrętowania (C = Cherbourg, Q = Queenstown,S = Southampton)
     

## 3) Charakterystyka spodziewanych zależności hipotez
Hipoteza 1:	zmienna pclass (-)
Pasażerowie pierwszej klasy mieli lepszy dostęp do łodzi ratunkowych i mniejszy tłok w swojej części statku, co zwiększało szanse na przeżycie.

Hipoteza 2:	zmienna sex (-)
Historyczne relacje mówią „kobiety i dzieci pierwsze”.

Hipoteza 3: 	zmienna age (+)
W sytuacjach ratunkowych preferowano dzieci i młodsze osoby, a starsi mogli mieć trudności w szybkim dotarciu do łodzi.

Hipoteza 4: 	zmienna fare (+)
Wyższe opłaty były związane z lepszą klasą kabiny, co korelowało z lepszym dostępem do ratunku.

Hipoteza 5: 	zmienna sibsp (-)
Ewakuacja samemu bez rodzeństwa, ani małżonka mogła skutkować szybszym działaniem i zwiększyć szanse przeżycia.

Hipoteza 6: 	zmienna parch_bin (-)
Dorosły pasażer mógł najpierw pomagać dzieciom lub starszym członkom rodziny, co spowalniało jego ewakuację.


## 4) Modele

Model nr 1

<img width="566" height="450" alt="image" src="https://github.com/user-attachments/assets/a37bca3c-0691-409e-962d-1c2483b78e8e" />

Model nr 2

<img width="570" height="435" alt="image" src="https://github.com/user-attachments/assets/c9b345f6-5157-48c7-bf95-9542ec9f36a5" />


## 5) Interpretacja wybranego moodelu
Porównując kryteria AIC wybrano model nr 1.

### Ilorazy szans - interpretacja

pclass - Hipoteza potwierdzona. Wraz z przejściem do niższej klasy podróży, szanse przeżycia maleją.

sex - Hipoteza potwierdzona. Mężczyźni mają niższe szanse na przeżycie niż kobiety.

sibsp - Hipoteza potwierdzona. Wraz ze wzrostem liczby rodzeństwa lub małżonka na pokładzie statku istotnie malały szanse przeżycia pasażera.

parch_bin - Hipoteza odrzucona. Obecność rodziców lub dzieci miała pozytywny (istotny na granicy) wpływ na szanse przeżycia, co jest przeciwne do założenia.

Obowiązuje zasada ceteris paribus.

### Efekty krańcowe - interpretacja
Podróżowanie drugą lub trzecią klasą (w porówaniu do pierwszej klasy) wiązało się z niższym prawdpodobienstwem przeżycia
odpowiednio o ok. 19 i 33 p.p.

Szansa meżczyzn na przeżycie spada o ok. 49.p.p. w stosunku do kobiet.

Podróżowanie z rodzeństwem lub małżonkiem wiązało się z niższym prawdopodobieństwem przeżycia o ok. 7 p.p.

Obecność dzieci lub rodziców na pokładzie wiązała się z wyższym prawdopodobieństwem przeżycia o ok. 6 p.p.

Wejście na statek w Queenstown lub Southampton wiążę się ze spadkiem prawdpodobieństwa przeżycia odpowiednio o ok. 20 i 10 p.p 
względem portu w Cherbourg.

Obowiązuje zasada ceteris paribus.

## 7) Ocena dopasowania modelu ostatecznego.
Pseudo R² wynosi 0,329 co oznacza, że model logitowy wyjaśnia ok. 32,8 % funkcji wiarygodności przeżycia. W praktyce poziom rzędu 0,2-0,4 jest uważany za oznakę dobrego dopasowania modelu.

<img width="570" height="120" alt="image" src="https://github.com/user-attachments/assets/ad18adf4-23ed-40d9-b366-ffdedb904bf2" />

Zliczeniowy R^2 wynosi 79,87%. W praktyce za wartość dodaną modelu uznaje się zliczeniowy R^2 powyżej 0,5. W uczeniu maszynowym miernik ten jest znany jako Accuracy.

<img width="810" height="486" alt="image" src="https://github.com/user-attachments/assets/7e8ac8bd-6ef9-4a52-9426-ef50a3beb799" />

Pole pod tą krzywą (AUC) wynosząca 0.85 potwierdza dobrą jakość prognozy.

## 8) Wnioski
Analiza danych wykazała, że największy wpływ na szanse przeżycia miały płeć oraz klasa podróży. Mężczyźni mieli o około 49 punktów procentowych niższe prawdopodobieństwo przeżycia niż kobiety, natomiast podróżowanie w II i III klasie wiązało się z odpowiednio 19 i 33 punktami procentowymi niższym prawdopodobieństwem przeżycia w porównaniu do I klasy. Inne czynniki, takie jak obecność rodziny na pokładzie czy port zaokrętowania, miały mniejszy, choć nadal zauważalny wpływ na przeżycie. Choć model logistyczny umożliwia interpretację wpływu poszczególnych zmiennych, zastosowanie metod uczenia maszynowego, takich jak las losowy, mogłoby zapewnić dokładniejsze prognozy i umożliwić wykrycie ukrytych wzorców w danych.

