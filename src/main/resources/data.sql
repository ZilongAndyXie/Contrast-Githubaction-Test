INSERT INTO authority (id, authority) VALUES (1, 'USER');
INSERT INTO authority (id, authority) VALUES (2, 'ADMIN');
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES (1, 'admin', MD5('admin'), FALSE, 'Achim', 'Andresen', '52062', 'Aachen',
        '0241 / 54 245 45', 2);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES (2, 'g', MD5('g'), FALSE, 'Gustav', 'Gans', '23568', 'Lübeck',
        '+49 (451) 20955152', 1);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES (3, 'herbert', MD5('h'), FALSE, 'Herbert', 'Hansen', '21073', 'Hamburg',
        '040 - 97167263', 1);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES (4, 'jens', MD5('j'), FALSE, 'Jens', 'Junker', '21635', 'Jork',
        '04162 / 94 23 14', 1);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES
  (5, 'gisi', MD5('wzPvij*,dmimj1gS'), FALSE, 'Gisela', 'Gerhardt', '92274', 'Gebenbach',
   '09622 35 21 32', 1);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES
  (6, 'werner', MD5('justinbieber'), FALSE, 'Werner', 'Weber', '65203', 'Wiesbaden',
   '+49 (0) 611 / 18462803', 1);
INSERT INTO usr (id, username, password, is_tfa_enabled, firstname, lastname, zip, town, phonenumber, authority_id)
VALUES
  (7, 'sibylle', MD5('shepherdess'), FALSE, 'Sibylle', 'Schäfer', '21682', 'Stade',
   '+49 (0) 4142 / 728304', 1);
INSERT INTO classified_ad (id, owner_id, title, description, price, createdtimestamp, photofilename) VALUES
  (1, 2, 'Bmw 320D M-Packet/Alcantara/xenon/ Tüv neu/ 1hand Schnäppchen',
   'Hallo,<br />Verkaufe hier meinen Bmw 320D m-packet<br />Das Auto ist in einem super Zustand wurde grade fachgerecht  Aufbereitet.<br /><br />Nicht nur die optik stimmt auch der Motor und das Getriebe sind einwandfrei..<br /><br />Es wurden viele neuteile eingebaut!<br /><br />Öl Wechsel<br />Alle filter neu<br />Neue Batterie<br />Checkheft gewartet....<br />Und und und<br /><br />An Ausstattung  besitzt  er auch einiges:<br />Xenon<br />Tempomat<br />Leder/alcantara<br />Spiegel automatisch abblendbar<br />Klimaautomatik<br />elektronische Spiegel<br />Elektronische Scheiben<br />Ambiente beleuchtung<br />PDC hinten<br />Multifunktions Lenkrad<br />Sitzheizung<br />Navi<br />Telefon Vorbereitung<br />Lichtautomatik<br />Anhängerkupplung<br />Spracheingabe<br />Bordcomputer<br />18 zoll M-Felgen<br />16 zoll original Alu bmw winterreifen<br />Regensensor<br />M-sportfahrwerk<br />......<br /><br />Das Auto hat einen minimalen  Verbrauch  und ist dennoch  spritzig.<br />In sachen Steuern und versicherung ist er ebenso total günstig.... ( grüne Plakette )<br /><br />Der Bmw hat desweiteren vom werk aus einen kompletten M-packet außen sowie Innen.<br />Ist unfallfrei und aus 1ster Hand TÜV neu<br />Letzter Service bei 172.000 km<br /><br /><br />DAS AUTO IST NICHT NACHLAKIERT IDER SONSTIGES ES LIEGT AN DER ETWAS SCHLECHTEN LICHTEINSTRAHLUNG UND DIE FAHRERTÜR IST GRADE AUF DEN BILDERN OFFEN.....<br /><br />Bei Fragen rufen sie mich gerne an. <a href="https://mycoolnewblog.local" target="_blank">Besuchen sie auch gerne meine neue Website</a>',
   5999, CURRENT_TIMESTAMP - INTERVAL '2 hours', 'bmw.JPG');
INSERT INTO classified_ad (id, owner_id, title, description, price, createdtimestamp, photofilename) VALUES
  (2, 2, 'Expedit Regal 1,5m x 1,5m x 0,39m / 16 Fächer',
   'Wir verkaufen unser Expedit-Regal (Birke) in der 16-Fächer-Ausführung. Es befindet sich in einem tadellosen Zustand und kann gerne in Kiel besichtigt werden.<br />Maße: BxHxT:150cm x 150cm x 39cm. Die beiden auf den Bildern abgebildeten Körbe sind inklusive. Das Regal gibt es in dieser Größe nicht mehr neu zu erwerben (größte Ausführung). Bei Fragen, Interesse und mehr Bildern bitte gerne kontaktieren.',
   60, CURRENT_TIMESTAMP - INTERVAL '4 hours' - INTERVAL '30 minutes', 'expedit.JPG');
INSERT INTO classified_ad (id, owner_id, title, description, price, createdtimestamp, photofilename) VALUES
  (3, 3, 'Gesslein Kombi - Kinderwagen & Buggy (NP 379,-) wie neu',
   'Hallo !  <br /> <br />Du bist auf der Suche nach:  <br />: einem Kombi-Kinderwagen, der Kinderwagen und Buggy perfekt vereint ?  <br />: einen Kinderwagen, der jeden Komfort eines &quot;normalen&quot; Kinderwagens bietet ?  <br />: einen Buggy, der die Stabilität eines Kinderwagens bietet und trotzdem leicht und kompakt ist ?  <br /> <br />Dann hast Du ihn gefunden ! ;-)  <br /> <br />Der Gesslein ist Kinderwagen und Buggy in einem und sieht zudem noch schick und stylisch aus.  <br /> <br />Aber wenn Du nach einem Gesslein Ausschau hälst, dann weißt Du das ja alles... brauchst somit auch gar nicht weiterlesen. ;-)  <br /> <br />Kein großer sperriger Kinderwagen, der nur mit Mühe und Not in den Kofferraum passt.  <br />Und der Buggy, der nach der Babyphase ein leichter und stabiler Wegbegleiter ist.  <br /> <br />Ich finde, nachdem was ich alles so gesehen und ausprobiert habe, ist das Konzept dieses Wagens perfekt und ideal für den Mama- und Papa-Alltag.  <br />Und er macht auch einen guten Schuh am Hinderburgufer ! ;-)  <br /> <br />Er ist eben nicht so &quot;klobig&quot; wie ein &quot;großer&quot; Kinderwagen, aber bietet genau die gleichen Eigenschaften - bzw. sogar mehr, da er eben zum Buggy umgebaut werden kann und somit viel leichter ist, als ein &quot;herkömmlicher&quot; Wagen.  <br /> <br />Dank des leichten Aluminiumgestells und der klugen Zusammenklapptechnik, ist er prima geeignet für die Eltern, die gerne einen kompakten Buggy haben möchten, aber zudem nicht auf die Stabilität und Robustheit eines Kinderwagens verzichten wollen.  <br /> <br />Der Kombikinderwagen ist in absolut tip top Zustand - möchte fast sagen neuwertig.  <br />Er wurde nur gelegentlich von Oma und Opa als Zweitwagen genutzt und man kann den Gebrauch nur oberflächlich an den Reifen erkennen.  <br />Ansonsten hat er keine Beschädigungen, Flecken oder Löcher.  <br /> <br />Das Gestell:  <br />- Aluminium  <br />- sehr leicht zusammenklappbar  <br />- kompakte und kleine Maße für den Transport im Auto  <br />- keine Beschädigungen  <br /> <br />- abnehmbarer Sicherheits- und Haltebügel  <br /> <br />Der Bezug:  <br />- dieser kann komplett zum Waschen abgenommen werden  <br />- keine Flecken oder Löcher  <br />- 5-Punkt-Sicherheitsgurt  <br /> <br />Das Verdeck:  <br />- stufenlos verstellbar  <br />- komplett abnehmbar  <br />- ohne Flecken oder Löcher  <br />- und es lässt sich sogar der Bezug zum Waschen abnehmen  <br />(das Gestell ist nämlich geschraubt und nicht - wie bei den meisten - genietet)  <br /> <br />Die Babyschale:  <br />- diese wird in das Gestell eingelegt und somit wird der Buggy zum Kinderwagen  <br />- ohne Flecken oder Löcher  <br /> <br />- zudem kann man mit einem Teil der Babyschale den Sitzbezug zum Fußsack erweitern !  <br /> <br />Die Reifen:  <br />- keine Luftreifen, so hast Du keine Probleme mit einem eventuellen Platten  <br />- nur oberflächliche Gebrauchsspuren  <br /> <br />- hintere Feststellbremse  <br />- die vorderen Räder können entweder festgestellt werden oder man nutzt sie als 360° Schwenkräder  <br /> <br />Der Neupreis lag vor ca. 2 Jahren bei 379,- Euro.  <br /> <br />Wie bereits erwähnt, ist der Gesslein in neuwertigem Zustand, so das Du direkt losdüsen kannst. ;-)  <br /> <br />Falls ich noch etwas vergessen haben sollte, entweder fragen oder bei den Fotos nachschauen. ;-)  <br /> <br />Bessere Fotos kommen noch - darfst aber trotzdem gerne schon zum Shoppen vorbeikommen. *g*  <br /> <br />Versand möglich &#x2F; 12,- Euro versichertes DHL Paket.',
   249, CURRENT_TIMESTAMP - INTERVAL '1 days', 'gensslein.JPG');
INSERT INTO classified_ad (id, owner_id, title, description, price, createdtimestamp, photofilename) VALUES
  (4, 6, 'Apple iPhone 5S, 16GB, ohne Simlock, mit Rechnung & Garantie',
   'Geprüftes Gerät. Sicher kaufen mit Rechnung & Garantie !!! <br /> <br />Phone 5S (in mehreren Farben erhältlich) mit 16GB Speicher, inkl. Rechnung und 6 Monaten Funktionsgarantie.  <br /> <br />Gebraucht, aber in wirklich sehr gutem Zustand. Sehr gepflegt! Inkl. Zubehör. Ohne Simlock, d.h. mit jeder beliebigen Sim-Karte nutzbar.  <br /> <br />Mit dazu gibt es eine Rechnung auf Deinen Namen und 6 Monate Funktionsgarantie!',
   450, CURRENT_TIMESTAMP - INTERVAL '2 days', 'iphone.JPG');
