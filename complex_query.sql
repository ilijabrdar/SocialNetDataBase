-- izlistati broj korisnika koji su komentarisali postove o zdravlju korisnika koji se nalaze u grupi ciji su oni administratori

CREATE OR REPLACE VIEW kom_na_post_o_zdr AS
SELECT k.skom, k.skr, k.skr_prat, k.spost FROM post p, komentar k, tema t 
WHERE p.spost = k.spost AND p.stema = t.stema AND t.naztema LIKE 'Zdravlje';

SELECT COUNT(k.skr) FROM pripada p, jeadmin a, kom_na_post_o_zdr k
WHERE p.skr = k.skr_prat AND a.skr = k.skr AND p.sgrupa = a.sgrupa;