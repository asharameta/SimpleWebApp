PGDMP         /                z        
   employeedb    14.4    14.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 
   employeedb    DATABASE     n   CREATE DATABASE employeedb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE employeedb;
                postgres    false            �           0    0    DATABASE employeedb    COMMENT     9   COMMENT ON DATABASE employeedb IS 'db for java mastery';
                   postgres    false    3310            �            1259    16395    employee    TABLE     �   CREATE TABLE public.employee (
    employee_id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    department_id bigint,
    job_title character varying
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �          0    16395    employee 
   TABLE DATA           `   COPY public.employee (employee_id, first_name, last_name, department_id, job_title) FROM stdin;
    public          postgres    false    209   �       \           2606    16401    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    209            �   v   x�=�1
1��O�	Ĩ�+"k��mm�a�1Y�M��-l�aL�Ke�!Vt8Ɯ�lper��7١��Ϭ��ė.���+[��Il�Bx��KR��z�-��I�M��҆�ZD>&m     