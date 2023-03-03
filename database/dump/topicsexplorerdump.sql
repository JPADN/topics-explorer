--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_user (
    id bigint NOT NULL,
    app_user_role character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    enabled boolean NOT NULL,
    image_name character varying(255),
    locked boolean NOT NULL,
    password character varying(255) NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    id uuid NOT NULL,
    content character varying(280) NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    author_id bigint NOT NULL,
    post_id uuid NOT NULL
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- Name: confirmation_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confirmation_token (
    id bigint NOT NULL,
    confirmed_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    expired_at timestamp without time zone NOT NULL,
    token character varying(255) NOT NULL,
    app_user_id bigint NOT NULL
);


ALTER TABLE public.confirmation_token OWNER TO postgres;

--
-- Name: confirmation_token_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.confirmation_token_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.confirmation_token_sequence OWNER TO postgres;

--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id uuid NOT NULL,
    content oid NOT NULL,
    created_at timestamp without time zone NOT NULL,
    title character varying(80) NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    author_id bigint NOT NULL,
    topic_id uuid NOT NULL
);


ALTER TABLE public.post OWNER TO postgres;

--
-- Name: sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence OWNER TO postgres;

--
-- Name: topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topic (
    id uuid NOT NULL,
    created_at timestamp without time zone NOT NULL,
    description character varying(1000) NOT NULL,
    image_name character varying(255),
    name character varying(60) NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.topic OWNER TO postgres;

--
-- Name: 16454; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16454');


ALTER LARGE OBJECT 16454 OWNER TO postgres;

--
-- Name: 16455; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16455');


ALTER LARGE OBJECT 16455 OWNER TO postgres;

--
-- Name: 16456; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16456');


ALTER LARGE OBJECT 16456 OWNER TO postgres;

--
-- Name: 16457; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16457');


ALTER LARGE OBJECT 16457 OWNER TO postgres;

--
-- Name: 16458; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16458');


ALTER LARGE OBJECT 16458 OWNER TO postgres;

--
-- Name: 16459; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16459');


ALTER LARGE OBJECT 16459 OWNER TO postgres;

--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_user (id, app_user_role, email, enabled, image_name, locked, password, username) FROM stdin;
1	USER	teste1@gmail.com	t	381ac0b6-5452-4cd3-aa26-10834abcc8f2	f	$2a$10$YuzCfZ.pvEEI71FZUvMhd.RUqE5DBMo48vghHUt1pAfqF05Am8wQ.	Victor
2	USER	teste2@gmail.com	t	c3d4f410-03ec-4e4c-a3f1-d8b49ca4fe5e	f	$2a$10$JMY2YCL8AUDnHBiKiBh/LunVXQ5Kq4oktCO6bySsuLjAra0yiCHye	Pedro
3	USER	teste3@gmail.com	t	d9c2850d-69a5-431e-a56a-ba261c8baf1e	f	$2a$10$vzV52Oj1qk3zjqvXBirlxurv9rgeqmddqeh4rZIX2bkVT2iymzzvm	Lucas
4	USER	teste4@gmail.com	t	8c346349-27e7-4dc3-a416-6578559a3464	f	$2a$10$DrPyuyqUl5A6jFwnf6Rr/u6Pq9MGdq6OfnM9kRPUb46p3wueOjBhm	Julio
5	USER	teste5@gmail.com	t	39262861-7a4c-40cb-907c-72e8038bd3e9	f	$2a$10$jYpnOY34NfR3dPyPvi4UkewiekoT88LzS9G6nciZQJvq0u/k4Bcx6	Julia
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment (id, content, updated_at, author_id, post_id) FROM stdin;
6f6e0b1c-1fe3-4102-8a04-6e6e6016b69c	Eu recomendo usar aplicativos como o Blablacar para compartilhar viagens com outras pessoas e reduzir os custos de transporte. Também é uma ótima forma de conhecer novas pessoas e fazer amizades.	2023-02-24 20:39:53.240705	2	aae58748-337b-43e5-9d8b-a23101dc5359
b51b8d95-5cd7-4e11-aad3-9f8562c9796e	Eu sempre procuro por acomodações fora dos centros turísticos, geralmente há opções mais baratas e ainda assim é fácil de se deslocar para os lugares que você quer visitar.	2023-02-24 20:40:20.889898	3	aae58748-337b-43e5-9d8b-a23101dc5359
8ef4aa29-82b6-4c0f-a6fd-234fe38184a2	Não se esqueça de procurar por descontos em atrações turísticas, muitos museus oferecem entradas gratuitas em certos dias da semana ou para estudantes. Também é uma boa ideia preparar uma lista de lugares que você quer visitar antes de sair.	2023-02-24 20:43:00.170595	4	aae58748-337b-43e5-9d8b-a23101dc5359
65fbb2ca-b830-4e29-a5d8-acfbc6ff35af	Eu recomendo Bali, na Indonésia. As praias são lindas e há muitos hotéis românticos para escolher. Também é fácil encontrar boa comida por lá.	2023-02-24 20:48:31.415221	4	e798dae7-58d3-4bc3-82c3-830fc575e2ab
2b545e68-2fe2-4580-b1e9-46da1ae8ee39	Santorini, na Grécia, é outra boa opção. As casas brancas e a vista para o mar são deslumbrantes e há muitos restaurantes charmosos para escolher.	2023-02-24 20:48:47.532301	1	e798dae7-58d3-4bc3-82c3-830fc575e2ab
c8ce594c-a74d-4184-9883-b570946a6211	Se vocês gostam de viagens mais aventureiras, eu recomendo uma viagem de barco pelas Ilhas Galápagos, no Equador. Vocês poderão ver animais selvagens únicos e aproveitar a privacidade do barco para momentos românticos.	2023-02-24 20:49:21.91676	2	e798dae7-58d3-4bc3-82c3-830fc575e2ab
60489657-3e7e-4be4-946f-6e5d45904546	Eu recomendo o Toyota Corolla. Ele é muito confiável e tem ótimo consumo de combustível.	2023-02-24 20:53:39.5688	2	cf3a2fea-0119-4bea-a85d-8743988615f9
eea58f6d-d0ff-4a35-a9c2-25eb6c3024c8	Eu gosto muito do Honda Civic. Tem um design moderno e é muito confortável.	2023-02-24 20:53:57.780482	3	cf3a2fea-0119-4bea-a85d-8743988615f9
1aa04dcc-feb6-49b6-bc55-08d5d8cca865	Se você está procurando algo mais luxuoso, o Mercedes-Benz Classe C é uma ótima opção.	2023-02-24 20:54:19.972816	1	cf3a2fea-0119-4bea-a85d-8743988615f9
7b83276f-e875-4170-bc93-92efc1a162d2	Eu tenho uma Harley-Davidson Road King e posso dizer que é uma ótima escolha para viagens longas. Tem um ótimo conforto e desempenho.	2023-02-24 20:55:34.544093	3	1898071e-2dfd-4278-b622-a5e9a9239673
cdebca40-0f52-402f-84f4-d866f7af7ff9	Eu tenho uma BMW R 1200 GS e posso dizer que ela é uma das melhores motos para viagens off-road. É robusta e confiável.	2023-02-24 20:55:57.694742	2	1898071e-2dfd-4278-b622-a5e9a9239673
2f0d6b9e-4a48-4ca2-9a20-61a43530bcfc	Se você quer algo mais econômico, a Yamaha XT 660 é uma ótima opção. Tem um ótimo desempenho e é fácil de manusear.	2023-02-24 20:57:05.134727	1	1898071e-2dfd-4278-b622-a5e9a9239673
cf27505d-79e4-41fd-a631-b6229d8f2da6	Eu experimentei o Oculus Quest e posso dizer que foi incrível. A imersão é completa e as possibilidades são infinitas.	2023-02-24 21:00:21.53851	1	c215965f-3880-4b14-a7a8-274a94d143c9
5e09bef8-7476-47a3-a880-0f38ae581c65	Eu ainda não experimentei, mas tenho lido muito sobre as aplicações da RV na educação e saúde e acho isso realmente interessante.	2023-02-24 21:00:42.618641	5	c215965f-3880-4b14-a7a8-274a94d143c9
fa5ae404-6765-41ad-a80a-20fcfec6576b	Eu não sou muito fã da RV. Acho que ainda precisa de muito desenvolvimento para ser uma tecnologia acessível e eficiente.	2023-02-24 21:01:26.071641	4	c215965f-3880-4b14-a7a8-274a94d143c9
e3c0423b-5e13-4a65-8651-161e27900bdb	Eu acho que a IA vai revolucionar a forma como vivemos e trabalhamos. Vai ser uma tecnologia incrivelmente poderosa e útil.	2023-02-24 21:02:49.128281	4	01e527be-e606-42d1-bf38-3b22721c77ac
6ad833b3-27fa-451f-a6c3-20ab5a9f8c54	Eu também acho que a IA é uma tecnologia importante, mas precisamos tomar cuidado com as consequências negativas, como a perda de empregos e a invasão da privacidade.	2023-02-24 21:03:04.991479	5	01e527be-e606-42d1-bf38-3b22721c77ac
0d917451-a684-4c6a-8783-c9219e208e53	Eu acho que a IA é uma ameaça para a humanidade. O poder da tecnologia pode ser usado para fins malignos e é importante ser cauteloso.	2023-02-24 21:03:30.011724	1	01e527be-e606-42d1-bf38-3b22721c77ac
\.


--
-- Data for Name: confirmation_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.confirmation_token (id, confirmed_at, created_at, expired_at, token, app_user_id) FROM stdin;
1	2023-02-24 23:27:38.426672	2023-02-24 23:27:05.406059	2023-02-24 23:42:05.406073	1121c5c7-928b-4b66-b067-236ee7dcabb2	1
2	2023-02-24 23:28:23.842959	2023-02-24 23:28:14.191058	2023-02-24 23:43:14.191065	6c43b60a-dde5-44a0-8dfe-548f343398b0	2
3	2023-02-24 23:29:19.860387	2023-02-24 23:29:09.7642	2023-02-24 23:44:09.764207	543b1892-a542-4932-9cd3-6850f98e0a7a	3
4	2023-02-24 23:41:30.81364	2023-02-24 23:41:15.433171	2023-02-24 23:56:15.433178	4b8b65fd-a4f4-4b77-820f-9bd3838d9fee	4
5	2023-02-24 23:47:30.56013	2023-02-24 23:47:15.028513	2023-02-25 00:02:15.028521	7304ce71-c7eb-4256-ba2d-4c52addd3efa	5
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, content, created_at, title, updated_at, author_id, topic_id) FROM stdin;
aae58748-337b-43e5-9d8b-a23101dc5359	16454	2023-02-24 20:39:13.43395	Dicas para Viajar Barato na Europa	2023-02-24 20:39:13.433964	1	7986c065-ebce-4d12-9fdf-e57ee4ed3d6a
e798dae7-58d3-4bc3-82c3-830fc575e2ab	16455	2023-02-24 20:47:47.866143	Melhores Destinos para uma Lua de Mel	2023-02-24 20:47:47.866156	5	7986c065-ebce-4d12-9fdf-e57ee4ed3d6a
cf3a2fea-0119-4bea-a85d-8743988615f9	16456	2023-02-24 20:53:12.73651	Qual é o melhor carro para compra em 2022?	2023-02-24 20:53:12.736522	5	210d8591-e650-4e53-894d-9de7dc4377b3
1898071e-2dfd-4278-b622-a5e9a9239673	16457	2023-02-24 20:54:55.991585	Motocicletas: Qual a melhor escolha para viagens longas?	2023-02-24 20:54:55.991597	4	210d8591-e650-4e53-894d-9de7dc4377b3
c215965f-3880-4b14-a7a8-274a94d143c9	16458	2023-02-24 20:59:49.631679	O que vocês acham da realidade virtual?	2023-02-24 20:59:49.631691	3	697b9d1b-4d96-4e89-9a59-6cb6f67e2fde
01e527be-e606-42d1-bf38-3b22721c77ac	16459	2023-02-24 21:02:20.237407	Inteligência artificial: O futuro da tecnologia?	2023-02-24 21:02:20.237418	2	697b9d1b-4d96-4e89-9a59-6cb6f67e2fde
\.


--
-- Data for Name: topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.topic (id, created_at, description, image_name, name, updated_at, author_id) FROM stdin;
7986c065-ebce-4d12-9fdf-e57ee4ed3d6a	2023-02-24 20:37:43.526666	Este tópico é dedicado a todos os viajantes apaixonados que adoram compartilhar suas histórias e conselhos sobre viagens. Aqui você pode trocar dicas sobre roteiros, destinos, alojamento, transporte, entre outros aspectos da viagem. Se você quer planejar sua próxima aventura ou simplesmente quer se inspirar com as histórias de outros viajantes, este é o lugar certo para você. Compartilhe suas histórias, dicas e fotos de viagem com outros amantes de viagens e inspire-se com as histórias deles.\n	76bf255e-47c6-4515-b9d3-dcd50d164a3c	Dicas de viagem	2023-02-24 20:37:43.526684	1
210d8591-e650-4e53-894d-9de7dc4377b3	2023-02-24 20:52:23.902595	"Velocidade e Emoção: Discutindo Automóveis e Motocicletas"\n\nEste tópico é destinado a todos os apaixonados por veículos a motor, sejam eles automóveis ou motocicletas. Aqui você pode compartilhar suas opiniões sobre os últimos modelos e tendências, discutir técnicas de condução e manutenção, e trocar dicas sobre acessórios e peças. Se você é um entusiasta de automóveis ou motocicletas, este é o lugar certo para você. Compartilhe sua paixão pelas rodas com outros amantes de veículos e discuta tudo o que há de novo no mundo dos automóveis e motocicletas.	8f4f2de8-be02-44e6-a1bf-cb36a0a04ec6	Automóveis e motocicletas	2023-02-24 20:52:23.902608	2
697b9d1b-4d96-4e89-9a59-6cb6f67e2fde	2023-02-24 20:58:07.048378	"Avanços Tecnológicos: Discutindo Inovações e Tendências"\n\nEste tópico é dedicado a todos os interessados em tecnologia e inovação. Aqui, você pode debater as últimas tendências, compartilhar suas opiniões sobre produtos tecnológicos e discutir as implicações da tecnologia no mundo atual e futuro. Junte-se à conversa e fique por dentro dos avanços tecnológicos.\n	adb5788c-499f-48cb-b791-bdc868efb4c4	Tecnologia e inovação	2023-02-24 20:58:07.048388	3
\.


--
-- Name: confirmation_token_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.confirmation_token_sequence', 5, true);


--
-- Name: sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sequence', 5, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

BEGIN;

SELECT pg_catalog.lo_open('16454', 131072);
SELECT pg_catalog.lowrite(0, '\x4573746f7520706c616e656a616e646f20756d612076696167656d2070656c61204575726f70612065206573746f752070726f637572616e646f2064696361732070617261207669616a61722062617261746f2e204ac3a1206f7576692066616c617220646520616c67756d617320636f6973617320636f6d6f20757361722061706c6963617469766f7320706172612072657365727661722061636f6d6f6461c3a7c3b5657320652070726f637572617220706f72206f70c3a7c3b56573206465207472616e73706f727465206d6169732065636f6ec3b46d696361732c206d617320676f737461726961206465206f75766972206d61697320737567657374c3b565732e20416c6775c3a96d2074656d20616c67756d61206469636120646520636f6d6f207669616a61722062617261746f206e61204575726f70613f');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16455', 131072);
SELECT pg_catalog.lowrite(0, '\x4d6575206d617269646f206520657520657374616d6f7320706c616e656a616e646f206e6f737361206c7561206465206d656c206520657374616d6f732070726f637572616e646f20706f7220737567657374c3b565732064652064657374696e6f732e2051756572c3ad616d6f7320616c676f20726f6dc3a26e7469636f2c20636f6d20707261696173206c696e646173206520626f6120636f6d6964612e20416c6775c3a96d2074656d20616c67756d6120737567657374c3a36f3f');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16456', 131072);
SELECT pg_catalog.lowrite(0, '\x4573746f752070726f637572616e646f20756d20636172726f206e6f766f206520676f737461726961206465207361626572207175616c20c3a9206f206d656c686f72206d6f64656c6f207061726120636f6d70726120656d20323032322e20517565726f20616c676f2065636f6ec3b46d69636f2c20636f6e666f7274c3a176656c20652073656775726f2e20416c6775c3a96d20706f6465206d6520616a7564617220636f6d20616c67756d61732064696361733f');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16457', 131072);
SELECT pg_catalog.lowrite(0, '\x45752061646f726f207669616a6172206465206d6f746f6369636c6574612c206d61732073656d707265206669636f20656d2064c3ba7669646120736f627265207175616c206d6f64656c6f206573636f6c68657220706172612076696167656e73206d616973206c6f6e6761732e20476f737461726961206465206f7576697220616c67756d617320646963617320646520766f63c3aa732e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16458', 131072);
SELECT pg_catalog.lowrite(0, '\x526563656e74656d656e74652074656e686f206f757669646f206d7569746f20736f627265207265616c6964616465207669727475616c206520676f737461726961206465207361626572206f2071756520766f63c3aa7320616368616d20736f62726520656c612e204ac3a1206578706572696d656e746172616d20616c67756d20646973706f73697469766f2064652052563f20436f6d6f20666f6920612073756120657870657269c3aa6e6369613f');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16459', 131072);
SELECT pg_catalog.lowrite(0, '\x436f6d206f206176616ec3a76f20646120696e74656c6967c3aa6e636961206172746966696369616c2c206d7569746f7320657370656369616c697374617320657374c3a36f207072656f63757061646f7320636f6d20617320696d706c696361c3a7c3b5657320736f6369616973206520c3a974696361732e204f2071756520766f63c3aa7320616368616d20736f627265206f2066757475726f2064612049413f');
SELECT pg_catalog.lo_close(0);

COMMIT;

--
-- Name: app_user app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: confirmation_token confirmation_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confirmation_token
    ADD CONSTRAINT confirmation_token_pkey PRIMARY KEY (id);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (id);


--
-- Name: app_user uk_1j9d9a06i600gd43uu3km82jw; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT uk_1j9d9a06i600gd43uu3km82jw UNIQUE (email);


--
-- Name: app_user uk_3k4cplvh82srueuttfkwnylq0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT uk_3k4cplvh82srueuttfkwnylq0 UNIQUE (username);


--
-- Name: comment fkemqjawvkiyejurssvwm5c21y7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT fkemqjawvkiyejurssvwm5c21y7 FOREIGN KEY (author_id) REFERENCES public.app_user(id);


--
-- Name: post fkg8ln3nj8tjclai0nuvpw5s5uw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fkg8ln3nj8tjclai0nuvpw5s5uw FOREIGN KEY (topic_id) REFERENCES public.topic(id);


--
-- Name: post fklhq00vlc2iwxk5tao1bhx8jbj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fklhq00vlc2iwxk5tao1bhx8jbj FOREIGN KEY (author_id) REFERENCES public.app_user(id);


--
-- Name: confirmation_token fko9fl25wqyh7w7mnfkdqen1rcm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confirmation_token
    ADD CONSTRAINT fko9fl25wqyh7w7mnfkdqen1rcm FOREIGN KEY (app_user_id) REFERENCES public.app_user(id);


--
-- Name: topic fkr0vldpg3dx5dokx747mahf41p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT fkr0vldpg3dx5dokx747mahf41p FOREIGN KEY (author_id) REFERENCES public.app_user(id);


--
-- Name: comment fks1slvnkuemjsq2kj4h3vhx7i1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT fks1slvnkuemjsq2kj4h3vhx7i1 FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- PostgreSQL database dump complete
--

