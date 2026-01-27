# Titanic Stata Logit model

## 1) Wstęp
W 1912 roku wydarzył się najbardziej katastrofalny wypadek morski w historii – zatonięcie Titanica, w którym zginęło około 1500 osób. Model Logit posłuży nam na zbadanie, które czynniki wpływają na przeżycie podczas katastrofy. Raport jest stworzony z zbioru danych z Kaggle.


## 2) Zmienne
1.	survival - Przeżycie pasażera (0 = Nie; 1 = Tak)
2.	pclass - Klasa pasażera (1=pierwsza, 2=druga, 3=trzecia)
3.	sex - Płeć (Mężczyzna=0, Kobieta=1)
4.	age - Wiek pasażera w latach 
5.	sibsp - Liczba rodzeństwa i małżonków podróżujących razem 
6.	parch - Liczba rodziców i dzieci podróżujących razem. 
7.	fare - Opłata pasażera 
8.	Embarked - Port zaokrętowania (C = Cherbourg, Q = Queenstown,S = Southampton)
     

## 3) Charakterystyka spodziewanych zależności hipotez
Hipoteza 1:	zmienna pclass (-)
Pasażerowie pierwszej klasy mieli lepszy dostęp do łodzi ratunkowych i mniejszy tłok w swojej części statku, co zwiększało szanse na przeżycie.

Hipoteza 2:	zmienna sex 	(+)
Historyczne relacje mówią „kobiety i dzieci pierwsze”.

Hipoteza 3: 	zmienna age (+)
W sytuacjach ratunkowych preferowano dzieci i młodsze osoby, a starsi mogli mieć trudności w szybkim dotarciu do łodzi.

Hipoteza 4: 	zmienna fare (+)
Wyższe opłaty były związane z lepszą klasą kabiny, co korelowało z lepszym dostępem do ratunku.

Hipoteza 5: 	zmienna sibsp (-)
Mała liczba towarzyszy mogła ułatwić szybkie działanie i zwiększyć szanse przeżycia.

Hipoteza 6: 	zmienna parch (-)
Dorosły pasażer mógł najpierw pomagać dzieciom lub starszym członkom rodziny, co spowalniało jego ewakuację.


## 4) Modele
W tabeli poniżej przedstawiono wyniki modelu ostatecznego. Model wstępny uwzględniał wszystkie dostępne zmienne, natomiast model ostateczny zawiera jedynie te, które okazały się istotne statystycznie lub miały uzasadnienie teoretyczne.

Model nr 1

<img width="566" height="450" alt="image" src="https://github.com/user-attachments/assets/a37bca3c-0691-409e-962d-1c2483b78e8e" />

Model nr 2

<img width="570" height="435" alt="image" src="https://github.com/user-attachments/assets/c9b345f6-5157-48c7-bf95-9542ec9f36a5" />




## 5) Interpretacja wybranego moodelu 
Porównując kryteria AIC wybrano model nr 1.

### Ilorazy szans - interpretacja 

pclass - Hipoteza potwierdzona. Im niższa klasa (wyższy numer), tym mniejsza szanse na przeżycie.

sex - Hipoteza potwierdzona. Mężczyźni mają niższe szanse na przeżycie niż kobiety.

sibsp - Hipoteza potwierdzona. Większa liczba rodzeństwa lub małżonka  obniżała szanse na przeżycie.

parch_bin - Hipoteza odrzucona. Obecność rodziców/dzieci miała dodatni (choć słabo istotny) wpływ na szanse przeżycia, co jest przeciwne do założenia.


### Efekty krańcowe

Płeć (male): Bycie mężczyzną obniża prawdopodobieństwo przeżycia o ok. 49 punktów procentowych. To najsilniejszy efekt w modelu.
Podróżowanie klasą 2. zamiast 1. obniża prawdopodobieństwo przeżycia o ok. 19 p.p.
Podróżowanie klasą 3. zamiast 1. obniża prawdopodobieństwo przeżycia o ok. 33 p.p.
Wiek (age): Każdy dodatkowy rok życia obniża prawdopodobieństwo przeżycia o ok. 0,56 punktu procentowego.
Port (embarked): Wejście na statek w Queenstown lub Southampton (w porównaniu do Cherbourga) wiązało się z niższym prawdopodobieństwem przeżycia (o ok. 20 i 10 p.p. odpowiednio).
Pozostałe zmienne (takie jak fare lub parch_bin) są nieistotne lub słabo istotne, więc ich efektów nie interpretuje się jako mających realny wpływ.

 
## 7) Ocena dopasowania modelu ostatecznego 
Pseudo R² wynosi 0,329 co oznacza, że model logitowy wyjaśnia ok. 32,8 % funkcji wiarygodności do przeżycia. 

<img width="570" height="120" alt="image" src="https://github.com/user-attachments/assets/ad18adf4-23ed-40d9-b366-ffdedb904bf2" />

Zliczeniowy R^2 wynosi 79,87%. W praktyce za wartość dodaną modelu uznaje się zliczeniowy R^2 powyżej 0,5. W uczeniu maszynowym miernik ten jest znany jako Accuracy.

<img width="810" height="486" alt="image" src="https://github.com/user-attachments/assets/7e8ac8bd-6ef9-4a52-9426-ef50a3beb799" />

Pole pod tą krzywą (AUC) wynosząca 0.85 potwierdza dobrą jakość prognozy.

## 8) Wnioski
Dalsza eksploracja zbioru danych oraz wprowadzenie dodatkowych zmiennych mogłoby być interesujące dla pogłębienia analizy. Dodanie większej liczby cech może potencjalnie poprawić dokładność i szczegółowość uzyskanych wyników.
Eksperymentowanie rożnymi zmiennymi może umożliwić głębsze zrozumienie danych
i do odkrycia nowych wzorców lub zależności.

## 9) Literatura
Aamir, M. (2023). Titanic survival prediction , ResearchGate
https://www.researchgate.net/publication/383295501_TITANIC_SURVIVAL_PREDICTION
