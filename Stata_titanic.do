clear all
/********************************
	Pobranie danych 
******************************/
cd /Users/...
use titanic_old.dta

/********************************
	Przegląd danych
******************************/

browse
summarize
codebook

summarize pclass survived sex age sibsp parch fare embarked

tabulate survived
tabulate pclass
tabulate sex
tabulate embarked

histogram age
histogram sibsp
hist parch 
histogram fare


generate parch_bin = 1 if parch > 0
replace parch_bin = 0 if parch == 0

/********************************
	Modele
******************************/

logit survived i.pclass i.sex c.age##c.age c.sibsp i.parch_bin c.fare i.embarked, robust
estimates store model1

esttab model1, p n pr2 aic bic wide star(* 0.1 ** 0.05 *** 0.01)


logit survived i.pclass i.sex c.age##c.age c.sibsp i.parch_bin i.embarked, robust
estimates store model2

esttab model1 model2, p n pr2 aic bic wide star(* 0.1 ** 0.05 *** 0.01)

logit survived i.pclass i.sex c.age##c.age c.sibsp i.parch_bin i.embarked if e(sample), robust
estimates store model3

/********************************
	Analiza 
******************************/

esttab model1 model2 model3, p n pr2 aic bic wide star(* 0.1 ** 0.05 *** 0.01)
testparm c.age##c.age

margins, at(age = (0(10)80))
marginsplot

margins, dydx(*)

//ssc install fitstat
fitstat

lstat
lstat, cutoff(0.38)
lroc
