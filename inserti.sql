INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (0, 'ja sam student', 'https://www.student.com', 'Neverifikovan', '23-nov-95', 'micko', '15-dec-06');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (1, 'ja sam pevacica', 'https://www.singalong.com', 'Verifikovan', '07-jan-05', 'dara', '11-dec-16');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (2, 'ja sam astronaut', 'https://www.nasa.com', 'Verifikovan', '23-nov-88', 'pera', '13-jun-12');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (3, 'ja sam glumac', 'https://www.instagram.com', 'Verifikovan', '04-nov-02', 'mika', '14-feb-12');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (4, 'ja sam profesor', 'https://www.baze2.com', 'Neverifikovan', '12-jun-95', 'sloba', '19-apr-19');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (5, 'ja sam neko i nesto', null, 'Neverifikovan', '23-oct-85', 'ilija', '22-mar-04');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (6, 'ja sam teniserka', 'https://www.usopen.com', 'Verifikovan', '01-feb-03', 'tenis123', '05-feb-05');
INSERT INTO korisnik (skr, bio, link, tipk, drodj, kime, dnal) 
    VALUES (7, 'ja sam salterusa', null, 'Neverifikovan', '14-mar-92', 'salter895', '14-jan-15');
    
INSERT INTO verifikovan (skr, datver) VALUES (1, '12-jan-17');
INSERT INTO verifikovan (skr, datver) VALUES (2, '15-aug-13');
INSERT INTO verifikovan (skr, datver) VALUES (3, '15-mar-13');
INSERT INTO verifikovan (skr, datver) VALUES (6, '12-mar-15');

INSERT INTO neverifikovan (skr) VALUES (0);
INSERT INTO neverifikovan (skr) VALUES (4);
INSERT INTO neverifikovan (skr) VALUES (5);
INSERT INTO neverifikovan (skr) VALUES (7);

INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (0, 'Karamela', 'Ukusan slatkis', 225.25, 6);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (1, 'Lek za mrsavljenje', '100% deluju', 1225.25, 2);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (2, 'Novi album', 'Top5 Charts', 800, 1);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (3, 'Kamera', '500 MP', 1225.25, 6);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (4, 'Zimske gume', 'Povoljna cena, garantovan kvalitet', 10000, 3);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (5, 'Knjiga o dzungli', 'Knjiga u koju cete se zaljubiti', 555.55, 2);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (6, 'Bele carape', 'Za igranje fudbala na travi', 224, 2);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (7, 'BMW', 'Povoljno', 15235478.2, 2);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (8, 'Karte za koncert', '3 za 2', 1521.22, 6);
INSERT INTO proizvod (spro, pnaziv, popis, pcena, skr) VALUES (9, 'Majice i salovi', 'Za zimu', 1542.2, 2);

INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (2, 5, 1, '01-oct-19', 8);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (9, 1, 2, '02-sep-19', 4);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (0, 0, 6, '13-jul-20', 15);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (4, 5, 3, '12-jun-19', 102);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (4, 4, 3, '05-may-20', 7);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (6, 3, 2, '07-mar-20', 67);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (8, 7, 6, '22-nov-20', 5);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (1, 2, 2, '24-dec-19', 7);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (5, 3, 2, '30-oct-20', 98);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (5, 6, 2, '03-mar-20', 2);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (4, 0, 3, '15-jan-19', 34);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (9, 5, 2, '25-feb-19', 1);
INSERT INTO kupuje (spro, skr, skr_pro, dkup, kolprod) VALUES (0, 7, 6, '14-jan-19', 2);

INSERT INTO fanstranica (sfs, fnaziv, fopis, dfs, skr) VALUES (0, 'Volimo macke', 'Stranica posvecenja mackama', '05-jun-20', 4);
INSERT INTO fanstranica (sfs, fnaziv, fopis, dfs, skr) VALUES (1, 'Pasulj', 'Stranica za obozavaoce pasulja', '02-jan-19', 0);
INSERT INTO fanstranica (sfs, fnaziv, fopis, dfs, skr) VALUES (2, 'Arsenal', 'Svi koji vole Arsenal', '09-nov-19', 5);
INSERT INTO fanstranica (sfs, fnaziv, fopis, dfs, skr) VALUES (3, 'Baze podataka', 'Svi koji vole baze podataka', '08-sep-20', 7);
INSERT INTO fanstranica (sfs, fnaziv, fopis, dfs, skr) VALUES (4, 'Opera', 'Za ljubitelje opere', '04-dec-19', 7);

INSERT INTO sponzor (sspon, nazspon) VALUES (0, 'Armani');
INSERT INTO sponzor (sspon, nazspon) VALUES (1, 'Nitto');
INSERT INTO sponzor (sspon, nazspon) VALUES (2, 'Rolex');
INSERT INTO sponzor (sspon, nazspon) VALUES (3, 'Gucci');
INSERT INTO sponzor (sspon, nazspon) VALUES (4, 'Apple');
INSERT INTO sponzor (sspon, nazspon) VALUES (5, 'Google');
INSERT INTO sponzor (sspon, nazspon) VALUES (6, 'FedEx');

INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (1, 3, 1523.2);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (1, 4, 4812.25);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (2, 5, 452.24);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (3, 6, 5482.5);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (4, 0, 5465413.5);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (1, 1, 45685.5);
INSERT INTO sponzorise (sfs, sspon, cenaspon) VALUES (2, 1, 48565.7);

INSERT INTO tema (stema, naztema) VALUES (0, 'Zdravlje');
INSERT INTO tema (stema, naztema) VALUES (1, 'Lepota');
INSERT INTO tema (stema, naztema) VALUES (2, 'Sport');
INSERT INTO tema (stema, naztema) VALUES (3, 'Politika');
INSERT INTO tema (stema, naztema) VALUES (4, 'Automobili');
INSERT INTO tema (stema, naztema) VALUES (5, 'Nauka');
INSERT INTO tema (stema, naztema) VALUES (6, 'Tehnika');
INSERT INTO tema (stema, naztema) VALUES (7, 'Estrada');

INSERT INTO grupa (sgrupa, gnaz, gopis) VALUES (0, 'Studenti Novi Sad', 'Grupa za sve studente iz NS');
INSERT INTO grupa (sgrupa, gnaz, gopis) VALUES (1, 'Planinari Novi Sad', 'Izleti na Fruskog gori');
INSERT INTO grupa (sgrupa, gnaz, gopis) VALUES (2, 'Udruzenje zidara', 'Za sve zidare Srbije');
INSERT INTO grupa (sgrupa, gnaz, gopis) VALUES (3, 'FTN generacija 98', 'Grupa za sve studente FTN');

INSERT INTO pripada(skr, sgrupa) VALUES (2, 0);
INSERT INTO pripada(skr, sgrupa) VALUES (5, 1);
INSERT INTO pripada(skr, sgrupa) VALUES (4, 2);
INSERT INTO pripada(skr, sgrupa) VALUES (2, 3);
INSERT INTO pripada(skr, sgrupa) VALUES (4, 0);
INSERT INTO pripada(skr, sgrupa) VALUES (0, 1);
INSERT INTO pripada(skr, sgrupa) VALUES (0, 2);
INSERT INTO pripada(skr, sgrupa) VALUES (6, 3);
INSERT INTO pripada(skr, sgrupa) VALUES (0, 0);
INSERT INTO pripada(skr, sgrupa) VALUES (1, 1);
INSERT INTO pripada(skr, sgrupa) VALUES (5, 2);
INSERT INTO pripada(skr, sgrupa) VALUES (1, 3);
INSERT INTO pripada(skr, sgrupa) VALUES (3, 0);
INSERT INTO pripada(skr, sgrupa) VALUES (3, 1);
INSERT INTO pripada(skr, sgrupa) VALUES (1, 2);

INSERT INTO jeadmin (skr, sgrupa) VALUES (6, 3);
INSERT INTO jeadmin (skr, sgrupa) VALUES (1, 3);
INSERT INTO jeadmin (skr, sgrupa) VALUES (2, 3);
INSERT INTO jeadmin (skr, sgrupa) VALUES (2, 0);
INSERT INTO jeadmin (skr, sgrupa) VALUES (4, 0);
INSERT INTO jeadmin (skr, sgrupa) VALUES (4, 2);
INSERT INTO jeadmin (skr, sgrupa) VALUES (5, 1);
INSERT INTO jeadmin (skr, sgrupa) VALUES (0, 0);

INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (0, 0, 'Dan je lep', 0, null, '02-oct-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (1, 2, 'Koliko je sati', 3, 3, '03-oct-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (2, 3, 'Vreme je za rucak', 5, null, '04-oct-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (3, 4, 'Imam psa i macku', 6, 0, '05-nov-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (4, 5, 'Jedem spagete', 3, 2, '02-dec-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (5, 5, 'Gledam tenis', 2, null, '05-jan-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (6, 6, 'Iznajmljujem stan', 7, 3, '02-oct-18');
INSERT INTO post (spost, skr, sdrpost, stema, sgrupa, dpost) VALUES (7, 2, 'Srecna Nova godina', 0, null, '05-nov-18');

INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (4, 1, 2);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (3, 3, 4);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (3, 7, 2);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (6, 7, 2);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (0, 1, 2);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (1, 4, 5);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (0, 2, 3);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (2, 6, 6);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (5, 6, 6);
INSERT INTO lajkuje (skr, spost, skr_aut) VALUES (6, 3, 4);

INSERT INTO prati (skr, skr_prat) VALUES (0, 4);
INSERT INTO prati (skr, skr_prat) VALUES (1, 2);
INSERT INTO prati (skr, skr_prat) VALUES (2, 3);
INSERT INTO prati (skr, skr_prat) VALUES (3, 5);
INSERT INTO prati (skr, skr_prat) VALUES (4, 7);
INSERT INTO prati (skr, skr_prat) VALUES (5, 6);
INSERT INTO prati (skr, skr_prat) VALUES (6, 7);
INSERT INTO prati (skr, skr_prat) VALUES (6, 4);
INSERT INTO prati (skr, skr_prat) VALUES (7, 0);
INSERT INTO prati (skr, skr_prat) VALUES (0, 7);
INSERT INTO prati (skr, skr_prat) VALUES (0, 1);
INSERT INTO prati (skr, skr_prat) VALUES (2, 1);
INSERT INTO prati (skr, skr_prat) VALUES (2, 0);
INSERT INTO prati (skr, skr_prat) VALUES (3, 7);
INSERT INTO prati (skr, skr_prat) VALUES (5, 1);
INSERT INTO prati (skr, skr_prat) VALUES (4, 3);

INSERT INTO komentar (skom, spost, skr_prat, skr, sdrkom, dkom) VALUES (0, 3, 4, 6, 'Koga briga...', '12-jul-20');
INSERT INTO komentar (skom, spost, skr_prat, skr, sdrkom, dkom) VALUES (1, 7, 2, 1, 'Super', '15-may-20');
INSERT INTO komentar (skom, spost, skr_prat, skr, sdrkom, dkom) VALUES (2, 0, 0, 7, 'Cestitam', '18-jan-20');
INSERT INTO komentar (skom, spost, skr_prat, skr, sdrkom, dkom) VALUES (3, 3, 4, 0, 'Zanimljivo...', '25-sep-20');
INSERT INTO komentar (skom, spost, skr_prat, skr, sdrkom, dkom) VALUES (4, 5, 5, 3, 'Napusti mrezu', '13-nov-20');