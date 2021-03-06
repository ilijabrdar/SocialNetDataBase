-- Generated by Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   at:        2021-01-20 23:54:06 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE fanstranica (
    sfs     INTEGER NOT NULL,
    fopis   VARCHAR2(255 CHAR),
    fnaziv  VARCHAR2(20 CHAR) NOT NULL,
    dfs     DATE NOT NULL,
    skr     INTEGER NOT NULL
);

ALTER TABLE fanstranica ADD CONSTRAINT fanstranica_pk PRIMARY KEY ( sfs );

CREATE TABLE grupa (
    sgrupa  INTEGER NOT NULL,
    gnaz    VARCHAR2(20 CHAR) NOT NULL,
    gopis   NVARCHAR2(255)
);

ALTER TABLE grupa ADD CONSTRAINT grupa_pk PRIMARY KEY ( sgrupa );

CREATE TABLE jeadmin (
    skr     INTEGER NOT NULL,
    sgrupa  INTEGER NOT NULL
);

ALTER TABLE jeadmin ADD CONSTRAINT jeadmin_pk PRIMARY KEY ( skr,
                                                            sgrupa );

CREATE TABLE komentar (
    skom      INTEGER NOT NULL,
    dkom      DATE NOT NULL,
    sdrkom    VARCHAR2(255 CHAR) NOT NULL,
    skr       INTEGER NOT NULL,
    skr_prat  INTEGER NOT NULL,
    spost     INTEGER NOT NULL
);

ALTER TABLE komentar ADD CONSTRAINT komentar_pk PRIMARY KEY ( skom );

CREATE TABLE korisnik (
    skr    INTEGER NOT NULL,
    bio    VARCHAR2(255 CHAR),
    link   VARCHAR2(50 CHAR),
    tipk   VARCHAR2(15) NOT NULL,
    drodj  DATE,
    kime   VARCHAR2(20 CHAR) NOT NULL,
    dnal   DATE NOT NULL
);

ALTER TABLE korisnik
    ADD CONSTRAINT ch_inh_korisnik CHECK ( tipk IN ( 'Korisnik', 'Neverifikovan', 'Verifikovan' ) );

ALTER TABLE korisnik ADD CONSTRAINT korisnik_pk PRIMARY KEY ( skr );

CREATE TABLE kupuje (
    spro     INTEGER NOT NULL,
    skr_pro  INTEGER NOT NULL,
    skr      INTEGER NOT NULL,
    dkup     DATE NOT NULL,
    kolprod  INTEGER NOT NULL
);

ALTER TABLE kupuje
    ADD CONSTRAINT kupuje_pk PRIMARY KEY ( spro,
                                           skr_pro,
                                           skr );

CREATE TABLE lajkuje (
    skr      INTEGER NOT NULL,
    spost    INTEGER NOT NULL,
    skr_aut  INTEGER NOT NULL
);

ALTER TABLE lajkuje
    ADD CONSTRAINT lajkuje_pk PRIMARY KEY ( skr,
                                            spost,
                                            skr_aut );

CREATE TABLE neverifikovan (
    skr INTEGER NOT NULL
);

ALTER TABLE neverifikovan ADD CONSTRAINT neverifikovan_pk PRIMARY KEY ( skr );

CREATE TABLE post (
    spost    INTEGER NOT NULL,
    sdrpost  VARCHAR2(255 CHAR) NOT NULL,
    stema    INTEGER NOT NULL,
    skr      INTEGER NOT NULL,
    sgrupa   INTEGER,
    dpost    DATE NOT NULL
);

ALTER TABLE post ADD CONSTRAINT post_pk PRIMARY KEY ( spost,
                                                      skr );

CREATE TABLE prati (
    skr       INTEGER NOT NULL,
    skr_prat  INTEGER NOT NULL
);

ALTER TABLE prati ADD CONSTRAINT prati_pk PRIMARY KEY ( skr,
                                                        skr_prat );

CREATE TABLE pripada (
    skr     INTEGER NOT NULL,
    sgrupa  INTEGER NOT NULL
);

ALTER TABLE pripada ADD CONSTRAINT pripada_pk PRIMARY KEY ( skr,
                                                            sgrupa );

CREATE TABLE proizvod (
    spro    INTEGER NOT NULL,
    pnaziv  VARCHAR2(20 CHAR) NOT NULL,
    popis   VARCHAR2(255 CHAR),
    pcena   FLOAT(10) NOT NULL,
    skr     INTEGER NOT NULL
);

ALTER TABLE proizvod ADD CONSTRAINT proizvod_pk PRIMARY KEY ( spro,
                                                              skr );

CREATE TABLE sponzor (
    sspon    INTEGER NOT NULL,
    nazspon  VARCHAR2(255 CHAR) NOT NULL
);

ALTER TABLE sponzor ADD CONSTRAINT sponzor_pk PRIMARY KEY ( sspon );

CREATE TABLE sponzorise (
    sfs       INTEGER NOT NULL,
    sspon     INTEGER NOT NULL,
    cenaspon  FLOAT(10) NOT NULL
);

ALTER TABLE sponzorise ADD CONSTRAINT sponzorise_pk PRIMARY KEY ( sfs,
                                                                  sspon );

CREATE TABLE tema (
    stema    INTEGER NOT NULL,
    naztema  VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE tema ADD CONSTRAINT tema_pk PRIMARY KEY ( stema );

CREATE TABLE verifikovan (
    skr     INTEGER NOT NULL,
    datver  DATE
);

ALTER TABLE verifikovan ADD CONSTRAINT verifikovan_pk PRIMARY KEY ( skr );

ALTER TABLE fanstranica
    ADD CONSTRAINT fanstranica_neverifikovan_fk FOREIGN KEY ( skr )
        REFERENCES neverifikovan ( skr );

ALTER TABLE jeadmin
    ADD CONSTRAINT jeadmin_grupa_fk FOREIGN KEY ( sgrupa )
        REFERENCES grupa ( sgrupa );

ALTER TABLE jeadmin
    ADD CONSTRAINT jeadmin_pripada_fk FOREIGN KEY ( skr,
                                                    sgrupa )
        REFERENCES pripada ( skr,
                             sgrupa );

ALTER TABLE komentar
    ADD CONSTRAINT komentar_post_fk FOREIGN KEY ( spost,
                                                  skr_prat )
        REFERENCES post ( spost,
                          skr );

ALTER TABLE komentar
    ADD CONSTRAINT komentar_prati_fk FOREIGN KEY ( skr,
                                                   skr_prat )
        REFERENCES prati ( skr,
                           skr_prat );

ALTER TABLE kupuje
    ADD CONSTRAINT kupuje_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE kupuje
    ADD CONSTRAINT kupuje_proizvod_fk FOREIGN KEY ( spro,
                                                    skr_pro )
        REFERENCES proizvod ( spro,
                              skr );

ALTER TABLE lajkuje
    ADD CONSTRAINT lajkuje_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE lajkuje
    ADD CONSTRAINT lajkuje_post_fk FOREIGN KEY ( spost,
                                                 skr_aut )
        REFERENCES post ( spost,
                          skr );

ALTER TABLE neverifikovan
    ADD CONSTRAINT neverifikovan_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE post
    ADD CONSTRAINT post_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE post
    ADD CONSTRAINT post_pripada_fk FOREIGN KEY ( skr,
                                                 sgrupa )
        REFERENCES pripada ( skr,
                             sgrupa );

ALTER TABLE post
    ADD CONSTRAINT post_tema_fk FOREIGN KEY ( stema )
        REFERENCES tema ( stema );

ALTER TABLE prati
    ADD CONSTRAINT prati_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE prati
    ADD CONSTRAINT prati_korisnik_fkv2 FOREIGN KEY ( skr_prat )
        REFERENCES korisnik ( skr );

ALTER TABLE pripada
    ADD CONSTRAINT pripada_grupa_fk FOREIGN KEY ( sgrupa )
        REFERENCES grupa ( sgrupa );

ALTER TABLE pripada
    ADD CONSTRAINT pripada_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

ALTER TABLE proizvod
    ADD CONSTRAINT proizvod_verifikovan_fk FOREIGN KEY ( skr )
        REFERENCES verifikovan ( skr );

ALTER TABLE sponzorise
    ADD CONSTRAINT sponzorise_fanstranica_fk FOREIGN KEY ( sfs )
        REFERENCES fanstranica ( sfs );

ALTER TABLE sponzorise
    ADD CONSTRAINT sponzorise_sponzor_fk FOREIGN KEY ( sspon )
        REFERENCES sponzor ( sspon );

ALTER TABLE verifikovan
    ADD CONSTRAINT verifikovan_korisnik_fk FOREIGN KEY ( skr )
        REFERENCES korisnik ( skr );

CREATE OR REPLACE TRIGGER arc_fkarc_1_neverifikovan BEFORE
    INSERT OR UPDATE OF skr ON neverifikovan
    FOR EACH ROW
DECLARE
    d VARCHAR2(15);
BEGIN
    SELECT
        a.tipk
    INTO d
    FROM
        korisnik a
    WHERE
        a.skr = :new.skr;

    IF ( d IS NULL OR d <> 'Neverifikovan' ) THEN
        raise_application_error(-20223,
                               'FK Neverifikovan_Korisnik_FK in Table Neverifikovan violates Arc constraint on Table Korisnik - discriminator column tipk doesn''t have value ''Neverifikovan''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_1_verifikovan BEFORE
    INSERT OR UPDATE OF skr ON verifikovan
    FOR EACH ROW
DECLARE
    d VARCHAR2(15);
BEGIN
    SELECT
        a.tipk
    INTO d
    FROM
        korisnik a
    WHERE
        a.skr = :new.skr;

    IF ( d IS NULL OR d <> 'Verifikovan' ) THEN
        raise_application_error(-20223,
                               'FK Verifikovan_Korisnik_FK in Table Verifikovan violates Arc constraint on Table Korisnik - discriminator column tipk doesn''t have value ''Verifikovan''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             0
-- ALTER TABLE                             38
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
