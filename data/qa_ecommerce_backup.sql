--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9
-- Dumped by pg_dump version 16.9

-- Started on 2025-05-20 08:34:56 WIB

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
-- TOC entry 226 (class 1259 OID 16877)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    user_id integer,
    city character varying(50),
    province character varying(50),
    postal_code character varying(10)
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16876)
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_id_seq OWNER TO postgres;

--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 225
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- TOC entry 238 (class 1259 OID 16958)
-- Name: cart_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_items (
    id integer NOT NULL,
    user_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE public.cart_items OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16957)
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cart_items_id_seq OWNER TO postgres;

--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 237
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- TOC entry 240 (class 1259 OID 16975)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16974)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 239
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 224 (class 1259 OID 16863)
-- Name: complaints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.complaints (
    id integer NOT NULL,
    user_id integer,
    description text,
    status character varying(20)
);


ALTER TABLE public.complaints OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16862)
-- Name: complaints_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.complaints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.complaints_id_seq OWNER TO postgres;

--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 223
-- Name: complaints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.complaints_id_seq OWNED BY public.complaints.id;


--
-- TOC entry 247 (class 1259 OID 17024)
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedbacks (
    id integer NOT NULL,
    user_id integer,
    product_id integer,
    rating integer,
    comment text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.feedbacks OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17023)
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedbacks_id_seq OWNER TO postgres;

--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 246
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- TOC entry 230 (class 1259 OID 16902)
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    id integer NOT NULL,
    user_id integer,
    activity text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16901)
-- Name: logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_id_seq OWNER TO postgres;

--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 229
-- Name: logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;


--
-- TOC entry 234 (class 1259 OID 16924)
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    user_id integer,
    message text,
    read_status boolean DEFAULT false
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16923)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO postgres;

--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 233
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 228 (class 1259 OID 16889)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    transaction_id integer,
    method character varying(30),
    status character varying(20),
    paid_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16888)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO postgres;

--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 227
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- TOC entry 241 (class 1259 OID 16981)
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_categories (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_categories OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16822)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(100),
    price numeric,
    stock integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16821)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 232 (class 1259 OID 16917)
-- Name: promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotions (
    id integer NOT NULL,
    name character varying(100),
    discount integer,
    valid_until date
);


ALTER TABLE public.promotions OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16916)
-- Name: promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promotions_id_seq OWNER TO postgres;

--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 231
-- Name: promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotions_id_seq OWNED BY public.promotions.id;


--
-- TOC entry 236 (class 1259 OID 16941)
-- Name: referrals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.referrals (
    id integer NOT NULL,
    user_id integer,
    referred_by integer
);


ALTER TABLE public.referrals OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16940)
-- Name: referrals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.referrals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.referrals_id_seq OWNER TO postgres;

--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 235
-- Name: referrals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.referrals_id_seq OWNED BY public.referrals.id;


--
-- TOC entry 222 (class 1259 OID 16851)
-- Name: rewards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rewards (
    id integer NOT NULL,
    user_id integer,
    points integer,
    level character varying(20)
);


ALTER TABLE public.rewards OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16850)
-- Name: rewards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rewards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rewards_id_seq OWNER TO postgres;

--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 221
-- Name: rewards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rewards_id_seq OWNED BY public.rewards.id;


--
-- TOC entry 243 (class 1259 OID 16998)
-- Name: support_tickets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.support_tickets (
    id integer NOT NULL,
    user_id integer,
    category character varying(50),
    status character varying(20),
    agent_name character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.support_tickets OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16997)
-- Name: support_tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.support_tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.support_tickets_id_seq OWNER TO postgres;

--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 242
-- Name: support_tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.support_tickets_id_seq OWNED BY public.support_tickets.id;


--
-- TOC entry 220 (class 1259 OID 16831)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    user_id integer,
    product_id integer,
    quantity integer,
    total_price numeric,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16830)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO postgres;

--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 219
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 245 (class 1259 OID 17012)
-- Name: user_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_sessions (
    id integer NOT NULL,
    user_id integer,
    session_start timestamp without time zone,
    session_end timestamp without time zone,
    ip_address character varying(20)
);


ALTER TABLE public.user_sessions OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17011)
-- Name: user_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_sessions_id_seq OWNED BY public.user_sessions.id;


--
-- TOC entry 216 (class 1259 OID 16815)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50),
    email character varying(100),
    status character varying(10)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16814)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3528 (class 2604 OID 16880)
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- TOC entry 3537 (class 2604 OID 16961)
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- TOC entry 3538 (class 2604 OID 16978)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3527 (class 2604 OID 16866)
-- Name: complaints id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints ALTER COLUMN id SET DEFAULT nextval('public.complaints_id_seq'::regclass);


--
-- TOC entry 3542 (class 2604 OID 17027)
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- TOC entry 3531 (class 2604 OID 16905)
-- Name: logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);


--
-- TOC entry 3534 (class 2604 OID 16927)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 3529 (class 2604 OID 16892)
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- TOC entry 3523 (class 2604 OID 16825)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3533 (class 2604 OID 16920)
-- Name: promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions ALTER COLUMN id SET DEFAULT nextval('public.promotions_id_seq'::regclass);


--
-- TOC entry 3536 (class 2604 OID 16944)
-- Name: referrals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referrals ALTER COLUMN id SET DEFAULT nextval('public.referrals_id_seq'::regclass);


--
-- TOC entry 3526 (class 2604 OID 16854)
-- Name: rewards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rewards ALTER COLUMN id SET DEFAULT nextval('public.rewards_id_seq'::regclass);


--
-- TOC entry 3539 (class 2604 OID 17001)
-- Name: support_tickets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.support_tickets ALTER COLUMN id SET DEFAULT nextval('public.support_tickets_id_seq'::regclass);


--
-- TOC entry 3524 (class 2604 OID 16834)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 3541 (class 2604 OID 17015)
-- Name: user_sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_sessions ALTER COLUMN id SET DEFAULT nextval('public.user_sessions_id_seq'::regclass);


--
-- TOC entry 3522 (class 2604 OID 16818)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3750 (class 0 OID 16877)
-- Dependencies: 226
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (id, user_id, city, province, postal_code) FROM stdin;
1	1	Depok	Jawa Barat	16412
2	2	Bandung	Jawa Barat	40115
3	3	Semarang	Jawa Tengah	50123
4	4	Surabaya	Jawa Timur	60231
5	5	Yogyakarta	DI Yogyakarta	55111
6	6	Denpasar	Bali	80227
7	7	Makassar	Sulawesi Selatan	90134
8	8	Pontianak	Kalimantan Barat	78121
9	9	Padang	Sumatera Barat	25111
10	10	Palembang	Sumatera Selatan	30113
11	1	Depok	Jawa Barat	16412
12	2	Bandung	Jawa Barat	40115
13	3	Semarang	Jawa Tengah	50123
14	4	Surabaya	Jawa Timur	60231
15	5	Yogyakarta	DI Yogyakarta	55111
16	6	Denpasar	Bali	80227
17	7	Makassar	Sulawesi Selatan	90134
18	8	Pontianak	Kalimantan Barat	78121
19	9	Padang	Sumatera Barat	25111
20	10	Palembang	Sumatera Selatan	30113
21	11	Malang	Jawa Timur	65145
22	12	Bogor	Jawa Barat	16111
23	13	Tangerang	Banten	15118
24	14	Cirebon	Jawa Barat	45112
25	15	Solo	Jawa Tengah	57111
26	16	Banjarmasin	Kalimantan Selatan	70111
27	17	Manado	Sulawesi Utara	95112
28	18	Balikpapan	Kalimantan Timur	76111
29	19	Pekanbaru	Riau	28112
30	20	Samarinda	Kalimantan Timur	75111
31	21	Mataram	NTB	83125
32	22	Ambon	Maluku	97124
33	23	Jayapura	Papua	99111
34	24	Magelang	Jawa Tengah	56112
35	25	Bekasi	Jawa Barat	17113
36	26	Probolinggo	Jawa Timur	67219
37	27	Tasikmalaya	Jawa Barat	46114
38	28	Gorontalo	Gorontalo	96115
39	29	Kupang	NTT	85111
40	30	Serang	Banten	42111
\.


--
-- TOC entry 3762 (class 0 OID 16958)
-- Dependencies: 238
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_items (id, user_id, product_id, quantity) FROM stdin;
1	1	2	3
2	2	3	1
3	3	1	2
4	4	6	5
5	5	4	1
6	6	5	2
7	7	3	3
8	8	2	4
9	9	1	2
10	10	6	1
\.


--
-- TOC entry 3764 (class 0 OID 16975)
-- Dependencies: 240
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	Elektronik
2	Voucher
3	Pulsa
4	Merchandise
5	Aksesoris
\.


--
-- TOC entry 3748 (class 0 OID 16863)
-- Dependencies: 224
-- Data for Name: complaints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.complaints (id, user_id, description, status) FROM stdin;
1	8	Saldo tidak bertambah	open
2	19	Pembayaran gagal	resolved
3	10	Data transaksi hilang	open
4	2	Akun terkunci	resolved
5	26	Tidak bisa login	investigating
6	17	Reward tidak masuk	open
7	4	Pesanan belum dikirim	resolved
8	21	Email tidak valid	investigating
9	5	Saldo tidak bertambah	open
10	23	Status tidak berubah	resolved
11	15	Reward tidak masuk	open
12	12	Pesanan belum dikirim	open
13	1	Saldo tidak bertambah	resolved
14	28	Akun terkunci	open
15	30	Pembayaran gagal	open
16	6	Email tidak valid	investigating
17	14	Tidak bisa login	open
18	9	Status tidak berubah	resolved
19	18	Reward tidak masuk	resolved
20	7	Pesanan belum dikirim	investigating
\.


--
-- TOC entry 3771 (class 0 OID 17024)
-- Dependencies: 247
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedbacks (id, user_id, product_id, rating, comment, created_at) FROM stdin;
1	3	1	4	Bagus banget	2025-05-19 17:31:01.037785
2	6	2	5	Cukup memuaskan	2025-05-19 17:31:01.037785
3	10	3	2	Tidak sesuai deskripsi	2025-05-19 17:31:01.037785
4	18	5	1	Produk cepat rusak	2025-05-19 17:31:01.037785
5	9	4	5	Recommended!	2025-05-19 17:31:01.037785
6	20	3	4	Bagus banget	2025-05-19 17:31:01.037785
7	22	1	3	Cukup memuaskan	2025-05-19 17:31:01.037785
8	5	6	1	Produk cepat rusak	2025-05-19 17:31:01.037785
9	17	2	5	Recommended!	2025-05-19 17:31:01.037785
10	11	4	4	Bagus banget	2025-05-19 17:31:01.037785
\.


--
-- TOC entry 3754 (class 0 OID 16902)
-- Dependencies: 230
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs (id, user_id, activity, created_at) FROM stdin;
1	1	Login	2025-05-19 16:21:21.817659
2	2	Logout	2025-05-19 16:21:21.817659
3	3	Update Profile	2025-05-19 16:21:21.817659
4	4	View Product	2025-05-19 16:21:21.817659
5	5	Checkout	2025-05-19 16:21:21.817659
6	6	Claim Reward	2025-05-19 16:21:21.817659
7	7	Login	2025-05-19 16:21:21.817659
8	8	Logout	2025-05-19 16:21:21.817659
9	9	Update Profile	2025-05-19 16:21:21.817659
10	10	Checkout	2025-05-19 16:21:21.817659
\.


--
-- TOC entry 3758 (class 0 OID 16924)
-- Dependencies: 234
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, user_id, message, read_status) FROM stdin;
1	1	Promo baru: Diskon Pulsa 20%	f
2	2	Transaksi Anda berhasil	t
3	3	Reward Anda sudah masuk	t
4	4	Ada produk baru menanti	f
5	5	Promo Aksesoris Diskon 25%	f
6	6	Voucher Game Flash Sale	t
7	7	Saldo Anda bertambah	t
8	8	Ada notifikasi baru	f
9	9	Anda direferensikan oleh user lain	t
10	10	Promo Paket Data hanya hari ini	f
\.


--
-- TOC entry 3752 (class 0 OID 16889)
-- Dependencies: 228
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, transaction_id, method, status, paid_at) FROM stdin;
1	1	VA BCA	paid	2025-05-19 16:21:21.817659
2	2	OVO	pending	2025-05-19 16:21:21.817659
3	3	Gopay	paid	2025-05-19 16:21:21.817659
4	4	Credit Card	failed	2025-05-19 16:21:21.817659
5	5	OVO	paid	2025-05-19 16:21:21.817659
6	6	VA BCA	pending	2025-05-19 16:21:21.817659
7	7	Gopay	paid	2025-05-19 16:21:21.817659
8	8	OVO	paid	2025-05-19 16:21:21.817659
\.


--
-- TOC entry 3765 (class 0 OID 16981)
-- Dependencies: 241
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_categories (product_id, category_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	3
2	3
5	1
4	5
3	2
\.


--
-- TOC entry 3742 (class 0 OID 16822)
-- Dependencies: 218
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, price, stock) FROM stdin;
1	Gadget A	1000000	5
2	Voucher Game	50000	200
3	Paket Data	30000	100
4	Merchandise	120000	20
5	Headphone	250000	50
6	Pulsa Elektrik	10000	500
\.


--
-- TOC entry 3756 (class 0 OID 16917)
-- Dependencies: 232
-- Data for Name: promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotions (id, name, discount, valid_until) FROM stdin;
1	Promo Pulsa Akhir Tahun	20	2025-06-30
2	Diskon Gadget Ramadan	10	2025-07-10
3	Flash Sale Voucher Game	30	2025-06-25
4	Paket Data Murah	15	2025-06-20
5	Belanja Aksesoris Diskon	25	2025-07-05
\.


--
-- TOC entry 3760 (class 0 OID 16941)
-- Dependencies: 236
-- Data for Name: referrals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.referrals (id, user_id, referred_by) FROM stdin;
1	11	2
2	12	3
3	13	4
4	14	5
5	15	6
6	16	1
7	17	8
8	18	9
9	19	10
10	20	7
\.


--
-- TOC entry 3746 (class 0 OID 16851)
-- Dependencies: 222
-- Data for Name: rewards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rewards (id, user_id, points, level) FROM stdin;
1	12	1258	Gold
2	29	569	Silver
3	4	1103	Gold
4	27	590	Silver
5	3	426	Bronze
6	14	1066	Gold
7	20	1123	Gold
8	10	1545	Gold
9	18	2689	Platinum
10	21	824	Silver
11	30	1683	Gold
12	15	2282	Platinum
13	6	393	Bronze
14	17	2536	Platinum
15	9	288	Bronze
16	28	2487	Platinum
17	7	526	Silver
18	16	984	Silver
19	1	2269	Platinum
20	19	2111	Platinum
\.


--
-- TOC entry 3767 (class 0 OID 16998)
-- Dependencies: 243
-- Data for Name: support_tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.support_tickets (id, user_id, category, status, agent_name, created_at) FROM stdin;
1	19	Product Complaint	closed	dr. Ridwan Pranowo, S.Sos	2025-05-19 17:24:40.664949
2	2	Login Issue	in progress	Ir. Halima Wasita	2025-05-19 17:24:40.664949
3	9	Reward Missing	open	Cakrabuana Narpati	2025-05-19 17:24:40.664949
4	27	Login Issue	open	Dimaz Tampubolon, S.H.	2025-05-19 17:24:40.664949
5	8	Payment Problem	open	Gada Hasanah, S.Ked	2025-05-19 17:24:40.664949
6	3	Payment Problem	in progress	Jais Hutagalung	2025-05-19 17:24:40.664949
7	10	Payment Problem	closed	R. Hesti Agustina	2025-05-19 17:24:40.664949
8	3	Login Issue	in progress	dr. Catur Lestari	2025-05-19 17:24:40.664949
9	6	Product Complaint	in progress	Anita Novitasari, S.Ked	2025-05-19 17:24:40.664949
10	11	Reward Missing	in progress	Ade Aryani	2025-05-19 17:24:40.664949
11	25	Reward Missing	in progress	Cornelia Usamah	2025-05-19 17:24:40.664949
12	3	Payment Problem	closed	R.M. Wakiman Firgantoro, S.E.	2025-05-19 17:24:40.664949
13	26	Product Complaint	open	Rahayu Hidayat	2025-05-19 17:24:40.664949
14	3	Reward Missing	closed	Hadi Astuti	2025-05-19 17:24:40.664949
15	29	Login Issue	in progress	Caraka Melani, S.Sos	2025-05-19 17:24:40.664949
\.


--
-- TOC entry 3744 (class 0 OID 16831)
-- Dependencies: 220
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (id, user_id, product_id, quantity, total_price, created_at) FROM stdin;
1	6	3	5	5000000	2025-05-19 15:54:52.713468
2	3	6	4	4000000	2025-05-19 15:54:52.713468
3	7	4	4	200000	2025-05-19 15:54:52.713468
4	8	4	4	120000	2025-05-19 15:54:52.713468
5	8	2	3	3000000	2025-05-19 15:54:52.713468
6	8	4	4	4000000	2025-05-19 15:54:52.713468
7	22	6	3	360000	2025-05-19 15:54:52.713468
8	13	6	3	150000	2025-05-19 15:54:52.713468
9	9	4	2	2000000	2025-05-19 15:54:52.713468
10	1	6	3	90000	2025-05-19 15:54:52.713468
11	4	4	1	10000	2025-05-19 15:54:52.713468
12	26	3	3	750000	2025-05-19 18:09:28.10131
13	15	6	2	60000	2025-05-19 18:09:28.10131
14	28	2	5	150000	2025-05-19 18:09:28.10131
15	18	2	4	200000	2025-05-19 18:09:28.10131
16	6	5	5	600000	2025-05-19 18:09:28.10131
17	14	2	5	250000	2025-05-19 18:09:28.10131
18	21	5	1	10000	2025-05-19 18:09:28.10131
19	7	1	4	480000	2025-05-19 18:09:28.10131
20	25	6	4	120000	2025-05-19 18:09:28.10131
21	26	5	4	200000	2025-05-19 18:09:28.10131
\.


--
-- TOC entry 3769 (class 0 OID 17012)
-- Dependencies: 245
-- Data for Name: user_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_sessions (id, user_id, session_start, session_end, ip_address) FROM stdin;
1	2	2025-02-20 04:31:18	2025-05-12 14:44:39	161.182.223.1
2	17	2025-01-06 03:08:29	2025-03-27 01:48:06	144.170.42.95
3	18	2025-03-10 00:31:16	2025-04-28 21:35:48	203.81.106.244
4	28	2025-04-23 07:20:08	2025-05-07 19:19:34	247.106.181.206
5	9	2025-02-21 11:51:36	2025-03-26 10:34:12	19.178.4.47
6	12	2025-04-11 08:50:42	2025-05-08 09:18:25	239.75.127.149
7	25	2025-03-24 12:20:52	2025-05-17 20:44:01	236.144.187.247
8	13	2025-02-02 13:39:26	2025-03-23 00:22:18	156.106.211.5
9	22	2025-03-17 11:02:12	2025-05-04 06:03:19	145.35.25.195
10	30	2025-04-04 21:44:41	2025-05-18 05:38:26	192.176.151.215
\.


--
-- TOC entry 3740 (class 0 OID 16815)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, status) FROM stdin;
1	Ir. Wirda Usada, M.Ak	megantaradono@yahoo.com	active
2	Nadia Anggriawan	tsetiawan@ud.go.id	active
3	Bella Prasetyo	tambagandi@pt.desa.id	active
4	R.M. Budi Nasyidah	bakiadi94@yahoo.com	inactive
5	Luwar Situmorang	luthfi68@yahoo.com	active
6	Tgk. Mulya Suwarno, S.Ked	sari18@gmail.com	active
7	Shakila Puspasari	wulandaridadi@hotmail.com	active
8	Pangeran Prabowo	jprakasa@yahoo.com	inactive
9	Tari Astuti	jatmiko66@yahoo.com	inactive
10	Calista Nababan	wkuswandari@ud.my.id	inactive
11	Lili Rahmawati	harsan@gmail.com	active
12	Yoga Cahyadi	bagaskara.dina@postel.go.id	inactive
13	Ferdy Nasution	sulastri.joko@yahoo.com	active
14	Cintya Wibisono	jumadi61@pustaka.id	active
15	Retno Mahendra	teguh_susanti@budaya.go.id	inactive
16	Alvian Yulianto	rasyidah.rahma@bps.co.id	active
17	Vina Alamsyah	vina22@gmail.com	active
18	Riyan Wijaya	riyanw@desa.id	inactive
19	Dewi Marlina	dewi.marlina@web.id	active
20	Handoko Prasetya	handoko.pra@ud.go.id	inactive
21	Azka Nurhaliza	azka123@gmail.com	active
22	Taufiq Hidayat	taufiq@kominfo.go.id	inactive
23	Wulan Apriani	wulan.apr@gmail.com	active
24	Dian Rahma	dianr@desa.my.id	active
25	Satria Gunawan	satria.gunawan@bps.co.id	active
26	Annisa Aulia	annisaau@webmail.id	inactive
27	Iqbal Hanif	iqbalhanif@yahoo.com	active
28	Intan Lestari	intan.le@desa.go.id	inactive
29	Zaki Saputra	zaki@ptemail.com	active
30	Rahma Fitriani	rahma.fitriani@gmail.com	active
\.


--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 225
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 40, true);


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 237
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 10, true);


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 239
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 223
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.complaints_id_seq', 20, true);


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 246
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 10, true);


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 229
-- Name: logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logs_id_seq', 10, true);


--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 233
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 10, true);


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 227
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 8, true);


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 6, true);


--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 231
-- Name: promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_id_seq', 5, true);


--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 235
-- Name: referrals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.referrals_id_seq', 10, true);


--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 221
-- Name: rewards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rewards_id_seq', 20, true);


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 242
-- Name: support_tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.support_tickets_id_seq', 15, true);


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 219
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 21, true);


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_sessions_id_seq', 10, true);


--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 30, true);


--
-- TOC entry 3555 (class 2606 OID 16882)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3567 (class 2606 OID 16963)
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3569 (class 2606 OID 16980)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3553 (class 2606 OID 16870)
-- Name: complaints complaints_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_pkey PRIMARY KEY (id);


--
-- TOC entry 3577 (class 2606 OID 17032)
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- TOC entry 3559 (class 2606 OID 16910)
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);


--
-- TOC entry 3563 (class 2606 OID 16932)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3557 (class 2606 OID 16895)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3571 (class 2606 OID 16985)
-- Name: product_categories product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (product_id, category_id);


--
-- TOC entry 3547 (class 2606 OID 16829)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3561 (class 2606 OID 16922)
-- Name: promotions promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_pkey PRIMARY KEY (id);


--
-- TOC entry 3565 (class 2606 OID 16946)
-- Name: referrals referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_pkey PRIMARY KEY (id);


--
-- TOC entry 3551 (class 2606 OID 16856)
-- Name: rewards rewards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT rewards_pkey PRIMARY KEY (id);


--
-- TOC entry 3573 (class 2606 OID 17004)
-- Name: support_tickets support_tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.support_tickets
    ADD CONSTRAINT support_tickets_pkey PRIMARY KEY (id);


--
-- TOC entry 3549 (class 2606 OID 16839)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 3575 (class 2606 OID 17017)
-- Name: user_sessions user_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_sessions
    ADD CONSTRAINT user_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3545 (class 2606 OID 16820)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3582 (class 2606 OID 16883)
-- Name: addresses addresses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3588 (class 2606 OID 16969)
-- Name: cart_items cart_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3589 (class 2606 OID 16964)
-- Name: cart_items cart_items_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3581 (class 2606 OID 16871)
-- Name: complaints complaints_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3594 (class 2606 OID 17038)
-- Name: feedbacks feedbacks_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3595 (class 2606 OID 17033)
-- Name: feedbacks feedbacks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3584 (class 2606 OID 16911)
-- Name: logs logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3585 (class 2606 OID 16933)
-- Name: notifications notifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3583 (class 2606 OID 16896)
-- Name: payments payments_transaction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_transaction_id_fkey FOREIGN KEY (transaction_id) REFERENCES public.transactions(id);


--
-- TOC entry 3590 (class 2606 OID 16991)
-- Name: product_categories product_categories_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3591 (class 2606 OID 16986)
-- Name: product_categories product_categories_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3586 (class 2606 OID 16952)
-- Name: referrals referrals_referred_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_referred_by_fkey FOREIGN KEY (referred_by) REFERENCES public.users(id);


--
-- TOC entry 3587 (class 2606 OID 16947)
-- Name: referrals referrals_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3580 (class 2606 OID 16857)
-- Name: rewards rewards_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT rewards_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3592 (class 2606 OID 17005)
-- Name: support_tickets support_tickets_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.support_tickets
    ADD CONSTRAINT support_tickets_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3578 (class 2606 OID 16845)
-- Name: transactions transactions_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3579 (class 2606 OID 16840)
-- Name: transactions transactions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3593 (class 2606 OID 17018)
-- Name: user_sessions user_sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_sessions
    ADD CONSTRAINT user_sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2025-05-20 08:34:58 WIB

--
-- PostgreSQL database dump complete
--

