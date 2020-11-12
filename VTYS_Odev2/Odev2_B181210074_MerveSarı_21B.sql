--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 12rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: Kisi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Kisi";


ALTER SCHEMA "Kisi" OWNER TO postgres;

SET default_tablespace = '';

--
-- Name: Kisi; Type: TABLE; Schema: Kisi; Owner: postgres
--

CREATE TABLE "Kisi"."Kisi" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "kisiTur" character varying(2044) NOT NULL
);


ALTER TABLE "Kisi"."Kisi" OWNER TO postgres;

--
-- Name: Kullanici; Type: TABLE; Schema: Kisi; Owner: postgres
--

CREATE TABLE "Kisi"."Kullanici" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "itibarPuan" integer NOT NULL
);


ALTER TABLE "Kisi"."Kullanici" OWNER TO postgres;

--
-- Name: ToplulukModeratoru; Type: TABLE; Schema: Kisi; Owner: postgres
--

CREATE TABLE "Kisi"."ToplulukModeratoru" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "itibarPuan" integer NOT NULL,
    "moderatorTool" character varying(2044) NOT NULL
);


ALTER TABLE "Kisi"."ToplulukModeratoru" OWNER TO postgres;

--
-- Name: Cevap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cevap" (
    "cevapId" character varying(2044) NOT NULL,
    "cevapOySayisi" integer NOT NULL,
    "cevapSira" integer NOT NULL,
    "cevapKimeAit" character varying(2044) NOT NULL
);


ALTER TABLE public."Cevap" OWNER TO postgres;

--
-- Name: Kisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kisi" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "kisiTur" character varying(2044) NOT NULL
);


ALTER TABLE public."Kisi" OWNER TO postgres;

--
-- Name: KisiSoru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KisiSoru" (
    "soruId" character varying(2044) NOT NULL,
    "kisiMail" character varying(2044) NOT NULL
);


ALTER TABLE public."KisiSoru" OWNER TO postgres;

--
-- Name: Konu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Konu" (
    adi character varying(2044) NOT NULL,
    tag character varying(2044) NOT NULL
);


ALTER TABLE public."Konu" OWNER TO postgres;

--
-- Name: KonuTag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KonuTag" (
    "konuAdi" character varying(2044) NOT NULL,
    "tagAdi" character varying(2044) NOT NULL
);


ALTER TABLE public."KonuTag" OWNER TO postgres;

--
-- Name: Kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kullanici" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "itibarPuan" integer NOT NULL
);


ALTER TABLE public."Kullanici" OWNER TO postgres;

--
-- Name: KullaniciRozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KullaniciRozet" (
    adi character varying(2044) NOT NULL,
    "kullaniciMail" character varying(2044) NOT NULL
);


ALTER TABLE public."KullaniciRozet" OWNER TO postgres;

--
-- Name: ModeratorRozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ModeratorRozet" (
    adi character varying(2044) NOT NULL,
    "moderatorMail" character varying(2044) NOT NULL
);


ALTER TABLE public."ModeratorRozet" OWNER TO postgres;

--
-- Name: Rozetler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rozetler" (
    adi character varying(2044) NOT NULL,
    "rozetPuan" integer NOT NULL,
    "rozetDuzeyi" character varying(2044) NOT NULL
);


ALTER TABLE public."Rozetler" OWNER TO postgres;

--
-- Name: Soru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Soru" (
    "soruId" character varying(2044) NOT NULL,
    "soruOySayisi" integer NOT NULL,
    tag character varying(2044) NOT NULL,
    "tagSayisi" integer NOT NULL
);


ALTER TABLE public."Soru" OWNER TO postgres;

--
-- Name: SoruCevap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruCevap" (
    "soruId" character varying(2044) NOT NULL,
    "cevapId" character varying(2044) NOT NULL
);


ALTER TABLE public."SoruCevap" OWNER TO postgres;

--
-- Name: SoruKonu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruKonu" (
    "soruId" character varying(2044) NOT NULL,
    "konuAdi" character varying(2044) NOT NULL
);


ALTER TABLE public."SoruKonu" OWNER TO postgres;

--
-- Name: SoruTag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruTag" (
    adi character varying(2044) NOT NULL,
    "saruId" character varying(2044) NOT NULL
);


ALTER TABLE public."SoruTag" OWNER TO postgres;

--
-- Name: Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tag" (
    adi character varying(2044) NOT NULL
);


ALTER TABLE public."Tag" OWNER TO postgres;

--
-- Name: ToplulukModeratoru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ToplulukModeratoru" (
    "e-mail" character varying(2044) NOT NULL,
    "kullaniciAdi" character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL,
    "itibarPuan" integer NOT NULL,
    "moderatorTool" character varying(2044) NOT NULL
);


ALTER TABLE public."ToplulukModeratoru" OWNER TO postgres;

--
-- Name: Yorum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yorum" (
    "yorumId" character varying(2044) NOT NULL
);


ALTER TABLE public."Yorum" OWNER TO postgres;

--
-- Data for Name: Kisi; Type: TABLE DATA; Schema: Kisi; Owner: postgres
--



--
-- Data for Name: Kullanici; Type: TABLE DATA; Schema: Kisi; Owner: postgres
--



--
-- Data for Name: ToplulukModeratoru; Type: TABLE DATA; Schema: Kisi; Owner: postgres
--



--
-- Data for Name: Cevap; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cevap" VALUES ('CJ2125', 119, 1, 'N.Schipper');
INSERT INTO public."Cevap" VALUES ('JG8T45', 45, 4, 'Nick Bianchi');
INSERT INTO public."Cevap" VALUES ('119O54', 85, 2, 'K.Mooijman');


--
-- Data for Name: Kisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kisi" VALUES ('bayramsari@gmail.com', 'Bayram', '123456', 'Kullanici');
INSERT INTO public."Kisi" VALUES ('mervetopal@gmail.com', 'Merve', '852963', 'Kullanici');
INSERT INTO public."Kisi" VALUES ('durusari@gmail.com', 'Duru', '147852', 'ToplulukModeratoru');
INSERT INTO public."Kisi" VALUES ('inciguclu@gmail.com', 'Inci', '25i2019', 'ToplulukModeratoru');


--
-- Data for Name: KisiSoru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KisiSoru" VALUES ('VJ2157', 'durusari@gmail.com');
INSERT INTO public."KisiSoru" VALUES ('4KL7RP', 'inciguclu@gmail.com');
INSERT INTO public."KisiSoru" VALUES ('AF823P', 'bayramsari@gmail.com');


--
-- Data for Name: Konu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Konu" VALUES ('Isletim sistemi', 'kernel');
INSERT INTO public."Konu" VALUES ('Protokol', 'ssh');
INSERT INTO public."Konu" VALUES ('Kablosuz iletisim', 'wireless');


--
-- Data for Name: KonuTag; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KonuTag" VALUES ('Isletim sistemi', 'kernel');
INSERT INTO public."KonuTag" VALUES ('Kablosuz iletisim', 'wireless');
INSERT INTO public."KonuTag" VALUES ('Protokol', 'ssh');


--
-- Data for Name: Kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kullanici" VALUES ('bayramsari@gmail.com', 'Bayram', '123456', 126);
INSERT INTO public."Kullanici" VALUES ('mervetopal@gmail.com', 'Merve', '852963', 98);


--
-- Data for Name: KullaniciRozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KullaniciRozet" VALUES ('Booster', 'mervetopal@gmail.com');
INSERT INTO public."KullaniciRozet" VALUES ('Booster', 'bayramsari@gmail.com');


--
-- Data for Name: ModeratorRozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ModeratorRozet" VALUES ('Booster', 'durusari@gmail.com');
INSERT INTO public."ModeratorRozet" VALUES ('Booster', 'inciguclu@gmail.com');


--
-- Data for Name: Rozetler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Rozetler" VALUES ('Announcer', 25, 'Bronz');
INSERT INTO public."Rozetler" VALUES ('Booster', 300, 'Gumus');
INSERT INTO public."Rozetler" VALUES ('Publicist', 1000, 'Altin');


--
-- Data for Name: Soru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Soru" VALUES ('4KL7RP', 13, 'ssd', 3);
INSERT INTO public."Soru" VALUES ('AF823P', 83, 'wireless', 1);
INSERT INTO public."Soru" VALUES ('VJ2157', 96, 'updates', 1);


--
-- Data for Name: SoruCevap; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruCevap" VALUES ('VJ2157', 'CJ2125');
INSERT INTO public."SoruCevap" VALUES ('AF823P', '119O54');
INSERT INTO public."SoruCevap" VALUES ('4KL7RP', 'JG8T45');


--
-- Data for Name: SoruKonu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruKonu" VALUES ('OFG3MS', 'Isletim sistemi');
INSERT INTO public."SoruKonu" VALUES ('159HF1', 'Kablosuz iletisim');
INSERT INTO public."SoruKonu" VALUES ('BV357TY', 'Protokol');


--
-- Data for Name: SoruTag; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruTag" VALUES ('networking', '4KL7RP');
INSERT INTO public."SoruTag" VALUES ('wireless', 'AF823P');
INSERT INTO public."SoruTag" VALUES ('kernel', 'VJ2157');


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tag" VALUES ('networking');
INSERT INTO public."Tag" VALUES ('wireless');
INSERT INTO public."Tag" VALUES ('kernel');
INSERT INTO public."Tag" VALUES ('ssh');


--
-- Data for Name: ToplulukModeratoru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ToplulukModeratoru" VALUES ('durusari@gmail.com', 'Duru', '147852', 564, 'HesapSilme');
INSERT INTO public."ToplulukModeratoru" VALUES ('inciguclu@gmail.com', 'Inci', '25i2019', 789, 'YorumSilme');


--
-- Data for Name: Yorum; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Yorum" VALUES ('147ANG5B');
INSERT INTO public."Yorum" VALUES ('258ERT6K');
INSERT INTO public."Yorum" VALUES ('B87OML41');
INSERT INTO public."Yorum" VALUES ('LDFG4DEF');
INSERT INTO public."Yorum" VALUES ('7TFY23MS');


--
-- Name: Kisi Kisi_pkey; Type: CONSTRAINT; Schema: Kisi; Owner: postgres
--

ALTER TABLE ONLY "Kisi"."Kisi"
    ADD CONSTRAINT "Kisi_pkey" PRIMARY KEY ("e-mail");


--
-- Name: Kullanici Kullanici_pkey; Type: CONSTRAINT; Schema: Kisi; Owner: postgres
--

ALTER TABLE ONLY "Kisi"."Kullanici"
    ADD CONSTRAINT "Kullanici_pkey" PRIMARY KEY ("e-mail");


--
-- Name: ToplulukModeratoru ToplulukModeratoru_pkey; Type: CONSTRAINT; Schema: Kisi; Owner: postgres
--

ALTER TABLE ONLY "Kisi"."ToplulukModeratoru"
    ADD CONSTRAINT "ToplulukModeratoru_pkey" PRIMARY KEY ("e-mail");


--
-- Name: Cevap Cevap_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "Cevap_pkey" PRIMARY KEY ("cevapId");


--
-- Name: KisiSoru KisiSoru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KisiSoru"
    ADD CONSTRAINT "KisiSoru_pkey" PRIMARY KEY ("soruId", "kisiMail");


--
-- Name: Kisi Kisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kisi"
    ADD CONSTRAINT "Kisi_pkey" PRIMARY KEY ("e-mail");


--
-- Name: KonuTag KonuTag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KonuTag"
    ADD CONSTRAINT "KonuTag_pkey" PRIMARY KEY ("konuAdi", "tagAdi");


--
-- Name: Konu Konu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Konu"
    ADD CONSTRAINT "Konu_pkey" PRIMARY KEY (adi);


--
-- Name: KullaniciRozet KullaniciRozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "KullaniciRozet_pkey" PRIMARY KEY (adi, "kullaniciMail");


--
-- Name: Kullanici Kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "Kullanici_pkey" PRIMARY KEY ("e-mail");


--
-- Name: ModeratorRozet ModeratorRozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModeratorRozet"
    ADD CONSTRAINT "ModeratorRozet_pkey" PRIMARY KEY (adi, "moderatorMail");


--
-- Name: Rozetler Rozetler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozetler"
    ADD CONSTRAINT "Rozetler_pkey" PRIMARY KEY (adi);


--
-- Name: SoruCevap SoruCevap_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruCevap"
    ADD CONSTRAINT "SoruCevap_pkey" PRIMARY KEY ("soruId", "cevapId");


--
-- Name: SoruKonu SoruKonu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruKonu"
    ADD CONSTRAINT "SoruKonu_pkey" PRIMARY KEY ("soruId");


--
-- Name: SoruTag SoruTag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruTag"
    ADD CONSTRAINT "SoruTag_pkey" PRIMARY KEY (adi, "saruId");


--
-- Name: Soru Soru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "Soru_pkey" PRIMARY KEY ("soruId");


--
-- Name: Tag Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (adi);


--
-- Name: ToplulukModeratoru ToplulukModeratoru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ToplulukModeratoru"
    ADD CONSTRAINT "ToplulukModeratoru_pkey" PRIMARY KEY ("e-mail");


--
-- Name: Yorum Yorum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorum"
    ADD CONSTRAINT "Yorum_pkey" PRIMARY KEY ("yorumId");


--
-- Name: index_yorumId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_yorumId" ON public."Yorum" USING btree ("yorumId");


--
-- Name: Kullanici lnk_Kisi_Kullanici; Type: FK CONSTRAINT; Schema: Kisi; Owner: postgres
--

ALTER TABLE ONLY "Kisi"."Kullanici"
    ADD CONSTRAINT "lnk_Kisi_Kullanici" FOREIGN KEY ("e-mail") REFERENCES "Kisi"."Kisi"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kullanici lnk_Kisi_Kullanici_2; Type: FK CONSTRAINT; Schema: Kisi; Owner: postgres
--

ALTER TABLE ONLY "Kisi"."Kullanici"
    ADD CONSTRAINT "lnk_Kisi_Kullanici_2" FOREIGN KEY ("e-mail") REFERENCES "Kisi"."Kisi"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruCevap lnk_Cevap_SoruCevap; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruCevap"
    ADD CONSTRAINT "lnk_Cevap_SoruCevap" FOREIGN KEY ("cevapId") REFERENCES public."Cevap"("cevapId") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KisiSoru lnk_Kisi_KisiSoru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KisiSoru"
    ADD CONSTRAINT "lnk_Kisi_KisiSoru" FOREIGN KEY ("kisiMail") REFERENCES public."Kisi"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kullanici lnk_Kisi_Kullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "lnk_Kisi_Kullanici" FOREIGN KEY ("e-mail") REFERENCES public."Kisi"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ToplulukModeratoru lnk_Kisi_ToplulukModeratoru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ToplulukModeratoru"
    ADD CONSTRAINT "lnk_Kisi_ToplulukModeratoru" FOREIGN KEY ("e-mail") REFERENCES public."Kisi"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KonuTag lnk_Konu_KonuTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KonuTag"
    ADD CONSTRAINT "lnk_Konu_KonuTag" FOREIGN KEY ("konuAdi") REFERENCES public."Konu"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruKonu lnk_Konu_SoruKonu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruKonu"
    ADD CONSTRAINT "lnk_Konu_SoruKonu" FOREIGN KEY ("konuAdi") REFERENCES public."Konu"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozet lnk_Kullanici_KullaniciRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "lnk_Kullanici_KullaniciRozet" FOREIGN KEY ("kullaniciMail") REFERENCES public."Kullanici"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozet lnk_Rozetler_KullaniciRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "lnk_Rozetler_KullaniciRozet" FOREIGN KEY (adi) REFERENCES public."Rozetler"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ModeratorRozet lnk_Rozetler_ModeratorRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModeratorRozet"
    ADD CONSTRAINT "lnk_Rozetler_ModeratorRozet" FOREIGN KEY (adi) REFERENCES public."Rozetler"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KisiSoru lnk_Soru_KisiSoru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KisiSoru"
    ADD CONSTRAINT "lnk_Soru_KisiSoru" FOREIGN KEY ("soruId") REFERENCES public."Soru"("soruId") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruCevap lnk_Soru_SoruCevap; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruCevap"
    ADD CONSTRAINT "lnk_Soru_SoruCevap" FOREIGN KEY ("soruId") REFERENCES public."Soru"("soruId") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruTag lnk_Soru_SoruTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruTag"
    ADD CONSTRAINT "lnk_Soru_SoruTag" FOREIGN KEY ("saruId") REFERENCES public."Soru"("soruId") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KonuTag lnk_Tag_KonuTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KonuTag"
    ADD CONSTRAINT "lnk_Tag_KonuTag" FOREIGN KEY ("tagAdi") REFERENCES public."Tag"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruTag lnk_Tag_SoruTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruTag"
    ADD CONSTRAINT "lnk_Tag_SoruTag" FOREIGN KEY (adi) REFERENCES public."Tag"(adi) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ModeratorRozet lnk_ToplulukModeratoru_ModeratorRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModeratorRozet"
    ADD CONSTRAINT "lnk_ToplulukModeratoru_ModeratorRozet" FOREIGN KEY ("moderatorMail") REFERENCES public."ToplulukModeratoru"("e-mail") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

