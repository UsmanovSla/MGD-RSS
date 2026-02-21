# MGD-RSS
## Metodologie generování dat pro modely umělé inteligence v robotických stavebních systémech

## Anotace

Nasazení metod umělé inteligence ve stavebním inženýrství je dosud omezeno nedostatkem kvalitních dat nezbytných pro jejich trénování. Tato práce představuje metodologii generování strukturovaných dat prostřednictvím simulační aproximace stochastických robotických procesů. Deterministický model trajektorie vysvětluje pouze omezenou část variability doby pracovního cyklu, což vyžaduje stochastické modelování provozních stavů systému. Navržený přístup vychází z kombinace bayesovské kalibrace fyzikálního modelu trajektorie a stochastického modelování provozních stavů systému pomocí Markovových procesů a metod Monte Carlo. Variabilita celkové doby pracovního cyklu robotického zdění přitom není determinována pouze délkou trajektorie, ale je významně ovlivněna provozními zdrženími, která jsou v modelu reprezentována empirickým výběrovým rozdělením získaným opakovaným výběrem s vracením.

Vyvinutý hybridní kalibrovaný model umožňuje simulaci posteriorní prediktivní distribuce pracovního cyklu v proměnlivých provozních a geometrických podmínkách a tím i generování syntetických dat zachovávajících distribuční vlastnosti reálného procesu. Model byl implementován a verifikován na robotizovaném procesu zdění. Validační analýza prokázala vysokou míru shody mezi simulovanými a reálnými daty, přičemž Kolmogorovův–Smirnovův test založený na opakovaném výběru s vracením indikoval, že v 75,2 % případů nelze simulaci statisticky odlišit od reality na hladině významnosti 5 %. Parametrické i neparametrické testy současně neprokázaly statisticky významný rozdíl mezi středními hodnotami ani distribuční strukturou reálných a syntetických dat.

Navrženou metodologii lze využít k rozšíření trénovacích dat pro modely umělé inteligence napříč širokým spektrem úloh stavebního inženýrství v průběhu celého životního cyklu budovy, například při návrhu konstrukčních prvků, časovém a finančním plánování, optimalizaci stavebních procesů, kontrole kvality či facility managementu. Výsledky práce přispívají k rozvoji metod simulačního modelování ve stavebnictví a podporují implementaci modelů umělé inteligence v podmínkách omezené dostupnosti empirických dat.

---

## Klíčová slova

robotické stavební procesy; robotický zdicí systém; pracovní cyklus robotického zdění; simulační modelování; syntetická data; bayesovská kalibrace; Markovovy procesy; metody Monte Carlo; Markov Chain Monte Carlo (MCMC); stochastické modelování; posteriorní prediktivní simulace; trénovací data pro umělou inteligenci

## Keywords
robotic construction processes; robotic masonry system; robotic masonry work cycle; simulation modeling; synthetic data; Bayesian calibration; Markov processes; Monte Carlo methods; Markov Chain Monte Carlo (MCMC); stochastic modeling; posterior predictive simulation; training data for artificial intelligence

---

## Struktura repozitáře

Struktura repozitáře reflektuje celý proces generování dat, simulace, trénování a evaluace modelů umělé inteligence v robotických stavebních systémech.

Podrobnosti viz jednotlivé složky a jejich README soubory.

---

## Použití

Projekt je určen především pro:
- výzkum a vývoj metod generování syntetických dat,
- trénování a validaci modelů umělé inteligence,
- simulaci robotických stavebních procesů,
- experimentální ověřování shody syntetických a reálných dat.

---

## Licence

Licence projektu je uvedena v souboru `LICENSE`.

---

## Citace

Pokud projekt používáte ve vědecké práci, prosím citujte dle souboru `CITATION.cff`.

