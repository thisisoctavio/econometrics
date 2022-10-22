

********************************************************************************
* inciso 1
********************************************************************************


* base de age: age4554 Q-1 dummies

reg earnings jtpa_training sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644


preserve 
drop if earnings <= 0
gen lnearnings = ln(earnings)
reg lnearnings jtpa_training sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644
restore

********************************************************************************
* inciso 2
********************************************************************************

gen jtpa_training_women = jtpa_training * sex

reg earnings jtpa_training jtpa_training_women sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644

preserve 
drop if earnings <= 0
gen lnearnings = ln(earnings)
reg lnearnings jtpa_training jtpa_training_women hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644
restore

********************************************************************************
* inciso 4
********************************************************************************

ivregress 2sls earnings (jtpa_training = jtpa_offer) sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644
