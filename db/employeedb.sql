PGDMP     )                    z        
   employeedb    14.4    14.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394 
   employeedb    DATABASE     n   CREATE DATABASE employeedb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE employeedb;
                postgres    false            ?           0    0    DATABASE employeedb    COMMENT     9   COMMENT ON DATABASE employeedb IS 'db for java mastery';
                   postgres    false    3313            ?            1259    16395    employee    TABLE     ?   CREATE TABLE public.employee (
    first_name character varying,
    last_name character varying,
    department_id bigint,
    job_title character varying,
    employee_id integer NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            ?            1259    16403    employee_employee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    209            ?           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    210            \           2604    16404    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    210    209            ?          0    16395    employee 
   TABLE DATA           `   COPY public.employee (first_name, last_name, department_id, job_title, employee_id) FROM stdin;
    public          postgres    false    209          ?           0    0    employee_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employee_id_seq', 5, true);
          public          postgres    false    210            ^           2606    16406    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    209            ?   w   x?5ʱ
?0???ܧ?	??\+"6?Ů.??`LJ?|{??|??O?S#V?ĜadfrD?g??d??????ď?D?ʃ-?ń?ظ???͗???z?	??\u?`????A?G??8%?     