PGDMP     0                    |            car dealership    15.3    15.3 C    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    24590    car dealership    DATABASE     �   CREATE DATABASE "car dealership" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
     DROP DATABASE "car dealership";
                postgres    false            �            1259    24603 	   car brand    TABLE     l   CREATE TABLE public."car brand" (
    "id car brands" bigint NOT NULL,
    "Car brand" character varying
);
    DROP TABLE public."car brand";
       public         heap    postgres    false            �            1259    24621    cars    TABLE     *  CREATE TABLE public.cars (
    "id cars" bigint NOT NULL,
    stamp character varying,
    colot character varying,
    "Length" character varying,
    "Width" character varying,
    "Height" character varying,
    "Number of seats" character varying,
    "Maximum speed" character varying,
    "id engine type" character varying,
    "Engine displacement" character varying,
    "Fuel consumption" character varying,
    "Price" money,
    "In stock" character varying,
    "id supplier" bigint NOT NULL,
    "id fuel supply systems" bigint NOT NULL
);
    DROP TABLE public.cars;
       public         heap    postgres    false            �            1259    24600    contract    TABLE       CREATE TABLE public.contract (
    id bigint NOT NULL,
    date date,
    "id employee" bigint NOT NULL,
    "id the car" bigint NOT NULL,
    "id the client" bigint NOT NULL,
    "id payment method" bigint NOT NULL,
    "Execution status" character varying
);
    DROP TABLE public.contract;
       public         heap    postgres    false            �            1259    24591 	   customers    TABLE     �   CREATE TABLE public.customers (
    "id the client" bigint NOT NULL,
    "полное имя" character varying,
    "Telephone" character varying,
    "e-mail" character varying
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    24618    engine type    TABLE     q   CREATE TABLE public."engine type" (
    "id engine type" bigint NOT NULL,
    "engine Type" character varying
);
 !   DROP TABLE public."engine type";
       public         heap    postgres    false            �            1259    24597    fuel supply system    TABLE     �   CREATE TABLE public."fuel supply system" (
    "id fuel supply systems" bigint NOT NULL,
    "Fuel supply system" character varying
);
 (   DROP TABLE public."fuel supply system";
       public         heap    postgres    false            �            1259    24594    payment method    TABLE     �   CREATE TABLE public."payment method" (
    "id payment method" bigint NOT NULL,
    "Name of the payment method" character varying
);
 $   DROP TABLE public."payment method";
       public         heap    postgres    false            �            1259    24609 	   positions    TABLE     t   CREATE TABLE public.positions (
    "id positions" bigint NOT NULL,
    "Name of the position" character varying
);
    DROP TABLE public.positions;
       public         heap    postgres    false            �            1259    24606    staff    TABLE       CREATE TABLE public.staff (
    "id employee" bigint NOT NULL,
    "full name" character varying,
    "id positions" bigint NOT NULL,
    "Date of birth" date,
    "Date of employment" date,
    "Salary" money,
    "Telephone" character varying,
    "e-mail" character varying
);
    DROP TABLE public.staff;
       public         heap    postgres    false            �            1259    24615 	   suppliers    TABLE     �   CREATE TABLE public.suppliers (
    "id supplier" bigint NOT NULL,
    "Name of the supplier" character varying,
    "Contact information" character varying,
    "Note" character varying
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    24612 
   test drive    TABLE     �   CREATE TABLE public."test drive" (
    id bigint NOT NULL,
    date date,
    "time" character varying,
    "id cars" bigint NOT NULL,
    "Execution status" character varying,
    "Note" character varying
);
     DROP TABLE public."test drive";
       public         heap    postgres    false            �            1259    24624 4   Автомобили_Код автомобиля_seq    SEQUENCE     �   ALTER TABLE public.cars ALTER COLUMN "id cars" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Автомобили_Код автомобиля_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    24632    Договор_Код_seq    SEQUENCE     �   ALTER TABLE public.contract ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Договор_Код_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    24640 0   Должности_Код должности_seq    SEQUENCE     �   ALTER TABLE public.positions ALTER COLUMN "id positions" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Должности_Код должности_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    24648 (   Клиенты_Код клиента_seq    SEQUENCE     �   ALTER TABLE public.customers ALTER COLUMN "id the client" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Клиенты_Код клиента_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    24656 >   Марка автомобил_Код марки автом_seq    SEQUENCE       ALTER TABLE public."car brand" ALTER COLUMN "id car brands" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Марка автомобил_Код марки автом_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    24664 4   Поставщики_Код поставщика_seq    SEQUENCE     �   ALTER TABLE public.suppliers ALTER COLUMN "id supplier" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Поставщики_Код поставщика_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    24672 =   Система подачи _Код системы под_seq    SEQUENCE       ALTER TABLE public."fuel supply system" ALTER COLUMN "id fuel supply systems" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Система подачи _Код системы под_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    24680 4   Сотрудники_Код сотрудника_seq    SEQUENCE     �   ALTER TABLE public.staff ALTER COLUMN "id employee" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Сотрудники_Код сотрудника_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    24689 >   Способ оплаты_Код способа оплат_seq    SEQUENCE       ALTER TABLE public."payment method" ALTER COLUMN "id payment method" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Способ оплаты_Код способа оплат_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    24697    Тест драйв_Код_seq    SEQUENCE     �   ALTER TABLE public."test drive" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Тест драйв_Код_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    24705 >   Тип двигателя_Код типа двигател_seq    SEQUENCE       ALTER TABLE public."engine type" ALTER COLUMN "id engine type" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Тип двигателя_Код типа двигател_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            G          0    24603 	   car brand 
   TABLE DATA           C   COPY public."car brand" ("id car brands", "Car brand") FROM stdin;
    public          postgres    false    218   �Z       M          0    24621    cars 
   TABLE DATA           �   COPY public.cars ("id cars", stamp, colot, "Length", "Width", "Height", "Number of seats", "Maximum speed", "id engine type", "Engine displacement", "Fuel consumption", "Price", "In stock", "id supplier", "id fuel supply systems") FROM stdin;
    public          postgres    false    224   �Z       F          0    24600    contract 
   TABLE DATA           �   COPY public.contract (id, date, "id employee", "id the car", "id the client", "id payment method", "Execution status") FROM stdin;
    public          postgres    false    217   �Z       C          0    24591 	   customers 
   TABLE DATA           b   COPY public.customers ("id the client", "полное имя", "Telephone", "e-mail") FROM stdin;
    public          postgres    false    214   �Z       L          0    24618    engine type 
   TABLE DATA           H   COPY public."engine type" ("id engine type", "engine Type") FROM stdin;
    public          postgres    false    223   [       E          0    24597    fuel supply system 
   TABLE DATA           ^   COPY public."fuel supply system" ("id fuel supply systems", "Fuel supply system") FROM stdin;
    public          postgres    false    216   6[       D          0    24594    payment method 
   TABLE DATA           ]   COPY public."payment method" ("id payment method", "Name of the payment method") FROM stdin;
    public          postgres    false    215   S[       I          0    24609 	   positions 
   TABLE DATA           K   COPY public.positions ("id positions", "Name of the position") FROM stdin;
    public          postgres    false    220   p[       H          0    24606    staff 
   TABLE DATA           �   COPY public.staff ("id employee", "full name", "id positions", "Date of birth", "Date of employment", "Salary", "Telephone", "e-mail") FROM stdin;
    public          postgres    false    219   �[       K          0    24615 	   suppliers 
   TABLE DATA           i   COPY public.suppliers ("id supplier", "Name of the supplier", "Contact information", "Note") FROM stdin;
    public          postgres    false    222   �[       J          0    24612 
   test drive 
   TABLE DATA           _   COPY public."test drive" (id, date, "time", "id cars", "Execution status", "Note") FROM stdin;
    public          postgres    false    221   �[       _           0    0 4   Автомобили_Код автомобиля_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."Автомобили_Код автомобиля_seq"', 1, false);
          public          postgres    false    225            `           0    0    Договор_Код_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Договор_Код_seq"', 1, false);
          public          postgres    false    226            a           0    0 0   Должности_Код должности_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Должности_Код должности_seq"', 1, false);
          public          postgres    false    227            b           0    0 (   Клиенты_Код клиента_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Клиенты_Код клиента_seq"', 1, false);
          public          postgres    false    228            c           0    0 >   Марка автомобил_Код марки автом_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Марка автомобил_Код марки автом_seq"', 1, false);
          public          postgres    false    229            d           0    0 4   Поставщики_Код поставщика_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."Поставщики_Код поставщика_seq"', 1, false);
          public          postgres    false    230            e           0    0 =   Система подачи _Код системы под_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public."Система подачи _Код системы под_seq"', 1, false);
          public          postgres    false    231            f           0    0 4   Сотрудники_Код сотрудника_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."Сотрудники_Код сотрудника_seq"', 1, false);
          public          postgres    false    232            g           0    0 >   Способ оплаты_Код способа оплат_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Способ оплаты_Код способа оплат_seq"', 1, false);
          public          postgres    false    233            h           0    0    Тест драйв_Код_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Тест драйв_Код_seq"', 1, false);
          public          postgres    false    234            i           0    0 >   Тип двигателя_Код типа двигател_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Тип двигателя_Код типа двигател_seq"', 1, false);
          public          postgres    false    235            �           2606    24647 !   positions Должности_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT "Должности_pkey" PRIMARY KEY ("id positions");
 M   ALTER TABLE ONLY public.positions DROP CONSTRAINT "Должности_pkey";
       public            postgres    false    220            �           2606    24655    customers Клиенты_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("id the client");
 I   ALTER TABLE ONLY public.customers DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    214            �           2606    24639    contract Код 
   CONSTRAINT     O   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "Код" PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.contract DROP CONSTRAINT "Код";
       public            postgres    false    217            �           2606    24631     cars Код автомобиля 
   CONSTRAINT     g   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT "Код автомобиля" PRIMARY KEY ("id cars");
 L   ALTER TABLE ONLY public.cars DROP CONSTRAINT "Код автомобиля";
       public            postgres    false    224            �           2606    24663 .   car brand Марка автомобиля_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."car brand"
    ADD CONSTRAINT "Марка автомобиля_pkey" PRIMARY KEY ("id car brands");
 \   ALTER TABLE ONLY public."car brand" DROP CONSTRAINT "Марка автомобиля_pkey";
       public            postgres    false    218            �           2606    24671 #   suppliers Поставщики_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "Поставщики_pkey" PRIMARY KEY ("id supplier");
 O   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT "Поставщики_pkey";
       public            postgres    false    222            �           2606    24679 B   fuel supply system Система подачи топлива_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."fuel supply system"
    ADD CONSTRAINT "Система подачи топлива_pkey" PRIMARY KEY ("id fuel supply systems");
 p   ALTER TABLE ONLY public."fuel supply system" DROP CONSTRAINT "Система подачи топлива_pkey";
       public            postgres    false    216            �           2606    24687    staff Сотрудники_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("id employee");
 K   ALTER TABLE ONLY public.staff DROP CONSTRAINT "Сотрудники_pkey";
       public            postgres    false    219            �           2606    24696 -   payment method Способ оплаты_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."payment method"
    ADD CONSTRAINT "Способ оплаты_pkey" PRIMARY KEY ("id payment method");
 [   ALTER TABLE ONLY public."payment method" DROP CONSTRAINT "Способ оплаты_pkey";
       public            postgres    false    215            �           2606    24704 #   test drive Тест драйв_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."test drive"
    ADD CONSTRAINT "Тест драйв_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."test drive" DROP CONSTRAINT "Тест драйв_pkey";
       public            postgres    false    221            �           2606    24712 *   engine type Тип двигателя_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."engine type"
    ADD CONSTRAINT "Тип двигателя_pkey" PRIMARY KEY ("id engine type");
 X   ALTER TABLE ONLY public."engine type" DROP CONSTRAINT "Тип двигателя_pkey";
       public            postgres    false    223            �           2606    24728 $   contract Код автомобиля    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "Код автомобиля" FOREIGN KEY ("id the car") REFERENCES public.cars("id cars") NOT VALID;
 P   ALTER TABLE ONLY public.contract DROP CONSTRAINT "Код автомобиля";
       public          postgres    false    224    217    3244            �           2606    24748 &   test drive Код автомобиля    FK CONSTRAINT     �   ALTER TABLE ONLY public."test drive"
    ADD CONSTRAINT "Код автомобиля" FOREIGN KEY ("id cars") REFERENCES public.cars("id cars") NOT VALID;
 T   ALTER TABLE ONLY public."test drive" DROP CONSTRAINT "Код автомобиля";
       public          postgres    false    221    224    3244            �           2606    24743    staff Код должности    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT "Код должности" FOREIGN KEY ("id positions") REFERENCES public.positions("id positions") NOT VALID;
 K   ALTER TABLE ONLY public.staff DROP CONSTRAINT "Код должности";
       public          postgres    false    3236    219    220            �           2606    24733    contract Код клиента    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "Код клиента" FOREIGN KEY ("id the client") REFERENCES public.customers("id the client") NOT VALID;
 J   ALTER TABLE ONLY public.contract DROP CONSTRAINT "Код клиента";
       public          postgres    false    214    3224    217            �           2606    24713     cars Код поставщика    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT "Код поставщика" FOREIGN KEY ("id supplier") REFERENCES public.suppliers("id supplier") MATCH FULL NOT VALID;
 L   ALTER TABLE ONLY public.cars DROP CONSTRAINT "Код поставщика";
       public          postgres    false    222    3240    224            �           2606    24718 6   cars Код системы подачи топлива    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT "Код системы подачи топлива" FOREIGN KEY ("id fuel supply systems") REFERENCES public."fuel supply system"("id fuel supply systems") NOT VALID;
 b   ALTER TABLE ONLY public.cars DROP CONSTRAINT "Код системы подачи топлива";
       public          postgres    false    224    3228    216            �           2606    24723 $   contract Код сотрудника    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "Код сотрудника" FOREIGN KEY ("id employee") REFERENCES public.staff("id employee") NOT VALID;
 P   ALTER TABLE ONLY public.contract DROP CONSTRAINT "Код сотрудника";
       public          postgres    false    3234    217    219            �           2606    24738 +   contract Код способа оплаты    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "Код способа оплаты" FOREIGN KEY ("id payment method") REFERENCES public."payment method"("id payment method") NOT VALID;
 W   ALTER TABLE ONLY public.contract DROP CONSTRAINT "Код способа оплаты";
       public          postgres    false    217    3226    215            G      x������ � �      M      x������ � �      F      x������ � �      C      x������ � �      L      x������ � �      E      x������ � �      D      x������ � �      I      x������ � �      H      x������ � �      K      x������ � �      J      x������ � �     