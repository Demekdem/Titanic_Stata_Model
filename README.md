# Titanic_Stata_Model

2) Opis zmiennych  
1.	survival : Przeżycie pasażera (0 = No; 1 = Yes); (No– 61,80%, Yes – 38,20%) 
2.	pclass : Klasa pasażera (1 = 1st; 2 = 2nd; 3 = 3rd) (1rd=25%; 2nd=21%, 3rd=54%) 
3.	sex : Płeć (Male=0, Female=1); (Male – 64,40%; Female – 35,60%) 
4.	age : Wiek pasażera w latach  
5.	sibsp : Liczba rodzeństwa i małżonków podróżujących razem  
6.	parch : Liczba rodziców i dzieci podróżujących razem.  
7.	fare : Opłata pasażera  
8.	Embarked : Port zaokrętowania (C = Cherbourg; Q = Queenstown;  
S = Southampton) (Cherbourg=21%; Queenstown=9%; Southampton=70%) 
4) Model wstępny oraz ostateczny 
W tabeli poniżej przedstawiono wyniki modelu wstępnego i ostatecznego. Model wstępny uwzględniał wszystkie dostępne zmienne, natomiast model ostateczny zawiera jedynie te, które okazały się istotne statystycznie lub miały uzasadnienie teoretyczne.  
 
Model wstepny
   <img width="608" height="236" alt="Bez tytułu" src="https://github.com/user-attachments/assets/3e9f8f0e-cebf-46c2-aea1-aa574088a6d8" />

Model ostateczny 
  
 
5) Zapis modelu ostatecznego w formie równania 
log(P(y=1))/(1-P(y=1))=4,53 − 1,08⋅(pclass=2) − 2.02⋅(pclass=3) − 2,59⋅(sex=0) + −0,07⋅age + 0.001⋅age2 −0,45⋅sibsp + 0.39⋅(parch_bin=1) − 1,36⋅(embarked=2) + −0,64⋅(embarked=3) 
6) Interpretacja modelu ostatecznego pclass (klasa): Hipoteza potwierdzona. Im niższa klasa (wyższy numer), tym mniejsze szanse na przeżycie (współczynniki silnie ujemne i istotne). 
sex (płeć): Hipoteza potwierdzona. Mężczyźni mieli radykalnie niższe szanse na przeżycie niż kobiety (współczynnik -2,59, bardzo istotny). 
age (wiek): Hipoteza częściowo potwierdzona. Wiek ma istotny, negatywny wpływ na szanse przeżycia. Efekt kwadratowy wieku jest nieistotny. 
sibsp (rodzeństwo/małżonek): Hipoteza potwierdzona. Większa liczba rodzeństwa lub małżonka istotnie obniżała szanse na przeżycie. 
parch_bin (rodzice/dzieci): Hipoteza odrzucona. Obecność rodziców/dzieci miała dodatni (choć słabo istotny) wpływ na szanse przeżycia, co jest przeciwne do założenia. 
embarked (port): Wpływ istotny. Pasażerowie, którzy weszli w portach 2 i 3, mieli istotnie niższe szanse na przeżycie niż ci z portu referencyjnego. 
Efekty krańcowe 
Płeć (male): Bycie mężczyzną obniża prawdopodobieństwo przeżycia o ok. 49 punktów procentowych. To najsilniejszy efekt w modelu. 
Podróżowanie klasą 2. zamiast 1. obniża prawdopodobieństwo przeżycia o ok. 19 p.p. 
Podróżowanie klasą 3. zamiast 1. obniża prawdopodobieństwo przeżycia o ok. 33 p.p. Wiek (age): Każdy dodatkowy rok życia obniża prawdopodobieństwo przeżycia o ok. 0,56 punktu procentowego. 
Port (embarked): Wejście na statek w Queenstown lub Southampton (w porównaniu do Cherbourga) wiązało się z niższym prawdopodobieństwem przeżycia (o ok. 20 i 10 p.p. odpowiednio). 
Pozostałe zmienne (takie jak fare lub parch_bin) są nieistotne lub słabo istotne, więc ich efektów nie interpretuje się jako mających realny wpływ. 
 
Nieliniowość – graficzna analiza  
  
7) Ocena dopasowania modelu ostatecznego  
Pseudo R² wynosi 0,329, co oznacza, że model logitowy wyjaśnia ok. 32,8 % funkcji wiarygodności do przeżycia. Jest to dobry wynik. 
  
Model poprawnie klasyfikuje 77.8% przypadków, co wskazuje na jego dobrą ogólną skuteczność. Jego czułość na poziomie 77.4% oznacza, że dobrze identyfikuje osoby, które przeżyły, zaś swoistość 78.0% potwierdza, że równie trafnie rozpoznaje ofiary katastrofy. 
Krzywa ROC ilustruje ogólną zdolność modelu do odróżniania obu grup. Pole pod tą krzywą (AUC) wynoszące około 0.85 potwierdza bardzo dobrą jakość modelu w rozdzielaniu osób, które przeżyły, od tych które nie przeżyły. 
8) Wnioski 
Dalsza eksploracja zbioru danych oraz wprowadzenie dodatkowych zmiennych mogłoby 
być interesujące dla pogłębienia analizy. Dodanie większej liczby cech może potencjalnie poprawić dokładność i szczegółowość uzyskanych wyników. 
Eksperymentowanie rożnymi zmiennymi może umożliwić głębsze zrozumienie danych i do odkrycia nowych wzorców lub zależności. 
 
9) Literatura 
Aamir, M. (2023). Titanic survival prediction , ResearchGate https://www.researchgate.net/publication/383295501_TITANIC_SURVIVAL_PREDICTION 
