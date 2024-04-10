-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 10, 2024 alle 10:13
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progettomuseodb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `id_vespa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `image`
--

CREATE TABLE `image` (
  `ID_img` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `id_vespa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `vespa`
--

CREATE TABLE `vespa` (
  `ID_vespa` int(3) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cilindrata` int(3) NOT NULL,
  `Descrizione` varchar(3000) NOT NULL,
  `Artista` varchar(30) NOT NULL,
  `Anno` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `vespa`
--

INSERT INTO `vespa` (`ID_vespa`, `Nome`, `Cilindrata`, `Descrizione`, `Artista`, `Anno`) VALUES
(30, 'Ape Viaggio nella Fantasia', 50, 'Qui vediamo un modello Ape, precisamente l’Ape 50 “Viaggio nella fantasia”, un’opera decorata dall’artista Giuliano Ghelli, morto nel 2014, esposta in occasione  della mostra “Giuliano Ghelli. La fabbrica della fantasia”, ospitata dal Museo Piaggio  dal 28 maggio al 16 luglio 2011. L\'opera rappresenta un unicum all’interno di questa galleria, è l’unico modello Ape  esposto. Decorata con pittura ad olio, raffigura le curve dolci delle colline toscane,  ricordando il paesaggio del Chianti, amato dall’artista. Non manca il riferimento a  Leonardo che compare nelle figure dei prototipi di aereo del grande Maestro  toscano. Sullo sportello del veicolo un Sole volante dal profilo umano a collegare  l’opera dell’uomo al paesaggio. L\'opera combina efficacemente arte e meccanica: la scocca è stata rivisitata in  chiave artistica con l\'utilizzo di colori acrilici e glitter, creando un effetto visivo  dinamico e movimentato. Le linee sinuose e le forme astratte che adornano la superficie dell\'Ape sembrano  danzare e muoversi, creando un\'atmosfera di allegria e di gioia. La sella è stata  trasformata in un elemento decorativo, simile a un cappello, che crea un contrasto  fra la tradizione del mezzo di trasporto e l\'innovazione artistica. I colori principali dell\'Ape sono vivaci e allegri, la loro armonia cromatica attira  l\'attenzione dello spettatore. Questa opera d\'arte rappresenta un viaggio immaginario attraverso la fantasia,  invitando lo spettatore a lasciarsi trasportare dalla bellezza e dalla gioia della vita,  senza dimenticare il paesaggio del Chianti, amato dall’artista. La fusione fra arte e  meccanica celebra la creatività e l\'innovazione dell\'artista che l\'ha realizzata,  rendendola un\'opera unica che si distingue dalle altre.', 'Giuliano Ghelli', ''),
(31, 'Vespa Pop', 50, 'Ora vediamo un modello di Vespa artistica davvero molto  particolare, perché realizzata in loco. Dopo l\'uscita della  Vespa Primavera, nel 1968, il Museo Piaggio presentò la POP  VESPA, decorata da Maddalena Carrai. È un\'interpretazione  della Vespa Primavera, frutto della fantasia della giovane  artista. La POP VESPA ha decorazioni che ricordano la  primavera: il viso dall’espressione serena che troviamo sotto  il sellino, evocativo del sentimento di felicità legato alla  stagione; tante gocce d\'acqua che avvolgono come un manto  le figure stilizzate che rappresentano l\'alternarsi di sole e  pioggia. La Vespa venne presentata in occasione di un evento  musicale per la “Festa Arcobaleno” del 21 giugno 2013. Maddalena Carrai, nata nel 1992, vive tra Parigi e Livorno;  lavora come illustratrice freelance nel settore moda. A New  York ha realizzato le illustrazioni dei pannelli per  l’allestimento della serata di presentazione di “Versus  Versace”. Anche questo modello Vespa fa parte della mostra  permanente del Museo Piaggio.', 'Maddalena Carrai', ''),
(32, 'Vespa Organic Trash Art', 50, 'Ci troviamo davanti alla Vespa di Gianni Depaoli, artista di Ivrea, che ha  realizzato questo modello nel 2012, in occasione dell’evento “Arte Accessibile – Milano”, parte dell’Ekovespa Project dell’Organic Trash Art, utilizzandomateriali  di scarto (in questo caso colla di pesce e rifiuti organici) al posto di materiali di  qualità, per dare valore artistico anche ad un elemento di scarto, in un’ottica di  critica palese al consumismo della nostra società. L’installazione è costruita a partire dalla scocca di una Vespa 50 Piaggio, il cui  telaio è coperto da un rivestimento ottenuto da un composto di pelle e colla di  pesce, che dona all’opera un colorito terroso e che rappresenta il punto focale  dell’arte organica e il modo in cui l’artista sottolinea il valore dei materiali di  recupero, portando avanti la sua critica alla società dei consumi. Balza all’occhio dell’osservatore l’assenza di alcune parti fondamentali del  motociclo privo di ruote, sella, manubrio e motore. Con tali pezzi mancanti,  l’artista mostra ancora una volta la condizione di scarto della Vespa, che diventa  simbolo dell’oggetto di consumo per eccellenza e che si mostra allo spettatore  quasi in veste di un relitto sudicio e abbandonato. Nella parte posteriore del veicolo possiamo notare che lo spazio riservato al  motore è pieno di vecchie carte geografiche ingiallite e arrotolate, riposte  accuratamente all’interno del vano serbatoio, segno del fatto che il marchio è noto in tutto il mondo. Con quest’opera Depaoli ritorna ancora ai temi della biodiversità e  dell’ecosostenibilità. Sulla scocca compaiono resti di salmone e scorfano misti a  metacrilato (materia plastica) e legno.', 'Gianni Depaoli', '2012'),
(33, 'Vespa Mucca Pazza', 50, 'Questa è la cosiddetta “Vespa Mucca Pazza”, rivisitazione artistica di  un modello ET4, che partecipò al Concorso “Vesparte” del 2001,  ottenendo il secondo posto in classifica per Paolo Maria Iemmi, il cui  slogan fu “La mucca è pazza per la Vespa”, così la notizia allarmante  del morbo che colpì la mucca diventa “febbre per la velocità, sete di  libertà, pazza gioia di vivere”. La decorazione rimanda alle caratteristiche visibili dell’animale: i  colori bianco e nero del manto pezzato, le mammelle, le orecchie, il  muso, ma anche il verde dell’erba dei pascoli, mentre contrasta il  rosso, forse evocativo del sangue, del sottosella, che riporta il nome  dei vari tagli di macellazione.', 'Paolo Maria Iemmi', ''),
(34, 'Vespa San Valentino', 0, 'Quella che vedete è la Vespa “San Valentino” realizzata dall’artista Mario Giuntini, una  Vespa totalmente fuori dagli schemi, infatti, noterete subito che è stata interamente realizzata con lamine di rame, fondendo l’elemento metallico della Vespa con quello  dell’incarto classico dei cioccolatini. Sulla sella, invece, possiamo notare la presenza di un  mazzo di rose che riprendono il tema dell’amore, tipico della Festa di San Valentino. Per questa Vespa artistica non servono commenti, i suoi messaggi e il suo significato sono  evidenti: vediamo allegria, colore, sentimento, celebrazione dell’amore in tutte le sue  possibili declinazioni, contaminando e unendo due elementi fortemente iconici. L’artista Mario Giuntini è nato a Roma nel 1948, ha frequentato dal 1969 al 1971 il corso di  pittura presso l’Accademia delle arti di Firenze. Quest’opera, da lui realizzata, venne  donata al Museo Piaggio nell’ottobre del 2013 e da allora fa parte della collezione  permanente del Museo, collocandosi fra i pezzi più apprezzati dai visitatori.', 'Mario Giuntini', '2013'),
(35, 'Vespa-Hassoun', 50, 'Quella che vedete è la Vespa-Hassoun, una variante unica della famosa Vespa LX,  creata dall’artista libanese Ali Hassoun nel 2013. Unica al mondo, divenuta una  rarità e un pezzo da collezione grazie ai dipinti riportati sulla scocca e realizzati  completamente a mano. Qui l’inconfondibile design della Vespa si combina alla  bellezza dei dipinti, meravigliando il visitatore con un veicolo che diventa supporto  di un’opera pittorica. In occasione della mostra “Il Popolo Vuole”, Hassoun ha voluto dipingere questa  Vespa LX con le splendide immagini dei suoi quadri, curando anche i minimi  dettagli. Sullo scudo, troviamo una tigre libanese il cui maestoso pelo felino arriva  fino al parafango. Sulla scocca troviamo il dipinto di una donna di origini libanesi in abiti tipici della  sua cultura che reca in mano un recipiente locale. Sullo sfondo vi sono le bandiere  del Canada, della Danimarca e la bandiera dell’ex Unione Sovietica.', 'Ali Hassoun', '2013'),
(36, 'Vespa Babb', 50, 'Questa la Vespa realizzata da Babb, pseudonimo dell\'artista toscano Giorgio Dal  Canto, rivisitazione di un modello Vespa 50, la cui caratteristica è quella di avere sulla scocca dipinti raffiguranti Pinocchio e la scritta \"Sono un bugiardo\". I dipinti sono molto astratti, marcano solo il profilo del burattino di legno creato  dalla sapiente penna di Collodi e raffigurati mediante una scala di colori che va da colori freddi, come azzurro, a colori caldi come il rosso, aggiungendo una piacevole  nota cromatica alla Vespa 50 che era interamente verniciata di bianco. Si tratta di un’opera molto cara a Pontedera perché venne esposta in Comune nel  giugno 2012 contemporaneamente ad una mostra di Babb allestita all’interno della  sala “Otello Cirri” intitolata “La bugia. Anche gli elefanti hanno il naso lungo”, dove  fu possibile ammirare cinquanta dipinti a tema, dove il posto d’onore spettava a  Pinocchio, preso ad emblema e monito alla società di oggi. Su questa Vespa d’autore  campeggia, come abbiamo già detto, ancora ironico il motto: “I’m a liar!” (Sono un  bugiardo!). Babb da allora appartiene alla storia del più famoso motoveicolo di casa  Piaggio, interpretato con il suo tocco graffiante e sarcastico.', 'Giorgio Dal  Canto', ''),
(37, 'Vespa Dolce Vita', 125, 'Questa è la Vespa “Dolce Vita” realizzata dall’architetto Paola Navone nel  2015 per la mostra LOCAL ICONS Greetings from Rome, Alcantara – MAXXI  2015. Si tratta di una Vespa PX 125.  La sua livrea in perfetto stile anni ‘50 è impreziosita da divertenti pois e  rivestita in Alcantara, materiale che caratterizza anche la sella di colore verde. L\'artista tenta di riportare alla mente il sogno di libertà e l’dea di \'Dolce Vita\' come spensieratezza, quindi, non pensate nemmeno per un attimo al famosissimo film di Federico Fellini, mi raccomando! Questa versione tricolore della Vespa, esalta l’essenza di un simbolo dello  stile e dell\'eleganza tipicamente italiani. Paola Navone, l’artista Torinese che ha ideato e creato questa opera, è  architetto, product designer, interior designer, progettista di negozi e ristoranti,  curatrice di mostre ed eventi e lavora per importanti brand di design.  Nelle sue opere colori e forme, provenienti da tutte le parti del mondo,  vengono interpretate con uno sguardo molto personale.  Come lei stessa racconta, i viaggi sono la sua principale fonte di ispirazione,  un immenso serbatoio di immagini, colori, materiali, oggetti e tradizioni  artigianali da cui attingere.', 'Paola Navone', '2015'),
(38, 'Vespa in Jeans', 50, 'Questa è la vespa in jeans, realizzata da PPG Industries, una società  americana che fornisce vernici, rivestimenti e materiali speciali a livello  globale. PPG è situata a Pittsburgh, in Pennsylvania ed opera in più di 70  paesi in tutto il mondo. Per anni gli esperti di PPG hanno creato rivestimenti  che hanno reso i prodotti migliori in quasi tutti i settori, dagli alimenti e  bevande, ai cosmetici e alla cura personale, alle vernici e ai prodotti chimici.  Come ci suggerisce il nome, questa Vespa è rivestita con grafiche plastificate  che ripropongono l’effetto jeans, nel 2001 ha partecipato al concorso  ”Vesparte” della Piaggio insieme ad altre 13 Vespa ET4, tutte reinterpretate in  chiave artistica, permettendo una vera e propria competizione. Questa Vespa  è stata pensata dagli autori come una versione ”ever-green, sempre al passo  con i tempi” essendo rivestita con l’effetto jeans, l’indumento sempre di moda  che ha attraversato gli anni.', ' PPG Industries', ''),
(39, 'Pezzo Unico', 50, 'La vespa pezzo unico è un’opera artistica ideata da Nicolino Di Carlo nel 2001 per il concorso Piaggio  Vesparte. Come Vespa l’artista scelse il modello ET4, l’opera in questione è tinto di un colore nero  corvino, accompagnato da uno stemma di colore azzurro, situato sulla parte frontale del veicolo  artistico, ad accompagnare queste tonalità di colori, vi sono delle scritte di un colore rosso scarlatto,  la parola in questione che ricopre l’intera vettura è “pezzo unico”, lo stile scelto per rappresentare  tali parole può ricordare le scritte di avvertenza delle scatole che contengono oggetti fragili, infatti  secondo l’artista, ogni Vespa è unica ed è preziosa per ogni singolo possessore del veicolo a due  ruote in quanto rappresenta l’indipendenza dei singoli.', 'Nicolino Di Carlo', '2001'),
(40, 'Vespa Trafeli', 0, 'Questa è la Vespa Trafeli, opera dell\'artista volterrano Mino Trafeli, nato nel 1922. Si tratta  di una Vespa PX del 1997 a cui è stato modificato il telaio pur mantenendo inalterate le  caratteristiche principali del ciclomotore pur ispirandosi alla cosiddetta “scultura  dell’impossibile” che è la cifra stilistica di questo artista. Sullo scudo anteriore della Vespa  sono state mantenute le proporzioni solite e il colore ciano ( un colore freddo tra il blu e il  verde, spesso chiamato impropriamente azzurro) e il colore bianco metallizzato classico  della Vespa PX. L\'elemento centrale e caratteristico di questa opera è sicuramente la  presenza di una parte di circa un metro appuntita e posta dietro il fanale anteriore della  Vespa; la pedana, sempre in color ciano, misura circa due metri di lunghezza e a questa è  agganciata la parte posteriore della Vespa, dove troviamo una sorta di pungiglione, come  già detto, che ricorda la vespa come insetto, e una sella interamente scolpita in alabastro (materiale molto usato dall\'autore e tipico di Volterra). La Vespa Trafeli è lunga quasi due metri e dieci centimetri, è stata donata al Museo nel 2003 e da allora inserita nella sua collezione permanente. L’autore l’ha definita “gioco parallelo che stravolge l\'oggetto per ricavarne nuova forma”.', 'Mino Trafeli', ''),
(41, 'Vespa Talani', 125, 'Questa Vespa PX è stata decorata dall’artista toscano Giampaolo Talani in  occasione della sua mostra Bottega Talani. Un viaggio nell’affresco, ospitata dal  Museo Piaggio dal 1 giugno al 28 luglio 2012. Il suo tema è il viaggio, filo conduttore delle opere di Talani.. Vediamo una Vespa verniciata di colore bianco, decorata con colori caldi a contrasto che  prendono forma portandoci mentalmente all’estate; sulle alette della Vespa, vediamo grossi ombrelli volanti a righe blu e rosse, il mare e la spiaggia. Come in tutti gli scenari dell’estate  non potevano mancare i pesci colorati sul retro degli specchietti retrovisori; sul parafango  anteriore notiamo uno splendente sole giallo, simbolo più chiaro di tutti della stagione  estiva. Invece sulle parti laterali ci sono delle valige e delle balene che viaggiano col vento,  mentre sulla parte frontale della Vespa ci sono un paio di navi che, insieme alle valigie, ricordano un lungo viaggio. Infatti l’autore ha spiegato che per realizzare questa opera d’arte  gli è bastato fare un viaggio nel suo passato e nelle sue estati: prima ancora di realizzarlo ha  immaginato, come fosse stata una folgorazione immediata, quest’opera, che lo ha riportato a  quando lui e i suoi amici viaggiavano durante l’estate e si godevano la loro adolescenza. Forse, all’interno di questa galleria, questo è uno dei modelli che risultano più graditi ai  giovani visitatori.', 'Giampaolo Talani', ''),
(42, 'Vespa Venice', 50, 'Questa è la Vespa-VENICE, opera dell\'artista Luca Moretto, realizzata  nel 1998 in occasione della Biennale di Venezia; si tratta di una Vespa  50 rivisitata in chiave Pop con estro e fantasia attraverso una personale  ricerca e uno studio da parte dell\'autore di colori acrilici e glitter che, minuziosamente lavorati, fanno emergere ed entrare all\'interno delle  maschere che ricordano il Carnevale di Venezia. Sulla scocca della nostra Vespa è possibile notare linee e cerchi di vari  colori e dimensioni a simboleggiare le stelle filanti e i coriandoli che  riescono a ricreare un vero e proprio gioco di movimento attraverso il  loro andamento curvilineo, mentre la sella sembra avere la funzione di  un cappello e sotto di essa possiamo trovare un occhio coperto da una  maschera. Il colore principale delle linee e dei cerchi è l\'azzurro come le  acque lagunari di Venezia. Dalle opere di Moretto scaturisce un’energia  travolgente che accende il desiderio sensoriale nello spettatore,  comunicando gioia di vivere. Non a caso, il motto di Luca Moretto è:  “L’ottimismo può fondare le sue radici anche nel dolore”.', 'Luca Moretto', '1998'),
(43, 'Victoria 13', 50, 'Questa è la Vespa “Victoria 13 Màs y Rico”, opera dell\'artista che porta il nome d’arte di “Ferrocrearte”,  realizzata nel 2022; si tratta di una Vespa con la scocca interamente decorata a mano dall’artista con  impegno e fantasia, con linee e forme geometriche che sembrano essere il risultato di un processo intuitivo  di creazione dove il pittore ha lasciato che la mano si muovesse in maniera spontanea. Il risultato è un  puzzle di forme, linee e colori che si connettono fra loro in maniera armoniosa e imprevedibile, inoltre la  presenza di colori accesi e contrastanti trasmette una sensazione di vitalità e di energia. Questa Vespa è  un’opera che invita lo spettatore a perdersi nella bellezza del colore e della forma, senza cercare di  identificare un significato specifico. La libertà di interpretazione e l’esperienza sensoriale che ne derivano esprimono bene l’intento dell’autore che vuole far sì che un “disordinato puzzle sia una danza ideale per gli occhi”.', 'Ferrocrearte', '2022');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID_img`),
  ADD KEY `id_vespa` (`id_vespa`);

--
-- Indici per le tabelle `vespa`
--
ALTER TABLE `vespa`
  ADD PRIMARY KEY (`ID_vespa`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `image`
--
ALTER TABLE `image`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT per la tabella `vespa`
--
ALTER TABLE `vespa`
  MODIFY `ID_vespa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
