PGDMP     2    9            
    z            siakad2    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16486    siakad2    DATABASE     k   CREATE DATABASE siakad2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE siakad2;
                postgres    false            �            1259    16488 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(30)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    16487    mahasiswa_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210            �           0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            \           2604    16491    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    16488 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   �
       �           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209            ^           2606    16493    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            �   W   x�3224�0�.M�Tp,O��L���K�M*�K�2I�s����R�2�29�S�R�Ar�&�A��ى
��`����I�\1z\\\ ���     