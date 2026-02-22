# MGVD-SI
## Metodologie generování a validace dat pro modely umělé inteligence ve stavebním inženýrství

## Anotace

Implementace metod umělé inteligence ve stavebním inženýrství je omezena nedostatkem kvalitních a reprezentativních dat nezbytných pro jejich trénování a validaci. Tato práce formuluje obecný teoreticko-metodologický rámec generování a validace dat založený na fyzikálně konzistentním modelování inženýrských systémů, stochastické simulaci a statistickém ověřování shody mezi simulovanými a reálnými daty. Cílem je vytvořit rámec umožňující produkci syntetických dat, která zachovávají klíčové statistické a strukturální charakteristiky reálných inženýrských procesů.

Navržený přístup vychází z bayesovské kalibrace deterministických fyzikálních modelů a jejich rozšíření o obecnou stochastickou reprezentaci systémových stavů, ilustrovanou prostřednictvím Markovových procesů a metod Monte Carlo. Variabilita sledovaných veličin je modelována jako kombinace deterministické odezvy a náhodných vlivů reprezentujících systémovou nejistotu, přičemž empirická rozdělení slouží k zachování realistické distribuční struktury dat. Výsledný hybridní model umožňuje simulaci posteriorní prediktivní distribuce a systematické generování syntetických dat v proměnlivých podmínkách.

Metodologie zahrnuje vícestupňový validační rámec založený na parametrických i neparametrických testech a intervalových odhadech. Ověření na případové studii robotizovaného procesu zdění potvrdilo vysokou míru distribuční shody mezi simulovanými a reálnými daty; testy distribuční shody neprokázaly ve více než 75 % opakování statisticky významnou odlišnost mezi empirickými a syntetickými daty.

Navržený rámec je aplikovatelný napříč úlohami stavebního inženýrství, zejména v analýze a numerickém modelování konstrukčních systémů, materiálových nelinearit, časově závislých degradačních procesů a stochastickém hodnocení spolehlivosti, plánování a optimalizace procesů. Práce systematicky integruje simulační modelování, pravděpodobnostní inferenci a generování syntetických dat a vytváří teoretický základ pro implementaci modelů umělé inteligence při omezené dostupnosti empirických dat.

---

## Klíčová slova

generování syntetických dat; validace dat; umělá inteligence ve stavebním inženýrství; bayesovská kalibrace; stochastické modelování; Markovovy procesy; Monte Carlo simulace; MCMC; posteriorní prediktivní distribuce; pravděpodobnostní modelování; modelování konstrukčních systémů; robotický stavební systém

## Keywords
synthetic data generation; data validation; artificial intelligence in civil engineering; Bayesian calibration; stochastic modeling; Markov processes; Monte Carlo simulation; MCMC; posterior predictive distribution; probabilistic modeling; structural system modeling; robotic construction system
---

## Struktura repozitáře

Struktura repozitáře reflektuje celý proces generování dat, simulace, trénování a evaluace modelů umělé inteligence ve stavebním inženýrství.

Podrobnosti viz jednotlivé složky a jejich README soubory.

---

## Použití

Projekt je určen především pro:
- výzkum a vývoj metod generování syntetických dat,
- trénování a validaci modelů umělé inteligence,
- simulaci procesů ve stavebním inženýrství,
- experimentální ověřování shody syntetických a reálných dat.

---

## Licence

Licence projektu je uvedena v souboru `LICENSE`.

---

## Citace

Pokud projekt používáte ve vědecké práci, prosím citujte dle souboru `CITATION.cff`.

