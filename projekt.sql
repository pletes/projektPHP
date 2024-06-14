-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 06, 2024 at 09:03 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `id` int(11) NOT NULL,
  `podnaslov` varchar(200) DEFAULT NULL,
  `tekst` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`id`, `podnaslov`, `tekst`) VALUES
(1, 'Općenito o siru', 'Sir je čvrsta hrana koja nastaje od zgusnutog mlijeka krava, koza, ovaca ili ostalih sisavaca. Mlijeko je zgusnuto (usireno) koristeći neku kombinaciju sirišta (ili nadomjestaka) i kiseljenja. Bakterije ukisele mlijeko i utiču na krajnji sastav i okus većine sireva. Neki sirevi također imaju plijesan, bilo na vanjskom rubu ili svuda.\r\n\r\nPostoji veliki broj vrsta sireva. Razne vrste i okusi sireva su proizvod korištenja raznih vrsta bakterija i plijesni, različitih količina mliječne masnoće, razlika u dužini starenja, različitih obrada i raznih vrsta mlijeka krava, ovaca, ili ostalih sisavaca ili sirišta korištenih u proizvodnji sira. Ostali činitelji uključuju prehranu životinja i dodavanje sredstva za aromatiziranje poput bilja, začina, ili dima od drveta. Da li je mlijeko pasterizirano ili nije također može imati uticaja na okus.\r\n\r\nZa neke sireve, mlijeko je zgusnuto koristeći kiseline poput sirćeta ili soka limuna. Većina sireva, međutim, su ukiseljeni u manjem stupnju bakterijama, koje pretvaraju mekušac u mliječnu kiselinu te onda do kraja zgusnute dodatkom sirišta. Sirište je mješavina više enzima tradicionalno dobiveno iz obloga stomaka mlade stoke, ali sa sada proizvodi i u laboratorijima. Postoje nadomjesna \"povrtna sirišta\" koja su također izlučeni od raznih vrsta Cynara (čičak) porodice.\r\n\r\nSir se jede i kuhan i nekuhan, sam ili sa drugim sastojcima. Prilikom grijanja, većina sireva se topi. Neki sirevi, poput rakleta, se tope postupno; mnogi drugi sirevi se također mogu topiti postepeno uz prisustvo kiseline ili škroba. Fondue sa vinom, koje služi kao kiselina, je dobar primjer jela sa postupno istopljenim sirom. Ostali sirevi postanu elastični i ljepljivi dok se tope, kvalitet u kojem se može uživati u jelima poput pizze i velškog zeca. Neki sirevi se nejednako tope jer im se masti odvoje dok se griju, dok neki sirevi zgusnuti sa kiselinama, poput halumija, panira i rikote, se nikako ne tope i postaju još čvršći dok se kuhaju.\r\n\r\n'),
(2, 'Pravljenje sira', 'Sir je tvrdi ili polutvrdi proizvod mlijeka koji se dobija zgrušavanjem i odvajanjem čvrste materije iz mlijeka od tečnosti (surutka). Što više surutke odvojimo, to dobijamo tvrđi sir. Sir se dobija postepenim zagrijavanjem mlijeka pri čemu mliječni šećer usljed fermentacije prelazi u mliječnu kiselinu te dolazi do odvajanja kazeina od surutke. Za ubrzanje i poboljšanje procesa sirenja mlijeku se dodaje sirište koje u sebi sadrži mnoge enzime od kojih je renin odn. cimozin najznačajniji za postupak sirenja.\r\n\r\nSmatra se da su prvi sirevi vjerovatno nastali slučajno, pohranom mlijeka u mjehove načinjene od želudaca životinja, u kojima su enzimi brzo usirili mlijeko, a proces je dalje rafiniran jer je time otkriven način za očuvanje mlijeka, inače lako kvarljive supstance.\r\n\r\nPo završenom procesu sirenja, cijeđenjem se odvaja surutka, dodaje se so radi ukusa i zaustavljanja procesa. Zatim se sir oblikuje stavljanjem u kalupe. Oblik i veličina kalupa zavisi od proizvođača do proizvođača i po tome se obično prepoznaju sorte sira. Sir u kalupu ostaje nekoliko sati, a zatim se ostavlja da zri. Pored soli nekim vrstama sira dodaju se i drugi začini, posebno mirišljave trave, kao i neke vrste povrća (paprika ili bijeli luk).'),
(3, 'Odležavanje', 'Trajanje zrenja sira zavisi od vrste do vrste i može trajati od nekoliko dana do 1 godine. Zrenjem sir dobija karakteristična svojstva, tvrdoću i ukus. Zrenje se vrši u različitim uslovim što zavisi od vrste sira. Zbog toga u prometu imamo mnoge vrste sira koje se razlikuju po svojim karakteristikama i ukusu.'),
(4, 'Općenito o jajetu', 'Stajališta o ulozi jaja u prehrani drastično su se mijenjala posljednjih desetljeća. Tradicionalno, jaja su se smatrala izvarednim, a ipak vrlo jeftinim izvorom esencijalih nutrijenata, a ljude se poticalo na svakodnevnu konzumaciju jaja. Otuda, i svima nam poznat slogan: \"Svako jutro jedno jaje organizmu snage daje.\"\r\nMeđutim, već sredinom sedamdesetih godina prošloga stoljeća, preporuke se mijenjaju tako da se više ne preporučuje svakodnevno konzumiranje jaja, nego se čak sugerira njihov što manji unos. Posljedica je to činjenice da je jaje, točnije žumanjak jajeta bogat izvor kolesterola, a kolesterol u tom razdoblju dobiva epitet \"prehrambeni neprijatelj broj jedan\". Ljudi, kadri sve banalizirati, počinju na jaje gledati doslovno kao na kolesterol u ljusci.'),
(5, 'Povijest jaja', 'Povijest konzumiranja jaja stara je kao i povijest konzumiranja kokošjeg mesa. Čak je i ovdje teško odgovoriti na pitanje: \"Je li starija kokoš ili jaje?\".\r\n\r\nJaja su oduvijek bila simbol plodnosti te su tako nerijetko i bila predmet vjerskog obožavanja. Do dana današnjega, jaja su važan dio folklora različitih zemalja i kultura.\r\n\r\nNajpoznatija i najraširenija je priča o uskrsnom jajetu. Razlozi zbog kojih se jaje povezalo sa Uskrsom, su čini se i biološki i kulturološki. Naime, zimi kokoši nose vrlo malo jaja, zbog prirodnog procesa nošenja jaja. Oko Uskrsa, kada već započne proljeće, kokoši ponovo počinju nositi više jaja. Nadalje, kako su se jaja nekada smatrala luksuznom hranom, tijekom Velikog posta (korizme) bila su zabranjena, te su kršćani trebali čekati Uskrs kako bi ih mogli jesti. Znači da je Uskrs razdoblje u kojemu su i prirodne «sile» i vjerske «zabrane» otvorila vrata jajima u prehrani. Običaj bojanja jaja seže u daleku povijest i bio je običaj popularan u mnogim starim civilizacijama uključujući Egipat, Kinu, Grčku i Perziju.'),
(6, 'Fiziologija jaja', 'Kokošje jaje sastoji se od tri dijela - ljuske (koja je sastavljena od Ca i Mg karbonata, Ca i Mg fosfata i organskih tvari), bjelanjka (pretežno voda i proteini), i žumanjka (nutritivno najvažnijeg dijela jaja, koji je bogat proteinima, željezom, fosforom, kao i masnoćom, vitaminima i mineralima).'),
(7, 'Nutritivna vrijednost jaja', 'Jaja su izvanredan izvor nutrijenata. Jadno jaje (ovisno o veličini) osigurava između 4,5 – 6 g proteina, polovica te količine nalazi se u bjelanjku. Bjeljanjak se smatra idealnim izvorom proteina jer sadrži sve esencijalne aminokiseline u pravim omjerima. Od ukupnih masti u jajetu, više od polovice otpada na nezasićene masne kiseline. Jaja su nadalje dobar izvor kolina, luteina, željeza, riboflavina (vitamina B2), folne kiseline, biotina, vitamina B12, vitamina D te vitamina E. Željezo u žumanjku jajeta, poput željeza u mesu, ima visoku bioraspoloživost; stoga se jaje preporuča skupinama koje su rizične na deficit željeza. Jaje je jedan od najboljih prehrambenih izvora kolina. Iako ljudski organizam ima sposobnost sintetiziranja kolina, nerijetko mu je potebna pomoć hrane za zadovoljavanje potreba.\r\n\r\nJedno jaje, opet ovisno o veličini ima 65 – 75 kcal, te 185 – 215 mg kolesterola, te zbog toga vrijedi preporuka o smanjenju unosa jaja kod osoba sa povišenim kolesterolom. Te osobe ne bi smjele konzumirati proizvode kao što su majoneza, deserte sa dodatkom jaja, tjestenine koje se pripremaju sa jajima i dr.'),
(8, 'Općenito o kruhu', 'Kruh je proizvod koji se dobiva miješanjem brašna s vodom, mlijekom, sirutkom, ili nekom drugom tekućinom uz dodatak kuhinjske soli ili šećera, masnoća, jaja i sredstva za dizanje tijesta.\r\n\r\nIzrađuje se od različitih tipova brašna.\r\nPšenično brašno tip 500 koristi se za bijeli kruh, tip 850 za polubijeli i tip 1100 za crni kruh, a koristi se još i pšenična prekrupa za graham kruh i raženo brašno tip 750, tip 950 i tip 1250 za svijetli i tamni raženi kruh.\r\n\r\nKruh može biti i kukuruzni, heljdin, i specijalni.\r\n\r\nU Hrvatskoj se do sveopćeg porasta standarda u drugoj polovici 20. stoljeća, u krajevima koji nisu imali velikih žitorodnih površina, u krušne smjese dodavalo i brašno od drugih biljaka, primjerice rogača, a dodavao se i hrastov žir. Kruh od žirova česmine pripremali su stanovnici Šolte, Molata, Velog Iža. U Norveškoj i Švedskoj pripremao se kruh od žirovog brašna, u Makedoniji su siromašni sve do Prvog svjetskog rata pripremali kruh od žira (\"želadov hleb\"), a u Italiji su se za krušno brašno upotrebljavali žirovi česmine, hrasta sladuna i lužnjaka. U Ukrajini se brašno žitarica miješalo brašnom od žira.'),
(9, 'Povijest', 'Prvi su kruh, i to od pšenice i ječma, pekli Egipćani 1500 godina pr. Kr., vjerojatno je bio beskvasni i zapravo pogača od brašna, soli, koja se pekla u žeravici i pod pepelom u peći, na što upućuju slike na zidovima grobnica i zapisi starih Egipćana. Kruh su pekli u najrazličitijim oblicima, često u obliku životinja ili ljudi, jer su služili za vjerske ili magijske potrebe i posipali ga raznim sjemenkama (često kimom).\r\n\r\nU antička vremena uz omiljene kaše, kruh je također bio dobro dobro poznat. Stari Grci su 70% svoje energije dobivali iz žitarica, a robovi su svakodnevno pekli i kruh. Hipokrat je već onda upozoravao da moramo paziti što jedemo i kako nije svejedno da li jedemo bijeli ili crni kruh, a Celsus je pisao kako kruh sadrži više hranjivih sastojaka nego bilo koja druga hrana.\r\n\r\nRimljanima je kruh bio također jedna od najvažnijih namirnica, ondašnji pekari su za aristokrate morali za svako jelo poslužiti odgovarajuću vrstu kruha, pekli su lepinje posute makom, lovorom, bademima, krušćiće sa sirom, maslinama, a osobito su bili omiljeni oni sa začinskim biljem poput peršina ili vlasca. Rimske vojnike nazivalo se \"žderačima kruha\", jer su dobivali kilogram kruha dnevno.\r\n\r\nU ranom Srednjem vijeku uzašli kruh se uglavnom nije pekao u pećima, jer njih su imali samostani i vlastela. Kruh se pekao od žitarica bez dovoljno glutena poput zobi, ječma i raži, koji se teško dizao i bio je vrlo taman. Kruh pripremljen od bijelog brašna bio je privilegija bogatih, a raženi su dobivali zatvorenici, kojeg su ponekad jeli fratri kako bi pokazali svoju poniznost, a status se procjenjivao po boji kruha, bijeli su jeli oni na vrhu društvene ljestvice, a oni na dnu, crni kruh.\r\n\r\nU Crkvi se otada pripremala i hostija, beskvasni kruh načinjen od najfinijeg bijelog pšeničnog brašna, kao jedinog sastojka, a u crkvenoj liturgiji prilikom euharistijskog slavlja taj se kruh posvećuje te kršćani vjeruju da postaje tijelo Kristovo.\r\n\r\nKruh je važna biblijska tema i pretpostavlja se da je za Posljednju večeru poslužen beskvasni kruh, vino, zdjelice sa začinskim biljem, voće, odnosno sve u skladu s ondašnjim pashalnim židovskim običajima. A ranokršćanske pogače također su bile okrugle, s urezanim križem. U Katoličkoj crkvi kruh je svet i predstavlja vječni život, u sublimiranom obliku pokazuje prisutnost Boga u svakodnevnom životu i redovito se spominje u molitvi: \"Kruh naš svagdanji daj nam danas...\"\r\n\r\nDevetnaesto stoljeće je bila značajna prekretnica u prehrani stanovništva Europe, jer je započela masovna proizvodnja bijelog brašna, a svi nedostatci bijelog kruha kao simbola blagostanja i gospodstva pokazat će se tek u 20. stoljeću.'),
(10, 'Zanimljivost', 'Hrvatski primorski krajevi, posebice južni, kao i neposredno zaleđe, poznati su kao veliki korisnici kruha, po čemu su u svjetskom vrhu. Po tome su Hrvati iz tih krajeva i poznati u svijetu. Sukladno tome, u hrvatskim restoranima u tim krajevima, kruh se nije posebno naplaćivao, nego ga se već narezanog, stavljalo u do preko vrha napunjene košarice za kruh, kao redovni prilog na stolu, skupa sa solju, paprom.'),
(11, 'Općenito o brašnu', 'Brašno je proizvod uzastopnoga mehaničkog usitnjavanja (mljevenja) i prosijavanja zrna žitarica, leguminoza, gomolja, sjemena uljarica, ostalih prehrambenih sirovina i začina te drugih tvari. S prehrambenog stajališta brašno je poluproizvod koji služi kao osnova sirovina za proizvodnju kruha, peciva, keksa, tjestenina i slastica ili kao dodatak u pripremi jela.\r\n\r\nNa tržištu se pojavljuje pod različitim nazivima, koji ukazuju na podrijetlo, proizvodni postupak ili namjenu.'),
(12, 'Vrste brašna', 'Ovisno o stupnju izmeljavanja na hrvatskom tržištu se nalaze bijelo pšenično brašno (tip 400 i tip 550), polubijelo pšenično brašno (tip 700 i tip 850), crno pšenično brašno (tip 1100 i tip 1600) i brašno cijelog zrna pšenice. Oznaka tipa brašna ukazuje na količinu pepela u brašnu; što je tip brašna veći, brašno sadrži veću količinu pepela i tamnije je boje.\r\n\r\nBijelo pšenično brašno (tip 400 i tip 550) dobiva se u tehnološkom procesu mljevenja pšenice iz središnjih dijelova pšeničnog zrna (endosperma), kojeg čine najvećim dijelom škrob i proteini. Stoga sadrži relativno male količine vitamina, minerala i dijetnih vlakana koja se nalaze u vanjskom dijelu zrna. Iako je s nutritivnog stajališta siromašnije u odnosu na tamna brašna, bijelo brašno je izvrsnih pecilnih osobina.\r\n\r\nPrema krupnoći čestica bijelo pšenično brašno na tržištu se nalazi kao glatko brašno i oštro brašno. Glatko pšenično brašno koristi se za pripremu raznih vrsta kruha i peciva, kolača od dizanog tijesta, savijača od vučenog tijesta... Oštro pšenično brašno koristi se za pripremu prhkih kolača, domaćih biskvita, palačinki, žličnjaka, za uguščivanje raznih variva i umaka...\r\n\r\nPolubijelo pšenično brašno (tip 700 i tip 850) je tipično krušno brašno, upotrebljava se uglavnom za izradu kruha i peciva. Nešto je boljih nutritivnih karakteristika od bijelog brašna zbog većeg sadržaja sastojaka koji potječu iz vanjskog dijela zrna.\r\n\r\nCrno pšenično brašno (tip 1100 i tip 1600) po svojim je nutritivnim karakteristikama visokokvalitetno brašno zbog visokog sadržaja vitamina, minerala, a osobito dijetalnih vlakana. Upotrebljava se u domaćinstvu prvenstveno za pripremu proizvoda od dizanog tijesta (kruh, peciva...). Kruh izrađen od crnog brašna je vlažnije sredine, punog okusa i bolje zadržava svježinu od bijelog kruha.\r\n\r\nBrašno cijelog zrna pšenice sadrži sve dijelove očišćenog i samljevenog zrna pšenice uključujući ovojnicu i klicu te je bogato dijetalnim vlaknima, vitaminima B grupe, E vitaminom, mineralima Na, K, Ca, Fe i ima povećan sadržaj proteina u odnosu na bijelo brašno. Na tržištu se nalazi i pod nazivom graham brašno ili integralno pšenično brašno. Kruh od graham brašna je zbijene i grublje strukture, ali punog zaokruženog okusa. U pripremi kruha i peciva preporučuje ga se miješati s bijelim ili polubijelim pšeničnim brašnom kako bi mu se popravile pecilne osobine.\r\n\r\nOsim standardnih tipskih pšeničnih brašna, na tržištu su prisutna i namjenska pšenična brašna (npr. brašna za dizana tijesta, za vučena (tanka) tijesta...). Namjenska brašna su mlinski proizvodi koji su svojom kvalitetom prilagođeni specifičnim zahtjevima za određene vrste gotovih proizvoda. Za proizvodnju ovih brašna koriste se odabrane sorte pšenice iz kojih se odgovarajućim vođenjem procesa mljevenja i dodatnim tehnološkim postupcima postižu karakteristična svojstva za pojedine vrste namjenskih brašna.\r\nUpotrebom namjenskih brašna i manje iskusne domaćice postižu odličnu kvalitetu proizvoda za koje su brašna namijenjena.\r\n\r\nDurum brašno je pšenično brašno proizvedeno iz pšenice staklaste strukture i velike tvrdoće Triticum durum koje daje kratka, žilava i neelastična tijesta.\r\nOvo se brašno koristi za proizvodnju tjestenina, a nije pogodno za pripremu kruha i drugih proizvoda od dizanog tijesta.\r\n\r\nDinkel brašno (pirovo, krupnikovo ili spelt brašno) dobiva se mljevenjem tzv. prapšenice Triticum spelta. Ovo brašno je sličnog sastava kao obično pšenično brašno, ali s većim sadržajem dijetalnih vlakana i proteina. Gluten je lošije kvalitete pa se pri pripremi kruha treba miješati sa standardnim krušnim brašnima. Daje proizvode punijeg okusa od proizvoda krušne pšenice.\r\n\r\nOsim pšenice za proizvodnju brašna najčešće korištene žitarice su raž i kukuruz.\r\n\r\nRažena brašna se prema količini pepela na tržištu nalaze kao tip 750, tip 950, tip 1250 i raženo brašno iz cijelog zrna. Porastom udjela pepela povećava se i nutritivna vrijednost raženog brašna. Tako je raženo brašno tip 1250 visokovrijedan proizvod koji se odlikuje visokim sadržajem Ca i Fe, a proteini raži su veće prehrambene vrijednosti u odnosu na proteine pšenice zbog povoljnijeg aminokiselinskog sastava. Ova vrsta brašna kruhu daje puniji okus i svježinu, a zbog manjeg sadržaja kvalitetnog glutena i veće enzimske aktivnosti poželjno ga je miješati s dijelom pšeničnog brašna.\r\n\r\nKukuruzno brašno upotrebljava se za pripremu kruha i peciva, tortilja, tradicionalnih jela (zlevanka, bazlamača)... Za pripremu kruha i peciva potrebno ga je miješati s pšeničnim brašnom jer ne sadrži gluten. Uobičajeno je kukuruzno brašno prethodno popariti vrelom vodom, ohladiti, a zatim umiješati tijesto.\r\nKruh s kukuruznim brašnom je žute boje, pomalo zbijene sredine (ovisno o količini kukuruznog brašna), punog aromatičnog okusa.\r\n\r\nUz pšenično, kukuruzno i raženo brašno na tržištu se nalaze: heljdino brašno, ječmeno brašno, zobeno brašno i proseno brašno, no ona se koriste znatno rjeđe u pripremi proizvoda od dizanog tijesta i to gotovo uvijek uz dodatak pšeničnog brašna.\r\n\r\nBrašna koja ne sadrže gluten (rižino, kukuruzno, proseno i heljdino brašno), mogu se koristiti u prehrani oboljelih od celijakije. Pri pripremi kruha i peciva od ovih brašna, funkciju glutena koji je neophodan za izradu kvalitetnih proizvoda od dizanog tijesta moguće je nadoknaditi upotrebom hidrokoloida (guar guma, pektin i sl).'),
(13, 'Općenito o jabuci', 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao nadjev za pite, savijače, tople torte, krustade i palačinke.\r\n\r\n'),
(14, 'Opis i podrijetlo', 'Stablo jabuke najčešće je kultivirano stablo na svijetu, a kao divlje raslo je u Europi još u pretpovijesno doba. Pitoma jabuka podrijetlom je iz južnog Sibira i Azije, a Grci i Rimljani uzgajali su različite sorte.\r\n\r\nStablo jabuke može biti do 12 m visoko, s razgranatom krošnjom koju izgrađuju jajoliki listovi. U svibnju cvate blijedo ružičastim do bijelim cvjetovima, a plodovi sazrijevaju od srpnja do listopada, ovisno o sorti jabuke.\r\n\r\nJabuka je među najrasprostranjenijim vrstama voća; osvježavajuća, kiselo-slatkog okusa i svojstvene arome. Poznate su brojne sorte (njih oko 10 000), koje se međusobno razlikuju po okusu, slatkoći ili kiselosti, konzistenciji i sočnosti.'),
(15, 'Energetska i nutritivna vrijednost', 'Plod jabuke bogat je hranjivim sastojcima čija količina ovisi o vrsti te o načinu uzgoja, a gotovo svi potrebni nutrijenti prisutni su barem u minimalnim količinama.\r\n\r\nProsječno, voda čini 82% težine ploda, ugljikohidrata ima oko 12%, masti i bjelančevina zajedno oko 1%, a celuloza se nalazi u plodu u količini od oko 1%. Osim osnovnih tvari, jabuka sadrži i niz drugih sastojaka neophodnih za ljudski organizam: šećer (glukoza, fruktoza i saharoza), netopiva vlakna (pektin), organske kiseline (omjer šećera i kiselina određuje slatkoću), sve esencijalne i neesencijalne aminokiseline (ali u vrlo malim količinama), aromatične tvari, boje (klorofil, karoteonidi i antocijani), vitamine i minerale (osobito ima dosta kalija), pa čak i masnoće (sjemenke sadrže 24% ulja).\r\n\r\nUjedno jabuka sadrži 3,3 g dijetalnih vlakana – više od 10% dnevne količine vlakana koju preporučuju stručnjaci za prehranu.\r\n\r\nDOBAR IZVOR - pojam se odnosi na one namirnice koje sadrže vitamine, minerale, proteine i vlakna u količini od najmanje 10% dnevnih potreba (RDA).\r\nODLIČAN IZVOR - pojam se odnosi na one namirnice koje sadrže vitamine, minerale, proteine i vlakna u količini od najmanje 20% dnevnih potreba (RDA).\r\nRDA - Recommended Dietary Allowances (preporučene dnevne količine).'),
(16, 'Ljekovitost', 'Jabuka se najčešće jede sirova, ali se i peče, kuha, suši, prerađuje u sokove, marmelade, džemove, želee, a poznat je i vrlo cijenjen jabučni ocat.\r\n\r\nJabučni ocat proizvod je dobiven vrenjem jabuka ili prevrelog jabučnog soka. Primjenjuje se u tradicionalnoj medicini zbog značajnog prisustva kalija, ključnog mineralnog sastojka neophodnog za zdravlje organizma. Važnost je kalija u tome što veže i ostale korisne mineralne sastojke: fosfor, magnezij, kalcij, sumpor, željezo, fluor, a u manjoj mjeri i druge minerale. Konzumira se u raznim kombinacijama, najčešće s medom i vodom.\r\n\r\nSvježe jabuke preporučuje se jesti pola sata prije ili nekoliko sati poslije obroka. Jabuka sadrži veliki postotak vode, u kojoj su otopljeni hranjivi sastojci, te prolazi kroz želudac u roku od 15-20 minuta pa se sve brzo resorbira. Jede li se jabuka s drugom hranom, osobito masnom i bogatom bjelančevinama, zajedno s njima zadržat će se u želucu i nekoliko sati.\r\n\r\nJabuka je redovita sastavnica dijeta za mršavljenje, i to iz više razloga. Zahvaljujući sadržaju pektina (netopivog vlakna koje bubri u doticaju s vodom), jabuka uspijeva stvoriti dodatni osjećaj punoće i sitosti. Osim toga, jabuka sadrži i monosaharid fruktozu, šećer koji može izazvati zadovoljenje želje za slatkim, a da ne dolazi do velikih promjena u koncentraciji glukoze u krvi. Iz tog razloga, posljedično se ne povećava izlučivanje hormona inzulina koji može potaknuti uskladištavanje šećera i stvaranje masti iz šećera. Novija istraživanja pokazuju da taninska kiselina sadržana u jabuci značajno utječe na metabolizam masti i onemogućuje njihovo taloženje u jetri. Jabukom se unosi mnogo vode (što je poželjno u redukcijskim dijetama), vitamina i minerala, vlakana, koja pomažu regulaciji stolice i daju osjećaj sitosti, a pojačava se i lučenje mokraće.\r\n\r\nJabuka olakšava probavu, a sadrži i mnoštvo korisnih tvari koje potiču rad imunološkog sustava, onemogućuje taloženje masti u jetri i štiti od karcinoma.\r\n\r\nOd bioflavonoida jabuka sadrži najviše antocijana, koji su koncentrirani u kori i daju jabuci crvenu boju. Iz tog je razloga preporučljivo jesti jabuku s korom, a ne zbog sadržaja vitamina C jer je on ravnomjerno raspoređen po cijelom plodu. Antocijani imaju protuupalno djelovanje; djeluju zaštitno na jetru i srce te otežavaju nastanak karcinoma, a djeluju i stimulativno na imunološki sustav. Bioflavonoidi pojačavaju djelovanje C vitamina, a ta je poželjna kombinacija baš u jabuci, koju svakako treba uključiti u svakodnevnu prehranu.'),
(17, 'Priprema jela s jabukama', 'U domaćinstvu se jabuke, osim sirovih, često upotrebljavaju kao nadjev za pite, savijače, tople torte, krustade i palačinke.\r\n\r\nKao jednostavna dječja poslastica jabuke se često pripremaju narezane na ploške, obučene u tekuće tijesto, pržene i posipane cimetom i šećerom. Poznate su pod imenom jabuke u tijestu ili – po domaći – jabuke \"u šlafroku\".\r\n\r\nJednako tako konzumiraju se svježe pokapane limunovim sokom kao sastavni dio voćnih salata ili kuhane u šećernom sirupu kao kompot.\r\n\r\nJabuke se mogu narezati na tanke ploške i sušiti na zraku ili u pećnici na 70°C te postati ukusni voćni čips.\r\n\r\nOne su također osvježavajući sastojak povrtnih ili mesnih salata koje su povezane majonezom ili nekim drugim salatnim preljevom. Naribana sirova jabuka može se dodati pirjanom kupusu koji se poslužuje kao prilog mesnim jelima.\r\n\r\nOd kuhanih jabuka priprema se pire koji se može poslužiti uz razna pečenja. Osim znanih pečenih jabuka sa šećerom, jabuke se mogu peći i koristiti kao dodatak za poboljšavanje arome mesu i umaku od pečenja.'),
(18, 'Općenito o soli', 'Kuhinjska sol je, u umjerenim količinama, neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim zbog njene prekomjerne konzumacije ona je danas opasnost za čovjeka.'),
(19, 'Zašto je štetna?', 'Vodeći je rizični čimbenik hipertenzije, ali je povezana i s ostalim bolestima kao što su bubrežni kamenci, karcinom želuca i gornjeg dijela ždrijela, osteoporoza i bronhalna astma.'),
(20, 'U kojoj količini je trebamo?', 'Prema Svjetskoj zdravstvenoj organizaciji (WHO) preporučeni dnevni unos je 5g/dan, a u Hrvatskoj se prosječno unosi 11,6 g/dan. Veliki broj namirnica koje unosimo u organizam prirodno sadrže dovoljnu količinu soli, međutim čovjek je svakodnevno dodaje hrani u svrhu poboljšanja okusa.'),
(21, 'Koja hrana je sadrži u većoj količini?', 'Najviše soli unosimo u obliku tzv. „skrivenih soli“ jedući gotovu i polugotovu hranu, hraneći se u restoranima, unosom grickalica (čips, štapići, kikiriki, pistacio), kruha i pekarskih proizvoda, suhomesnatih proizvoda, tvrdih sireva, sirnih namaza, kukuruznih pahuljica, gotovih umaka, senfa, majoneze, hamburgera, juha iz vrećice, polugotovih jela.\r\n\r\n'),
(22, 'Kako smanjenje soli utječe na moj organizam?', 'Manje soli u hrani doprinosi smanjenju krvnog tlaka, al i povećava učinak lijekova koji se uzimaju kod hipertenzije, učinkovito bi djelovalo i na rad bubrega. Osim smanjenjem unosa soli, organizmu možemo pomoći i povećanim unosom kalija. Ravnoteža između količine natrija i kalija u prehrani ima direktni utjecaj na razinu krvnoga tlaka. Kalij ćemo naći u neobrađenim namirnicama poput svježeg voća i povrća te u cjelovitim žitaricama.'),
(23, 'Općenito o medu', 'Med je najdostupniji pčelinji proizvod i prati čovjeka od davnina. Biljke luče nektar, kojeg neki nazivaju još i “sokom života“ biljaka, kako bi privukle pčele, a one ih zauzvrat oprašuju i stvaraju novi život. Sakupljeni nektar pčele pretvaraju u med.\r\n\r\nMed je slatka, gusta, viskozna tekućina ili kristalizirana tvar koju ljudi nisu još ni dan danas uspjeli proizvesti umjetnim, industrijskim putem. Med za razliku od običnog šećera koji predstavlja samo “sirovu energiju“, oslobođenu bilo kakvih dodatnih prehrambenih vrijednosti, sadrži jednostavne, lako probavljive šećere-fruktozu i glukozu, vitamine, minerale, bjelančevine, fermente, biljne hormone, flavonoide…\r\n\r\nSuvremeni čovjek, u potrazi za povratkom prirodi i neprerađenoj hranom koja ima blagotvoran učinak na zdravlje, ponovno otkriva med!\r\n\r\nSvakodnevno smo suočeni izlaganju ljudske okoline i prehrane brojnim postupcima koji ostavljaju negativan trag na zdravlje čovjeka. U poplavi rafiniranih i izmijenjenih namirnica, pčelinji proizvodi su rijetka vrsta hrane, koja do krajnjeg potrošača dolazi u neizmjenjenom obliku, bez industrijske obrade – onakva kakvu su pčele proizvele, bez aditiva i konzervansa.\r\n\r\nOsim modernih znanstvenih istraživanja koja govore u prilog prehrambenoj vrijednosti meda, u prilog njegovoj konzumaciji svakako govore tisućljeća njegove prisutnosti u ljudskoj prehrani – med je zasigurno bio prvi slatkiš koji je čovjek okusio. Također, u velikoj ponudi korisnih, ali skupih dodataka prehrani, med ostaje i cijenom jedan od najpristupačnijih izvora zdravlja koje bi trebalo uključiti u svoju prehranu.'),
(24, 'Činjenice o medu', 'Prirodno svojstvo meda je kristalizacija (čije je prisustvo na nižim temperaturama dokaz kako se radi o izvornom medu).\r\nSve pčelinje proizvode treba što dulje držati u ustima, jer oni sadrže veliki broj jednostavnih tvari koje se mogu apsorbirati direktno u krv putem podjezičnih krvnih žila. To nam osigurava maksimalnu iskoristivost jer ako ih odmah progutamo, želučane kiseline dio tih tvari odmah razgrade i niti ne dođu u krv.\r\nMed tamnije boje sadrži više mineralnih tvari od svjetlijih vrsta meda.\r\nMed ima hidroskopna svojstva tj. sposobnost upijanja vlage. Stoga ga treba uvijek nastojati uzimati s tekućinom (veće količine meda konzumirane na tašte mogu izazvati bolove u želucu).\r\nMed se pri dekristalizaciji ne smije zagrijavati na temperaturu višu od 40°C jer gubi vrijedne prehrambene sastojke.\r\nMed treba uvijek uzimati čistim, suhim, drvenim, plastičnim, keramičkim ili staklenim predmetima, a nikako metalnim žlicama. Kod kontakta metala s medom dolazi do reakcija organskih kiselina iz meda i metala što dovodi do nepoželjnih reakcija za ljudski organizam.\r\nMed se čuva u zatvorenim posudama na suhom i tamnom mjestu i na sobnoj temperaturi. U tim uvjetima med zanemarivo gubi svoja svojstva unutar dvije godine.\r\nPreporuka je konzumirati med sa prostora gdje živite jer samo taj med sadrži peludna zrnca sa tog prostora. Organizam se na taj način privikava na iste vrste peluda i stvara otpornost na alergijske reakcije.\r\nOrganoleptičkom procjenom meda obuhvaćeni su: okus, miris, boja, konzistencija, čistoća i zrelost meda.\r\nMed lako i brzo upija vanjske mirise o čemu valja voditi računa prigodom skladištenja.\r\nPeludna analiza meda je pokazatelj podrijetla i kakvoće meda.\r\nJedna litra meda ima težinu od 1,42 kg.\r\nMed se smrzava na temperaturi od -17°C. Tada se volumen meda smanjuje za 10%.\r\nProces kristalizacije se najbrže odvija na temperaturi od 14°C.'),
(25, 'Učinci meda', 'Med je vrlo kvalitetna i hranjiva namirnica. On je koncentrirani i visokokalorični proizvod, a po kemijskom sastavu bitno se razlikuje od svih drugih prehrambenih proizvoda. Glavne hranjive tvari u medu su: razne vrste šećera, bjelančevine, mineralne soli, vitamini i enzimi.\r\n\r\nKoje sve pozitivne učinke na organizam ima med?\r\n\r\nAntioksidativna aktivnost – smanjuje oksidaciju lipoproteina u ljudskoj krvi koja je inače važan faktor u nastanku arteroskleroze. Redovita upotreba meda znatno smanjuje rizik od pojave raka, kardiovaskularnih bolesti, Alzheimerove bolesti i posljedica starosti, bitno umanjuje faktore koji uzrokuju kardiovaskularna oboljenja, smanjuje kolesterol i trigliceride. Antioksidativnu aktivnost imaju sve vrste, ali je najviše izražena kod tamnijih vrsta livadnog (cvjetnog) meda.\r\n\r\nAktivator imunosustava – pomaže u boljoj reakciji organizma na infekcije. Med stimulira stvaranje antitijela i tijekom primarnog i tijekom sekundarnog imunoodgovora. Povećava otpornost organizma u borbi protiv infekcija tako što podiže razinu korisnih tvari, a smanjuje razinu štetnih.\r\n\r\nAntibakterijska svojstva – putem više mehanizama djeluje na bakterije. Kada se med otopi u čaju ili mlijeku ovaj enzim se aktivira i počinje oslobađati vodikov peroksid koji obavlja lokalnu dezinfekciju u usnoj šupljini. Malo je poznato da je med, iako sladak, zapravo kisela sredina što ne pogoduje bakterijama. U medu ima puno jednostavnih šećera koji doslovno izvuku tekućinu iz bakterija i one uginu.\r\n\r\nAntimutagena i antikancerogena svojstva – istraživanjem je dokazano da, ako se meso prije pečenja jednostavno premaže medom, ne dolazi do stvaranja kancerogenih tvari. Naime, tamo gdje je meso jako zapečeno stvaraju se tzv. heterociklički aromatski amini koji su dokazani izazivači raka. Pojava raka u probavnom sustavu, među ostalim, direktno ovisi od količine tih tvari unesenih tijekom života u organizam. Medom se to može pomoći spriječiti.'),
(26, 'Vrste meda', 'KADULJA: izvrsnog je okusa i mirisa po cvijetu, boja mu je svijetla do tamno jantarna sa zelenkastim odsjajem. Nezamjenjiv je kod tegoba dišnih organa jer ima snažno antiseptičko i umirujuće djelovanje. Uvelike pomaže kod suhog kašlja i bronhitisa jer pospješuje sazrijevanje i izbacivanje sekreta iz dišnih puteva. Ljekovitost kaduljinog meda ubraja se u vodeću grupu meda za liječenje respiratornog sustava. Čaj s medom od kadulje ne smije se uzimat vruć, već mlak.\r\n\r\nPLANIKA (MAGINJA): rijedak i izuzetno cijenjen med, tamno jantarne boje. Izrazito je gust i gorkog je okusa pa ga mogu konzumirat i dijabetičari. Ovo je najgorčiji med na svijetu. Med od planike je prirodni antioksidans. Preporučuje se za poboljšanje krvne slike i reguliranje krvnog tlaka. Blagotvorno djeluje na dišni sustav, pa ga koriste astmatičari (jedna žlica prije spavanja). Preporučuje se i osobama koje pate od učestalih upala mjehura i mokraćnih kanala. Bonkulovići ga obožavaju u kombinaciji sa sirom.\r\n\r\nLIVADNI (MIJEŠANI ili kolokvijalno nazvan CVJETNI) MED: med od raznog livadnog cvijeća, a njegova karakteristika je postojanje velike količine različite vrste peludi. Miris mu je blag do jako aromatičan, od svijetle boje pa sve do zagasito tamne – zavisno od lokacije pčela. Svojstvo mu je da vrlo brzo kristalizira. Smatra se da povoljno djeluje na oporavak nakon bolesti, kod srčanih tegoba te kod djece u razvoju i starijih osoba.\r\n\r\nVRIJESAK: svijetao i ugodnog blagog mirisa. Uzimanje se preporučuje kod reumatičnih oboljenja, bolesti mokraćnih putova i bubrega, posebno u čajnim smjesama npr. od breze, kamilice, šipka. Med od vrijeska je tamnosmeđe boje s narančastocrvenim odsjajem. U mirisu mu se osjeća karamel.\r\n\r\nMANDARINA (AGRUMI): po boji med od mandarine (agruma) spada u kategoriju svijetlih vrsta meda. Njegova je boja žuta sa svjetlim i tamnijim nijansama. Ima srednje intezivan miris koji spada u cvjetne voćne mirise. Prema okusu spada u kategoriju srednje slatkih vrsta meda. Riječ je o rjeđoj vrsti meda.\r\n\r\nRUZMARIN: koristi se kao lijek kod bolesti dišnih puteva jer djeluje kao dezinficijens na dišne organe, regulira cirkulaciju krvi, poboljšava funkciju jetre. Kod fizičke i psihičke iscrpljenosti preporuča se uzimanje ruzmarinovog meda.\r\n\r\nLAVANDA: med od lavande je svijetložut, bistar i proziran. Ugodnog je, malo oštrijeg okusa. Spada u red kvalitetnijih i traženijih vrsta meda. Djeluje blago i umirujuće, a uzima se još i kod probavnih smetnji.'),
(27, 'Općenito o maslinovom ulju', 'Francuski novelist Georges Duhamel napisao je: „Gdje prestaju stabla maslina, završava Mediteran”. Veza Mediterana i maslinova ulja neraskidiva je, a ovo najstarije kulinarsko ulje od drevnih je vremena do danas smatrano simbolom izvrsnosti, čistoće i jednostavnosti.'),
(28, 'Zdravstvene prednosti konzumacije maslinova ulja', 'Danas je općepoznata činjenica da je mediteranska prehrana ideal pravilne prehrane. Međutim, ako se pitate tko je i kako prvi došao do te spoznaje, možda će vas začuditi da su to bili upravo Amerikanci, a istraživanje je provedeno na području Grčke, točnije na Kreti.\r\n\r\nEpidemiolog Leland Allbaugh gotovo je savršeno dizajnirao i proveo studiju koristeći nekoliko metoda čiji su rezultati objavljeni kao monografija 50-ih godina. U spomenutoj monografiji stoji: „masline, žitarice, sjemenke, divlje povrće i trave, voće, uz male količine kozjeg mesa i mlijeka te riba temeljna su hrana na Kreti već četrdeset stoljeća… niti jedan obrok nije potpun bez kruha… Masline i maslinovo ulje značajno doprinose energetskom unosu… čini se da hrana doslovno ‚pliva’ u maslinovu ulju…” Rezultati studije ukazali su da je unos masnoća koje su se uglavnom temeljile na maslinovu ulju dvostruko viši od prosječnog unosa masnoća u tadašnjem SAD-u. Na Kreti se jelo dvostruko više orašastih plodova i sjemenki te voća i povrća nego u SAD-u. Istodobno je unos mesa i mliječnih proizvoda bio gotovo pet puta niži u usporedbi s SAD-om. Zanimljiv je podatak da je u to doba učestalost bolesti srca u grčkoj populaciji bila približno 90% niža od učestalosti u Americi. Istodobno, učestalost drugih kroničnih bolesti također je bila niža nego u drugim zemljama. Primjerice, učestalost raka dojke bila je četiri puta niža nego u Japanu, a životni vijek Grkinja bio je najdulji na svijetu. Sve ove blagodati vjerojatno se ne mogu pripisati isključivo konzumaciji maslinova ulja, nego općenito mediteranskom načinu života i prehrane koji danas nažalost nestaje s prostora Mediterana.'),
(29, 'Nutritivna svojstva maslinova ulja', 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji služe kao prirodni antioksidansi i sprečavaju užegnuće ulja. Antioksidativnom djelovanju maslinova ulja pridonose i vitamin E, koji se ovdje nalazi u svome najboljem obliku kao alfa-tokoferol te fenolne komponente. Iako su ulja koja obiluju nezasićenim masnim kiselinama obično nepogodna za prženje, maslinovo je ulje iznimka jer sadrži visoku koncentraciju jednostruko nazasićene oleinske masne kiseline te visoku koncentraciju fenolnih komponenti. Ove supstancije pridonose stabilnosti ulja na visokim temperaturama te se stoga maslinovo ulje može koristiti i za pečenje i prženje bez straha od razvoja nepoželjnih spojeva. Ipak, najbolja svojstva maslinova ulja dolaze do izražaja kada se ono koristi hladno ili tek blago zagrijano. Tada ostaju sačuvane sve poželjne komponente i arome ove iznimno vrijedne namirnice.\r\n\r\nMaslinova ulja trebala bi biti pakirana u tamnim bocama ili u ambalaži jer one štite ulje od promjena uzrokovanih svjetlom. Ulje je najbolje upotrijebiti najkasnije 24 mjeseca nakon punjenja.'),
(30, 'Zdravstvene prednosti', 'Ekstradjevičansko maslinovo ulje dobiva se hladnim prešanjem jer se ovim postupkom najbolje mogu očuvati organoleptička i kemijska svojstva maslinova ulja. Ulje se proizvodi procesom kojim se plod najprije zdrobi (gnječenjem), a zatim se prešanjem dobivene smjese cijedi ulje. Postoje razne tehnologije obrade maslina, ali je najzdravije ulje dobiveno hladnim prešanjem, dakle bez dodatnog zagrijavanja.\r\n\r\nMaslinovo ulje lako je probavljivo, a ima blagotvoran utjecaj na srce i krvne žile. Naime, zbog visokog sadržaja jednostruko nezasićenih masnih kiselina (77%) te sadržaja antioksidansa, maslinovo ulje štiti HDL ili ‚dobar’ kolesterol, a smanjuje udio lošeg, LDL kolesterola. Mala ga djeca probavljaju neusporedivo lakše nego bilo koje druge vrste masnoća jer je majčino mlijeko najbogatije upravo oleinskom kiselinom. Zbog iznimnog sadržaja antioksidansa, poglavito fenolnih tvari, ekstradjevičansko maslinovo ulje prevenira karcinom (kože, dojke, kolona), koronarnu bolest srca te usporava proces starenja zbog utjecaja na oksidativni stres.'),
(31, 'Gorko je zdravo', 'Znanstvena istraživanja novijeg datuma ukazala su da svježe ekstradjevičansko maslinovo ulje sadrži kemijski spoj koji djeluje poput lijekova za ublažavanja boli. Spoj po imenu oleokantal karakterističan je po izrazito gorkom okusu, a blokira iste mehanizme koji prate bol kao i neki postojeći nesteroidni protuupalni lijekovi. Oleokantal djeluje kao prirodno protuupalno sredstvo, a ima snagu i karakteristike koje u velikoj mjeri odgovaraju popularnim lijekovima protiv boli. Dnevni unos 50 grama maslinova ulja odgovara desetini doze lijeka protiv boli preporučene odraslim osobama. Znanstvenici zaključuju kako redovita konzumacija maslinova ulja može na dugi rok imati isti pozitivan učinak kao i uzimanje lijekova protiv boli.'),
(32, 'Općenito o šećeru', 'Šećer je opći pojam za klasu kristalnih ili praškastih hemijskih supstanci karakterističnog slatkog ukusa, od kojih se većina koristi u ishrani. Oni su po hemijskom sastavu ugljikohidrati, sastavljeni od atoma ugljika, vodika i kisika. Postoje različite vrste šećera derivirane iz različitih izvora. Šećeri se klasificiraju kao monosaharidi, disaharidi i trisaharidi. Najjednostavni šećeri nazivaju se monosaharidi, a uključuju glukozu (također poznatu i kao dekstrozu), fruktozu i galaktozu. Granulirani ili stoni šećer koji se najčešće koristi u ishrani je saharoza (C12H22O11), koja spada u disaharide. U organizmu, saharoza se hidrolizira u fruktozu i glukozu. U druge disaharide spadaju maltoza i laktoza (mliječni šećer). Osim šećera, i druge supstance također imaju sladak ukusa, ali se hemijski značajno razlikuju od ugljikohidrata, te se ne ubrajuju u šećere. Neki od njih se koriste kao niskokalorična zamjena za šećer, poput umjetnih zaslađivača.\r\n\r\nSaharoza se uglavnom dobija od šećerne repe i šećerne trske.'),
(33, 'Proizvodnja', 'Šećerna repa se vadi u ranu jesen. Ako vađenje zakasni, ili dođu rani mrazovi, repu treba čuvati. Odreže se lišće zajedno s najgornjim dijelom, otprema se u tvornicu, i tamo započinje šećerna kampanja koja traje od 2 do 3 mjeseca. Ubrzanim se tempom prerađuju zalihe repe kojom šećerana raspolaže. Repa se ubrzanoo prerađuje zato što se i poslije vađenja iz zemlje u repi odvijaju procesi pod uticajem enzima invertaze i prisutnih organskih kiselina. Pod njihovim se uticajem saharoza djeli na 2 monosaharida: glukozu i fruktozu. Taj se proces naziva inverzija, a dobivena smjesa glukoze i fruktoze invertni šećer.'),
(34, 'Opasnost šećera', 'Saharoza ili stolni šećer može biti i opasna namirnica ako se koristi u prekomjernim količinama. Najbolje je upotrebu tog šećera u svakodnevnoj prehrani svesti na minimum. Naš organizam u biokemijskom smislu nije prilagođen na ogromne količine saharoze koje svakodnevno konzumiramo. Najopasnije je to što često nismo svjesni da konzumiramo stolni šećer jer je on \"skriven\" u nekom proizvodu. Ti se slatki proizvodi inače vrlo lako jedu, pa je to jedan od razloga zašto se lako pretjeruje s kolačima, kremama, bombonima i ostalim slasticama.\r\nSav suvišan šećer koji se u našem organizmu ne iskoristi u obliku energije pretvorit će se u rezervnu mast, ali upravo u onu koja je dogovorna za nastanak brojnih degenerativnih bolesti. Prekomjerno uživanje šećera osim što dovodi do gojaznosti, može uzrokovati oštećenje žlijezde gušterače, pa uz utjecaj stresa i nasljednih čimbenika dolazi do pojave dijabetesa ili šećerne bolesti. Nadalje, takav nezdravi način prehrane kroz duže vremensko razdoblje dovodi do oštećenja krvnih žila i pojave ateroskleroze.\r\nŠećer daje energiju ako ga potrošimo, a ako ne, stvara masne naslage u našem organizmu na vrlo osjetljivim i opasnim mjestima. On je isključivo potrošač vitaminskih i mineralnih zaliha organizma. Posebno se za metabolizam šećera troše vitamini B-skupine.\r\nSmeđi šećer je po kemijskom sastavu isti kao i bijeli, stolni šećer. Prednost smeđeg šećera je u tome što ne izaziva dodatnu fermentaciju u crijevima. Poželjno je stoga uvijek umjesto bijelog, koristiti smeđi šećer ako ga već moramo upotrijebiti, primjerice za spremanje kolača.'),
(35, 'Općenito o papru', 'Papar (crni papar, lat. Piper nigrum) (regionalno biber) je višegodišnja drvenasta zimzelena biljka penjačica iz razreda Magnoliopsida, porodice paparovki Piperaceae. Domovina crnog papra je indijska država Kerala, gdje raste divlje u planinama na Zapadnim Gatima.\r\n\r\nMože dostići visinu do 15 metara. Oko sedme godine rađa punim rodom. Grozdovi papra su vrlo sitni, s plodovima promjera oko 5 mm, a rastu poput ribiza u plodištu dugom do 14 cm. Bobice mogu biti crvene, žute ili zelene boje, što ovisi o stupnju zrelosti. One uz škrob, smolu i ulje sadrže i piperinsku kiselinu, koja papru daje karakterističan okus. Miris papra potječe od pelandrena, kariopilena i seskviterpena u eteričnom ulju.'),
(36, 'Povijest', 'Bobice papra (čitave ili mljevene) služe kao začin za pripravljanje mnogih vrsta jela. Poznavali su ga još i stari Grci, koji su ga, uz dodatak hrani, primjenjivali i kao lijek. Rimljani su ga stavljali gotovo u svako jelo, pa i u mlijeko, med i kolače. Jedno vrijeme papar je služio i kao plaćevno sredstvo. Tako je, naprimjer, Alarik I., vizigotski kralj, 410. godine tražio od građana Rima tonu i pol papra kako bi poštedio grad. U srednjem vijeku je, uz sol i ocat, bio najrašireniji dodatak hrani, usprkos njegovoj visokoj cijeni koja je dosezala i trotjednu poljoprivrednu nadnicu za pola kilograma papra. Danas je postao dostupan i niske cijene, a uzgaja se po tropskim krajevima, ponajprije u Brazilu i Indoneziji.\r\n\r\nZa papar se kaže da je promijenio tijek povijesti jer je bio najvažniji čimbenik u traženju morskih putova iz Europe prema Istoku. Potraga za paprom stoljećima je dominirala svjetskom trgovinom začinima.'),
(37, 'Branje i vrste papra', '. Bobice zelenoga papra beru se još nedozrele, a njihov je okus nešto blaži i sočniji, s punom aromom, ali slabijom ljutošću. Sušenjem na suncu bobica koje su tek počele crvenjeti dobiva se crni papar, koji je najrašireniji kao začin. Bijeli papar dobiva se od potpuno zrelih, crvenih bobica s kojih se guli vanjska pokožica, a ogoljena bijela unutrašnjost nakon toga se suši i pritom zadržava tipičnu boju i aromu. Njegov okus manje je pikantan od okusa crnoga papra. Crni papar sadrži oko 3%, a bijeli oko 1% eteričnog ulja koje im daje aromu. Oštar okus papra potječe od alkaloida piperina, kojega je najviše u bijelom papru. Na tržištu se može naći nekoliko odlika papra: malabar garbled, tellichery extra bold i dr.; pod imenom papra pojavljuju se i neke druge vrste, ali i vrlo slični začini. Papar raste u vlažnoj tropskoj klimi, do 1200 m nadmorske visine. U svijetu se danas uzgaja na približno 450 000 ha, uglavnom na plantažama. Najveći su proizvođači: Indija, Indonezija, Vijetnam, Šri Lanka i Brazil.'),
(43, NULL, 'aaaaaaaaa'),
(46, '', 'aaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` int(10) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `naziv`) VALUES
(1, 'Mliječni proizvod'),
(2, 'Jaja'),
(3, 'Pekarski proizvod'),
(4, 'Voće'),
(5, 'Povrće'),
(6, 'Začin'),
(7, 'Zaslađivač'),
(8, 'Ulje'),
(9, 'Meso');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `razina` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `username`, `password`, `razina`) VALUES
(1, 'Ana', 'Anica', 'AnaBanana', '$2y$10$Sj0ZwcnYBIFQxzl0gMEcTuOHyESKORSPkkmNcjUd8v/Sr/8gz4tbe', 1),
(2, 'Ivana', 'Maric', 'Jagodica3', '$2y$10$sS4YGCLF6PjKhN4VSMmhf.ikPmhgcdegoQ6rqQv/cCLcp8CcCJ7Aa', 1),
(4, 'ema', 'pletes', 'ema123', '$2y$10$0y8ZqaeljceRyAn.pLGQ.erJHKeW6611eTPZSsuukrPPaBrq82rBa', 0),
(5, 'test', 'test', 'test', '$2y$10$.zxyVsmsyq5LrtHaZ/CGK.OMR5a9wT.xe1RMynd5AcPasIHtOwHMC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `namirnice`
--

CREATE TABLE `namirnice` (
  `id` int(11) NOT NULL,
  `naziv` varchar(40) NOT NULL,
  `slika` varchar(200) DEFAULT NULL,
  `kategorija_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `namirnice`
--

INSERT INTO `namirnice` (`id`, `naziv`, `slika`, `kategorija_id`) VALUES
(1, 'Sir', 'slike/sir.png', 1),
(2, 'Jaje', 'slike/jaje.png', 2),
(3, 'Kruh', 'slike/kruh.png', 3),
(4, 'Brašno', 'slike/brasno.png', 3),
(5, 'Jabuka', 'slike/jabuka.png', 4),
(6, 'Sol', 'slike/sol.png', 6),
(7, 'Med', 'slike/med.png', 7),
(8, 'Maslinovo ulje', 'slike/maslinovoUlje.png', 8),
(9, 'Šećer', 'slike/šećer.png', 7),
(10, 'Papar', 'slike/papar.png', 6),
(14, 'antonia', 'slike/chef.png', 5),
(15, 'antonia', 'slike/chef.png', 5),
(16, 'antonia', 'slike/chef.png', 5),
(18, 'proba', 'slike/krafne.jpeg', 3),
(21, 'test333', 'slike/krafne.jpeg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `namirnice_clanak`
--

CREATE TABLE `namirnice_clanak` (
  `id_namirnice` int(11) NOT NULL,
  `id_clanak` int(11) NOT NULL,
  `uvod` text NOT NULL,
  `prikaz` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `namirnice_clanak`
--

INSERT INTO `namirnice_clanak` (`id_namirnice`, `id_clanak`, `uvod`, `prikaz`) VALUES
(1, 1, 'Sir je čvrsta hrana koja nastaje od zgusnutog mlijeka krava, koza, ovaca ili ostalih sisavaca. Mlijeko je zgusnuto (usireno) koristeći...', 1),
(1, 2, 'Sir je čvrsta hrana koja nastaje od zgusnutog mlijeka krava, koza, ovaca ili ostalih sisavaca. Mlijeko je zgusnuto (usireno) koristeći...', 1),
(1, 3, 'Sir je čvrsta hrana koja nastaje od zgusnutog mlijeka krava, koza, ovaca ili ostalih sisavaca. Mlijeko je zgusnuto (usireno) koristeći...', 1),
(2, 4, 'Stajališta o ulozi jaja u prehrani drastično se mijenjaju posljednjih desetljeća. Jaja su se smatrala izvarednim, a ipak...', 1),
(2, 5, 'Stajališta o ulozi jaja u prehrani drastično se mijenjaju posljednjih desetljeća. Jaja su se smatrala izvarednim, a ipak...', 1),
(2, 6, 'Stajališta o ulozi jaja u prehrani drastično se mijenjaju posljednjih desetljeća. Jaja su se smatrala izvarednim, a ipak...', 1),
(2, 7, 'Stajališta o ulozi jaja u prehrani drastično se mijenjaju posljednjih desetljeća. Jaja su se smatrala izvarednim, a ipak...', 1),
(3, 8, 'Kruh je proizvod koji se dobiva miješanjem brašna s vodom, mlijekom, sirutkom, ili nekom drugom tekućinom uz dodatak kuhinjske soli ili...', 1),
(3, 9, 'Kruh je proizvod koji se dobiva miješanjem brašna s vodom, mlijekom, sirutkom, ili nekom drugom tekućinom uz dodatak kuhinjske soli ili...', 1),
(3, 10, 'Kruh je proizvod koji se dobiva miješanjem brašna s vodom, mlijekom, sirutkom, ili nekom drugom tekućinom uz dodatak kuhinjske soli ili...', 1),
(4, 11, 'Brašno je proizvod uzastopnoga mehaničkog usitnjavanja i prosijavanja zrna žitarica, leguminoza, gomolja, sjemena...', 1),
(4, 12, 'Brašno je proizvod uzastopnoga mehaničkog usitnjavanja i prosijavanja zrna žitarica, leguminoza, gomolja, sjemena...', 1),
(5, 13, 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao...', 1),
(5, 14, 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao...', 1),
(5, 15, 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao...', 1),
(5, 16, 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao...', 1),
(5, 17, 'Jabuka olakšava probavu, a sadrži i mnoge korisne tvari koje potiču rad imunološkog sustava. Osim sirovih, često upotrebljavaju kao...', 1),
(6, 18, 'Kuhinjska sol je neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim...', 1),
(6, 19, 'Kuhinjska sol je neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim...', 1),
(6, 20, 'Kuhinjska sol je neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim...', 1),
(6, 21, 'Kuhinjska sol je neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim...', 1),
(6, 22, 'Kuhinjska sol je neophodna i značajna za ljudsko zdravlje jer ima važnu ulogu u biokemijskim procesima u organizmu, međutim...', 1),
(7, 23, 'Med je najdostupniji pčelinji proizvod i prati čovjeka od davnina. Biljke luče nektar, nazivaju ga još “sokom života“ biljaka, kako bi...', 1),
(7, 24, 'Med je najdostupniji pčelinji proizvod i prati čovjeka od davnina. Biljke luče nektar, nazivaju ga još “sokom života“ biljaka, kako bi...', 1),
(7, 25, 'Med je najdostupniji pčelinji proizvod i prati čovjeka od davnina. Biljke luče nektar, nazivaju ga još “sokom života“ biljaka, kako bi...', 1),
(7, 26, 'Med je najdostupniji pčelinji proizvod i prati čovjeka od davnina. Biljke luče nektar, nazivaju ga još “sokom života“ biljaka, kako bi...', 1),
(8, 27, 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji...', 1),
(8, 28, 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji...', 1),
(8, 29, 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji...', 1),
(8, 30, 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji...', 1),
(8, 31, 'Nutricionistički gledano, ekstradjevičansko maslinovo ulje dragocjena je hrana, bogata klorofilom i karotenoidima koji...', 1),
(9, 32, 'Šećer je opći pojam za klasu kristalnih ili praškastih hemijskih supstanci karakterističnog slatkog ukusa, od kojih se većina...', 1),
(9, 33, 'Šećer je opći pojam za klasu kristalnih ili praškastih hemijskih supstanci karakterističnog slatkog ukusa, od kojih se većina...', 1),
(9, 34, 'Šećer je opći pojam za klasu kristalnih ili praškastih hemijskih supstanci karakterističnog slatkog ukusa, od kojih se većina...', 1),
(10, 35, 'Papar (crni papar, lat. Piper nigrum) (regionalno biber) je višegodišnja drvenasta zimzelena biljka penjačica iz razreda...', 1),
(10, 36, 'Papar (crni papar, lat. Piper nigrum) (regionalno biber) je višegodišnja drvenasta zimzelena biljka penjačica iz razreda...', 1),
(10, 37, 'Papar (crni papar, lat. Piper nigrum) (regionalno biber) je višegodišnja drvenasta zimzelena biljka penjačica iz razreda...', 1),
(18, 43, 'aaaaaaaa', 0),
(21, 46, 'aaaaaa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recepti`
--

CREATE TABLE `recepti` (
  `id` int(11) NOT NULL,
  `naslov` varchar(200) DEFAULT NULL,
  `tekst` text,
  `id_korisnik` int(11) NOT NULL,
  `slika` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recepti`
--

INSERT INTO `recepti` (`id`, `naslov`, `tekst`, `id_korisnik`, `slika`) VALUES
(6, 'Palačinke', 'Sastojci:\r\n2 cijela jaja\r\n200 g glatkoga brašna\r\n200 ml mlakog mlijeka\r\n200 ml gazirane mineralne vode\r\n1 žlica ulja\r\n1 žlica otopljenog maslaca\r\nprstohvat soli\r\nPriprema:\r\n1. Umutiti jaja, dodati polovicu mlijeka i brašna te sve lijepo sjediniti. Zatim dodati drugu polovicu mlijeka, mineralnu vodu, ulje, maslac, sol i lagano dodavajući brašno umutiti u jednoličnu smijesu bez grudica. Ostaviti da odstoji 20-ak minuta da se, ako je slučajno ostala koja, može istopiti i zadnja mrvica brašna.\r\n2. Tavu za palačinke podmazati sa par kapi ulja (ja koristim silikonsku četkicu za kolače) i dobro je zagrijati. To ponavljeti svaki put prije nego što sipate smijesu u tavicu.\r\n3. Istresti jednu kutlaču smijese i ravnomijerno je razliti po tavi. Peći kratko, minutu, dvije, pa je preokrenuti na drugu stranu i ispeći da porumeni.\r\n4. Pečene palačinke slagati na tanjur, jednu na drugu, te nakon što ste ispekli zadnju poklopiti prevrnutim tanjurom.', 1, 'slike/palacinke.jpeg'),
(7, 'Princes krafne od jagoda pjene', 'Sastojci:\r\nZA TIJESTO:\r\n1 Dolcela Princes uštipci\r\n170 ml tople vode\r\n100 ml ulja\r\n2 jaja\r\nZA KREMU:\r\n400 g očišćenih i narezanih jagoda\r\nmlijeko po potrebi\r\n80 g šećera u prahu\r\nšećer u prahu za posipanje\r\nPriprema:\r\n1. Za tijesto, u posudu stavite mješavinu za tijesto, dodajte toplu vode, ulje te lagano miješajte električnom miješalicom.\r\n2. Miješajte sve mikserom dok se ne poveže u mrvičastu i gustu smjesu.\r\n3. Dodajte jedno po jedno jaje i nastavite miješati dok se tijesto ne počne odvajati od posude.\r\n4. Smjesu ostavite deset minuta da odmori pa je prebacite u slastičarsku vrećicu sa zvjezdastim nastavkom za ukrašavanje.\r\n5. Uz pomoć vrećice oblikujte tijesto u hrpice veličine oraha i stavite ih u lim obložen papirom za pečenje.\r\n6. Pecite oko 35 minuta, na 180 °C.\r\n7. Pečene krafne/uštipke pustite da se potpuno ohlade, a zatim ih prerežite na pola.\r\n8. Za kremu, jagode usitnite štapnim mikserom ili u blenderu u glatku tekuću smjesu.\r\n9. Prebacite u menzuru te dodajte mlijeka koliko je potrebno da bi imali 600 ml tekućine.\r\n10. Dobivenu smjesu od jagoda pomiješajte s praškom za kremu i šećerom.\r\n11. Sve miksajte mikserom na najjačoj brzini dok se ne pretvori u čvrstu kremu.\r\n12. Kremu prebacite u slastičarsku vrećicu s okruglim nastavkom te istisnite u donje polovice pečenih uštipaka.\r\n13. Kremu prekrijte gornjom polovicom uštipka te sve posipajte šećerom u prahu.', 2, 'slike/krafne.jpeg'),
(8, 'Krem juha sa tikvicama', 'Sastojci:\r\n600 g tikvica\r\n300 g krumpira\r\n80 g luka\r\n1-2 češnja češnjaka\r\n100 ml vrhnja za kuhanje\r\n1,5 l vode\r\n2 žlice maslaca\r\n2-3 žlice limunova soka\r\n1 žlica Vegete\r\n1. Maslac zagrijte i svijetlo popecite nasjeckani luk. Zatim dodajte narezane tikvice i sve kratko propirjajte.\r\n2. Dodajte narezani krumpir, 1 l vode, Vegetu i kuhajte oko 20 minuta.\r\n3. Na kraju dodajte protisnuti češnjak.\r\n4. Kuhano povrće usitnite, dodajte ostatak vode, vrhnje i limunov sok, pa sve zajedno kratko prokuhajte.', 1, 'slike/kremJuha.jpeg'),
(11, 'test33', 'hahahaha', 1, 'slike/jaje.png'),
(12, 'test44', 'aaaaaaaa', 1, 'slike/krafne.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `namirnice`
--
ALTER TABLE `namirnice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategorija` (`kategorija_id`);

--
-- Indexes for table `namirnice_clanak`
--
ALTER TABLE `namirnice_clanak`
  ADD KEY `id_namirnice` (`id_namirnice`),
  ADD KEY `id_clanak` (`id_clanak`);

--
-- Indexes for table `recepti`
--
ALTER TABLE `recepti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_korisnik` (`id_korisnik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `namirnice`
--
ALTER TABLE `namirnice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `recepti`
--
ALTER TABLE `recepti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `namirnice`
--
ALTER TABLE `namirnice`
  ADD CONSTRAINT `fk_kategorija` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija` (`id`);

--
-- Constraints for table `namirnice_clanak`
--
ALTER TABLE `namirnice_clanak`
  ADD CONSTRAINT `namirnice_clanak_ibfk_1` FOREIGN KEY (`id_namirnice`) REFERENCES `namirnice` (`id`),
  ADD CONSTRAINT `namirnice_clanak_ibfk_2` FOREIGN KEY (`id_clanak`) REFERENCES `clanak` (`id`);

--
-- Constraints for table `recepti`
--
ALTER TABLE `recepti`
  ADD CONSTRAINT `recepti_ibfk_1` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
