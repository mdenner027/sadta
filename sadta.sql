toc.dat                                                                                             0000600 0004000 0002000 00000047514 13657224136 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )                    x            sadta    10.12    10.12 @    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         Z           1262    25026    sadta    DATABASE     �   CREATE DATABASE sadta WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE sadta;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         [           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         \           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    25027    casos    TABLE     �   CREATE TABLE public.casos (
    codigo_caso bigint NOT NULL,
    data_registro_caso timestamp without time zone,
    tempo_sintomas_caso integer
);
    DROP TABLE public.casos;
       public         postgres    false    3         �            1259    25032    comorbidades    TABLE     �   CREATE TABLE public.comorbidades (
    codigo_comorbidade bigint NOT NULL,
    iri_comorbidade character varying(255) NOT NULL,
    nome_comorbidade character varying(255) NOT NULL
);
     DROP TABLE public.comorbidades;
       public         postgres    false    3         �            1259    25040    comorbidades_casos_comorbidade    TABLE     �   CREATE TABLE public.comorbidades_casos_comorbidade (
    comorbidades_caso_codigo_comorbidade bigint NOT NULL,
    casos_comorbidade_codigo_caso bigint NOT NULL
);
 2   DROP TABLE public.comorbidades_casos_comorbidade;
       public         postgres    false    3         �            1259    25115    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    3         �            1259    25227 	   ontologia    TABLE     �   CREATE TABLE public.ontologia (
    codigo_ontologia bigint NOT NULL,
    data_ontologia timestamp without time zone,
    versao_ontologia bytea
);
    DROP TABLE public.ontologia;
       public         postgres    false    3         �            1259    25051    sintomas    TABLE     �   CREATE TABLE public.sintomas (
    codigo_sintoma bigint NOT NULL,
    iri_sintoma character varying(255) NOT NULL,
    nome_sintoma character varying(255) NOT NULL,
    tipo_sintoma character varying(255) NOT NULL
);
    DROP TABLE public.sintomas;
       public         postgres    false    3         �            1259    25059    sintomas_casos_sintoma    TABLE     �   CREATE TABLE public.sintomas_casos_sintoma (
    sintomas_caso_codigo_sintoma bigint NOT NULL,
    casos_sintoma_codigo_caso bigint NOT NULL
);
 *   DROP TABLE public.sintomas_casos_sintoma;
       public         postgres    false    3         �            1259    25062 	   situacoes    TABLE     �   CREATE TABLE public.situacoes (
    codigo_situacao bigint NOT NULL,
    iri_situacao character varying(255) NOT NULL,
    nome_situacao character varying(255) NOT NULL
);
    DROP TABLE public.situacoes;
       public         postgres    false    3         �            1259    25070    situacoes_casos_situacao    TABLE     �   CREATE TABLE public.situacoes_casos_situacao (
    situacoes_caso_codigo_situacao bigint NOT NULL,
    casos_situacao_codigo_caso bigint NOT NULL
);
 ,   DROP TABLE public.situacoes_casos_situacao;
       public         postgres    false    3         �            1259    25073    tipos_paciente    TABLE     �   CREATE TABLE public.tipos_paciente (
    codigo_tipo_paciente bigint NOT NULL,
    iri_tipo_paciente character varying(255) NOT NULL,
    nome_tipo_paciente character varying(255) NOT NULL
);
 "   DROP TABLE public.tipos_paciente;
       public         postgres    false    3         �            1259    25081 "   tipos_paciente_casos_tipo_paciente    TABLE     �   CREATE TABLE public.tipos_paciente_casos_tipo_paciente (
    tipos_paciente_caso_codigo_tipo_paciente bigint NOT NULL,
    casos_tipo_paciente_codigo_caso bigint NOT NULL
);
 6   DROP TABLE public.tipos_paciente_casos_tipo_paciente;
       public         postgres    false    3         �            1259    25084    transtornos    TABLE     �   CREATE TABLE public.transtornos (
    codigo_transtorno bigint NOT NULL,
    iri_transtorno character varying(255) NOT NULL,
    nome_transtorno character varying(255) NOT NULL
);
    DROP TABLE public.transtornos;
       public         postgres    false    3         �            1259    25092    transtornos_casos_transtorno    TABLE     �   CREATE TABLE public.transtornos_casos_transtorno (
    transtornos_caso_codigo_transtorno bigint NOT NULL,
    casos_transtorno_codigo_caso bigint NOT NULL
);
 0   DROP TABLE public.transtornos_casos_transtorno;
       public         postgres    false    3         R           2613    25175    25175    BLOB     &   SELECT pg_catalog.lo_create('25175');
 &   SELECT pg_catalog.lo_unlink('25175');
             postgres    false         S           2613    25203    25203    BLOB     &   SELECT pg_catalog.lo_create('25203');
 &   SELECT pg_catalog.lo_unlink('25203');
             postgres    false         E          0    25027    casos 
   TABLE DATA               U   COPY public.casos (codigo_caso, data_registro_caso, tempo_sintomas_caso) FROM stdin;
    public       postgres    false    196       2885.dat F          0    25032    comorbidades 
   TABLE DATA               ]   COPY public.comorbidades (codigo_comorbidade, iri_comorbidade, nome_comorbidade) FROM stdin;
    public       postgres    false    197       2886.dat G          0    25040    comorbidades_casos_comorbidade 
   TABLE DATA               }   COPY public.comorbidades_casos_comorbidade (comorbidades_caso_codigo_comorbidade, casos_comorbidade_codigo_caso) FROM stdin;
    public       postgres    false    198       2887.dat Q          0    25227 	   ontologia 
   TABLE DATA               W   COPY public.ontologia (codigo_ontologia, data_ontologia, versao_ontologia) FROM stdin;
    public       postgres    false    208       2897.dat H          0    25051    sintomas 
   TABLE DATA               [   COPY public.sintomas (codigo_sintoma, iri_sintoma, nome_sintoma, tipo_sintoma) FROM stdin;
    public       postgres    false    199       2888.dat I          0    25059    sintomas_casos_sintoma 
   TABLE DATA               i   COPY public.sintomas_casos_sintoma (sintomas_caso_codigo_sintoma, casos_sintoma_codigo_caso) FROM stdin;
    public       postgres    false    200       2889.dat J          0    25062 	   situacoes 
   TABLE DATA               Q   COPY public.situacoes (codigo_situacao, iri_situacao, nome_situacao) FROM stdin;
    public       postgres    false    201       2890.dat K          0    25070    situacoes_casos_situacao 
   TABLE DATA               n   COPY public.situacoes_casos_situacao (situacoes_caso_codigo_situacao, casos_situacao_codigo_caso) FROM stdin;
    public       postgres    false    202       2891.dat L          0    25073    tipos_paciente 
   TABLE DATA               e   COPY public.tipos_paciente (codigo_tipo_paciente, iri_tipo_paciente, nome_tipo_paciente) FROM stdin;
    public       postgres    false    203       2892.dat M          0    25081 "   tipos_paciente_casos_tipo_paciente 
   TABLE DATA               �   COPY public.tipos_paciente_casos_tipo_paciente (tipos_paciente_caso_codigo_tipo_paciente, casos_tipo_paciente_codigo_caso) FROM stdin;
    public       postgres    false    204       2893.dat N          0    25084    transtornos 
   TABLE DATA               Y   COPY public.transtornos (codigo_transtorno, iri_transtorno, nome_transtorno) FROM stdin;
    public       postgres    false    205       2894.dat O          0    25092    transtornos_casos_transtorno 
   TABLE DATA               x   COPY public.transtornos_casos_transtorno (transtornos_caso_codigo_transtorno, casos_transtorno_codigo_caso) FROM stdin;
    public       postgres    false    206       2895.dat ]           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 3, true);
            public       postgres    false    207         T          0    0    BLOBS    BLOBS                                false       2900.dat �
           2606    25031    casos casos_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.casos
    ADD CONSTRAINT casos_pkey PRIMARY KEY (codigo_caso);
 :   ALTER TABLE ONLY public.casos DROP CONSTRAINT casos_pkey;
       public         postgres    false    196         �
           2606    25039    comorbidades comorbidades_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT comorbidades_pkey PRIMARY KEY (codigo_comorbidade);
 H   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT comorbidades_pkey;
       public         postgres    false    197         �
           2606    25234    ontologia ontologia_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ontologia
    ADD CONSTRAINT ontologia_pkey PRIMARY KEY (codigo_ontologia);
 B   ALTER TABLE ONLY public.ontologia DROP CONSTRAINT ontologia_pkey;
       public         postgres    false    208         �
           2606    25058    sintomas sintomas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT sintomas_pkey PRIMARY KEY (codigo_sintoma);
 @   ALTER TABLE ONLY public.sintomas DROP CONSTRAINT sintomas_pkey;
       public         postgres    false    199         �
           2606    25069    situacoes situacoes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT situacoes_pkey PRIMARY KEY (codigo_situacao);
 B   ALTER TABLE ONLY public.situacoes DROP CONSTRAINT situacoes_pkey;
       public         postgres    false    201         �
           2606    25080 "   tipos_paciente tipos_paciente_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT tipos_paciente_pkey PRIMARY KEY (codigo_tipo_paciente);
 L   ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT tipos_paciente_pkey;
       public         postgres    false    203         �
           2606    25091    transtornos transtornos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT transtornos_pkey PRIMARY KEY (codigo_transtorno);
 F   ALTER TABLE ONLY public.transtornos DROP CONSTRAINT transtornos_pkey;
       public         postgres    false    205         �
           2606    25098 )   comorbidades uk_3vxvcnd2501ps9cgibjvp7hli 
   CONSTRAINT     p   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT uk_3vxvcnd2501ps9cgibjvp7hli UNIQUE (nome_comorbidade);
 S   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT uk_3vxvcnd2501ps9cgibjvp7hli;
       public         postgres    false    197         �
           2606    25114 (   transtornos uk_7ru0l8jlctb2ri3uu3vfip503 
   CONSTRAINT     n   ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT uk_7ru0l8jlctb2ri3uu3vfip503 UNIQUE (nome_transtorno);
 R   ALTER TABLE ONLY public.transtornos DROP CONSTRAINT uk_7ru0l8jlctb2ri3uu3vfip503;
       public         postgres    false    205         �
           2606    25110 +   tipos_paciente uk_89hh0lxwd8t9smn8ir9si198o 
   CONSTRAINT     t   ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT uk_89hh0lxwd8t9smn8ir9si198o UNIQUE (nome_tipo_paciente);
 U   ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT uk_89hh0lxwd8t9smn8ir9si198o;
       public         postgres    false    203         �
           2606    25096 )   comorbidades uk_fjotqve1odc6gf17lb1j0kry3 
   CONSTRAINT     o   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT uk_fjotqve1odc6gf17lb1j0kry3 UNIQUE (iri_comorbidade);
 S   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT uk_fjotqve1odc6gf17lb1j0kry3;
       public         postgres    false    197         �
           2606    25102 %   sintomas uk_jwwfk8yol1bvef4j0ooo4bnh3 
   CONSTRAINT     h   ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT uk_jwwfk8yol1bvef4j0ooo4bnh3 UNIQUE (nome_sintoma);
 O   ALTER TABLE ONLY public.sintomas DROP CONSTRAINT uk_jwwfk8yol1bvef4j0ooo4bnh3;
       public         postgres    false    199         �
           2606    25112 (   transtornos uk_lr0q6nekf1dxyd3ww1jwlcdq5 
   CONSTRAINT     m   ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT uk_lr0q6nekf1dxyd3ww1jwlcdq5 UNIQUE (iri_transtorno);
 R   ALTER TABLE ONLY public.transtornos DROP CONSTRAINT uk_lr0q6nekf1dxyd3ww1jwlcdq5;
       public         postgres    false    205         �
           2606    25108 +   tipos_paciente uk_m6o9a8frhh1f085pdfxvn3359 
   CONSTRAINT     s   ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT uk_m6o9a8frhh1f085pdfxvn3359 UNIQUE (iri_tipo_paciente);
 U   ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT uk_m6o9a8frhh1f085pdfxvn3359;
       public         postgres    false    203         �
           2606    25106 &   situacoes uk_nql81wq9wvia0k0id0asvyr8y 
   CONSTRAINT     j   ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT uk_nql81wq9wvia0k0id0asvyr8y UNIQUE (nome_situacao);
 P   ALTER TABLE ONLY public.situacoes DROP CONSTRAINT uk_nql81wq9wvia0k0id0asvyr8y;
       public         postgres    false    201         �
           2606    25100 %   sintomas uk_o2x70ly8thlub7up6oyrwo84c 
   CONSTRAINT     g   ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT uk_o2x70ly8thlub7up6oyrwo84c UNIQUE (iri_sintoma);
 O   ALTER TABLE ONLY public.sintomas DROP CONSTRAINT uk_o2x70ly8thlub7up6oyrwo84c;
       public         postgres    false    199         �
           2606    25104 &   situacoes uk_tipbwnu8rdidjga0fyp63qwqs 
   CONSTRAINT     i   ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT uk_tipbwnu8rdidjga0fyp63qwqs UNIQUE (iri_situacao);
 P   ALTER TABLE ONLY public.situacoes DROP CONSTRAINT uk_tipbwnu8rdidjga0fyp63qwqs;
       public         postgres    false    201         �
           2606    25152 >   tipos_paciente_casos_tipo_paciente fk1n6e18dqux9e35eofdeef5iyd    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente
    ADD CONSTRAINT fk1n6e18dqux9e35eofdeef5iyd FOREIGN KEY (tipos_paciente_caso_codigo_tipo_paciente) REFERENCES public.tipos_paciente(codigo_tipo_paciente);
 h   ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente DROP CONSTRAINT fk1n6e18dqux9e35eofdeef5iyd;
       public       postgres    false    203    204    2741         �
           2606    25162 8   transtornos_casos_transtorno fk2alfd0ixino5svrhp5tx08c21    FK CONSTRAINT     �   ALTER TABLE ONLY public.transtornos_casos_transtorno
    ADD CONSTRAINT fk2alfd0ixino5svrhp5tx08c21 FOREIGN KEY (transtornos_caso_codigo_transtorno) REFERENCES public.transtornos(codigo_transtorno);
 b   ALTER TABLE ONLY public.transtornos_casos_transtorno DROP CONSTRAINT fk2alfd0ixino5svrhp5tx08c21;
       public       postgres    false    205    206    2747         �
           2606    25117 9   comorbidades_casos_comorbidade fk631ud4vvcd9pnfn3bqqwdgxc    FK CONSTRAINT     �   ALTER TABLE ONLY public.comorbidades_casos_comorbidade
    ADD CONSTRAINT fk631ud4vvcd9pnfn3bqqwdgxc FOREIGN KEY (casos_comorbidade_codigo_caso) REFERENCES public.casos(codigo_caso);
 c   ALTER TABLE ONLY public.comorbidades_casos_comorbidade DROP CONSTRAINT fk631ud4vvcd9pnfn3bqqwdgxc;
       public       postgres    false    198    2721    196         �
           2606    25122 :   comorbidades_casos_comorbidade fk7vhesdwsvhm3xrs9j51x0davp    FK CONSTRAINT     �   ALTER TABLE ONLY public.comorbidades_casos_comorbidade
    ADD CONSTRAINT fk7vhesdwsvhm3xrs9j51x0davp FOREIGN KEY (comorbidades_caso_codigo_comorbidade) REFERENCES public.comorbidades(codigo_comorbidade);
 d   ALTER TABLE ONLY public.comorbidades_casos_comorbidade DROP CONSTRAINT fk7vhesdwsvhm3xrs9j51x0davp;
       public       postgres    false    2723    197    198         �
           2606    25147 >   tipos_paciente_casos_tipo_paciente fka0b8sp7ae12r08onre6wosdvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente
    ADD CONSTRAINT fka0b8sp7ae12r08onre6wosdvw FOREIGN KEY (casos_tipo_paciente_codigo_caso) REFERENCES public.casos(codigo_caso);
 h   ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente DROP CONSTRAINT fka0b8sp7ae12r08onre6wosdvw;
       public       postgres    false    204    196    2721         �
           2606    25137 4   situacoes_casos_situacao fka5qt2708w69bvo9vqlwo6awfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.situacoes_casos_situacao
    ADD CONSTRAINT fka5qt2708w69bvo9vqlwo6awfk FOREIGN KEY (casos_situacao_codigo_caso) REFERENCES public.casos(codigo_caso);
 ^   ALTER TABLE ONLY public.situacoes_casos_situacao DROP CONSTRAINT fka5qt2708w69bvo9vqlwo6awfk;
       public       postgres    false    196    202    2721         �
           2606    25142 4   situacoes_casos_situacao fke9fyndbcbtghfwm63v8q4mq2g    FK CONSTRAINT     �   ALTER TABLE ONLY public.situacoes_casos_situacao
    ADD CONSTRAINT fke9fyndbcbtghfwm63v8q4mq2g FOREIGN KEY (situacoes_caso_codigo_situacao) REFERENCES public.situacoes(codigo_situacao);
 ^   ALTER TABLE ONLY public.situacoes_casos_situacao DROP CONSTRAINT fke9fyndbcbtghfwm63v8q4mq2g;
       public       postgres    false    2735    202    201         �
           2606    25157 8   transtornos_casos_transtorno fkjbk0s0rhrckppc5m4kpdgxuyp    FK CONSTRAINT     �   ALTER TABLE ONLY public.transtornos_casos_transtorno
    ADD CONSTRAINT fkjbk0s0rhrckppc5m4kpdgxuyp FOREIGN KEY (casos_transtorno_codigo_caso) REFERENCES public.casos(codigo_caso);
 b   ALTER TABLE ONLY public.transtornos_casos_transtorno DROP CONSTRAINT fkjbk0s0rhrckppc5m4kpdgxuyp;
       public       postgres    false    206    2721    196         �
           2606    25132 2   sintomas_casos_sintoma fkk16n3p14gx3q5c9k5okt2986o    FK CONSTRAINT     �   ALTER TABLE ONLY public.sintomas_casos_sintoma
    ADD CONSTRAINT fkk16n3p14gx3q5c9k5okt2986o FOREIGN KEY (sintomas_caso_codigo_sintoma) REFERENCES public.sintomas(codigo_sintoma);
 \   ALTER TABLE ONLY public.sintomas_casos_sintoma DROP CONSTRAINT fkk16n3p14gx3q5c9k5okt2986o;
       public       postgres    false    199    2729    200         �
           2606    25127 2   sintomas_casos_sintoma fkshn9w1tb0yupqgqh7x4baoyb9    FK CONSTRAINT     �   ALTER TABLE ONLY public.sintomas_casos_sintoma
    ADD CONSTRAINT fkshn9w1tb0yupqgqh7x4baoyb9 FOREIGN KEY (casos_sintoma_codigo_caso) REFERENCES public.casos(codigo_caso);
 \   ALTER TABLE ONLY public.sintomas_casos_sintoma DROP CONSTRAINT fkshn9w1tb0yupqgqh7x4baoyb9;
       public       postgres    false    2721    200    196                                                                                                                                                                                            2885.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2886.dat                                                                                            0000600 0004000 0002000 00000002037 13657224136 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	no_comorbidities_related	Sem comorbidades associadas
2	possible_relation_with_other_anxiety_disorders	Possível relação com outros transtornos de ansiedade
3	possible_relation_with_dependent_personality_disorder	Possível relação com o transtorno de personalidade dependente
4	possible_relation_with_avoidant_personality_disorder	Possível relação com o transtorno de personalidade evitativa
5	possible_relation_with_obsessive_compulsive_personality_disorder	Possível relação com o transtorno de personalidade obsessiva-compulsiva
6	possible_relation_with_somatic_symptoms_disorder	Possível relação com o transtorno de sintomas somáticos
7	possible_relation_with_major_depressive_disorder	Possível relação com o transtorno depressivo maior
8	possible_relation_with_dysmorphic_body_disorder	Possível relação com o transtorno dismórfico corporal
9	possible_relation_with_bipolar_disorders	Possível relação com transtornos bipolares
10	possible_relation_with_depressive_disorders	Possível relação com transtornos depressivos
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2887.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2897.dat                                                                                            0000600 0004000 0002000 00000634504 13657224136 0014310 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2020-05-09 17:06:33.354904	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0a3c4f6e746f6c6f677920786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030322f30372f6f776c23220a2020202020786d6c3a626173653d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d3439220a2020202020786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323220a2020202020786d6c6e733a786d6c3d22687474703a2f2f7777772e77332e6f72672f584d4c2f313939382f6e616d657370616365220a2020202020786d6c6e733a7873643d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123220a2020202020786d6c6e733a726466733d22687474703a2f2f7777772e77332e6f72672f323030302f30312f7264662d736368656d6123220a20202020206f6e746f6c6f67794952493d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d3439220a202020202076657273696f6e4952493d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d3439223e0a202020203c507265666978206e616d653d2222204952493d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d3439222f3e0a202020203c507265666978206e616d653d226f776c22204952493d22687474703a2f2f7777772e77332e6f72672f323030322f30372f6f776c23222f3e0a202020203c507265666978206e616d653d2272646622204952493d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323222f3e0a202020203c507265666978206e616d653d22786d6c22204952493d22687474703a2f2f7777772e77332e6f72672f584d4c2f313939382f6e616d657370616365222f3e0a202020203c507265666978206e616d653d2278736422204952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123222f3e0a202020203c507265666978206e616d653d227264667322204952493d22687474703a2f2f7777772e77332e6f72672f323030302f30312f7264662d736368656d6123222f3e0a202020203c507265666978206e616d653d226469736f726465727322204952493d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d3439222f3e0a202020203c507265666978206e616d653d22756e7469746c65642d6f6e746f6c6f67792d343922204952493d22687474703a2f2f7777772e73656d616e7469637765622e6f72672f6d61782f6f6e746f6c6f676965732f323031392f31302f756e7469746c65642d6f6e746f6c6f67792d343923222f3e0a202020203c416e6e6f746174696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4c69746572616c3e417574686f723a204d61782044656e6e657220542e2064612053696c76613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e3e0a202020203c416e6e6f746174696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4c69746572616c3e5468652070726573656e74206f6e746f6c6f67792061696d73206f6e20686f7720746f2068656c702070737963686f6c6f676973747320616e64207073796368696174726973747320696e2074686520616e7869657479206469736f726465727320646961676e6f7369732070726f636573732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236162646f6d696e616c5f646973636f6d666f7274222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223616e616c65707365222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222362655f7261746564222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223636174617374726f7068655f73656e736174696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222363686f6b696e675f73656e736174696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223636f6d70756c73696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236461696c795f736974756174696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222364697a7a696e657373222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222365786167676572617465645f73746172746c655f726573706f6e7365222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236578706f737572655f746f5f686967685f7374726573735f6c6f6164222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222366617469676162696c697479222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223666561725f6f665f6c6f73696e675f636f6e74726f6c222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223666561725f746f5f646965222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236672657175656e745f6e696768746d61726573222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223676164222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236879706572766967696c616e6365222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223696d70756c736976656e657373222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223696e637265617365645f686561727462656174222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223696e74656e73655f616e6775697368222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223696e747275736976655f616e645f726563757272656e745f6d656d6f72696573222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223696e747275736976655f74686f7567687473222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236972726174696f6e616c5f66656172222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236d656e74616c5f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236d7573636c655f6163686573222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236e6175736561222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236e6572766f75736e657373222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236e6f5f636f6d6f7262696469746965735f72656c61746564222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236f6273657373696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22236f6364222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370616369656e74655f636f6d5f6461646f735f696e76616c69646f73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706172657374686573696173222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706572666f726d616e63655f736974756174696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f61766f6964616e745f706572736f6e616c6974795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6269706f6c61725f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f646570656e64656e745f706572736f6e616c6974795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f646570726573736976655f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6479736d6f72706869635f626f64795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6d616a6f725f646570726573736976655f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6f62736573736976655f636f6d70756c736976655f706572736f6e616c6974795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6f746865725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f736f6d617469635f73796d70746f6d735f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222370747364222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22237075706c69635f736974756174696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223726570657469746976655f6265686176696f7273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223726573746c6573736e657373222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222372697475616c69737469635f6265686176696f72222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223736f6369616c5f6576656e7473222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223736f6369616c5f696e746572616374696f6e73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22237377656174696e67222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223747261756d617469635f657870657269656e6365222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d22237472656d6f7273222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c436c617373204952493d2223766f6d6974696e67222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f636861726163746572697374696373222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f616e78696574795f6469736f726465725f6f66222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4e616d6564496e646976696475616c204952493d2223636f6d6f72626964616465222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4e616d6564496e646976696475616c204952493d222370616369656e7465222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c4e616d6564496e646976696475616c204952493d22237472616e73746f726e6f222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4465636c61726174696f6e3e0a20202020202020203c44617461747970652061626272657669617465644952493d227264663a6c616e67537472696e67222f3e0a202020203c2f4465636c61726174696f6e3e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236461696c795f736974756174696f6e73222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578706f737572655f746f5f686967685f7374726573735f6c6f6164222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a6563744d696e43617264696e616c6974792063617264696e616c6974793d2233223e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222366617469676162696c697479222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236d7573636c655f6163686573222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236e6572766f75736e657373222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223726573746c6573736e657373222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a6563744d696e43617264696e616c6974793e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d22236e6f5f636f6d6f7262696469746965735f72656c61746564222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a202020202020202020202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a20202020202020202020202020202020202020203c436c617373204952493d2223636f6d70756c73696f6e73222f3e0a20202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223696d70756c736976656e657373222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223696e747275736976655f74686f7567687473222f3e0a20202020202020202020202020202020202020203c436c617373204952493d22236f6273657373696f6e73222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223726570657469746976655f6265686176696f7273222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222372697475616c69737469635f6265686176696f72222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370616369656e74655f636f6d5f6461646f735f696e76616c69646f73222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e4578636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d61784578636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374556e696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374436f6d706c656d656e744f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020202020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374436f6d706c656d656e744f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020202020202020202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a6563744d696e43617264696e616c6974792063617264696e616c6974793d2234223e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236162646f6d696e616c5f646973636f6d666f7274222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222363686f6b696e675f73656e736174696f6e222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222364697a7a696e657373222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223666561725f6f665f6c6f73696e675f636f6e74726f6c222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223666561725f746f5f646965222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223696e637265617365645f686561727462656174222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223696e74656e73655f616e6775697368222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236e6175736561222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223706172657374686573696173222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22237377656174696e67222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22237472656d6f7273222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223766f6d6974696e67222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a6563744d696e43617264696e616c6974793e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223676164222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e363c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d22236f6364222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a202020202020202020202020202020203c436c617373204952493d222370747364222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a20202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a20202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a2020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e303c2f4c69746572616c3e0a20202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a2020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a20202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a20202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a2020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a20202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a2020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e363c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370617469656e74222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d696e496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e363c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c44617461536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020202020202020202020202020203c44617461747970655265737472696374696f6e3e0a2020202020202020202020202020202020202020202020203c44617461747970652061626272657669617465644952493d227873643a696e74222f3e0a2020202020202020202020202020202020202020202020203c46616365745265737472696374696f6e2066616365743d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d61236d6178496e636c7573697665223e0a202020202020202020202020202020202020202020202020202020203c4c69746572616c2064617461747970654952493d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d6123696e74223e313038303c2f4c69746572616c3e0a2020202020202020202020202020202020202020202020203c2f46616365745265737472696374696f6e3e0a20202020202020202020202020202020202020203c2f44617461747970655265737472696374696f6e3e0a202020202020202020202020202020203c2f44617461536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f61766f6964616e745f706572736f6e616c6974795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6269706f6c61725f6469736f7264657273222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f646570656e64656e745f706572736f6e616c6974795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f646570726573736976655f6469736f7264657273222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6479736d6f72706869635f626f64795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6d616a6f725f646570726573736976655f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6f62736573736976655f636f6d70756c736976655f706572736f6e616c6974795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f6f746865725f616e78696574795f6469736f7264657273222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223706f737369626c655f72656c6174696f6e5f776974685f736f6d617469635f73796d70746f6d735f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a2020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a202020202020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a2020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020202020202020202020202020203c436c617373204952493d2223747261756d617469635f657870657269656e6365222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223616e616c65707365222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222365786167676572617465645f73746172746c655f726573706f6e7365222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236672657175656e745f6e696768746d61726573222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236879706572766967696c616e6365222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223696e747275736976655f616e645f726563757272656e745f6d656d6f72696573222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d222362655f7261746564222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223706572666f726d616e63655f736974756174696f6e73222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22237075706c69635f736974756174696f6e73222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223736f6369616c5f6576656e7473222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d2223736f6369616c5f696e746572616374696f6e73222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c4571756976616c656e74436c61737365733e0a20202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a2020202020202020202020203c4f626a656374496e74657273656374696f6e4f663e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020202020202020202020202020203c436c617373204952493d222362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e222f3e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020202020202020202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a20202020202020202020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020202020202020202020202020203c4f626a656374556e696f6e4f663e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a2020202020202020202020202020202020202020202020203c436c617373204952493d22236972726174696f6e616c5f66656172222f3e0a20202020202020202020202020202020202020203c2f4f626a656374556e696f6e4f663e0a202020202020202020202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4571756976616c656e74436c61737365733e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236162646f6d696e616c5f646973636f6d666f7274222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236162646f6d696e616c5f646973636f6d666f7274222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223616e616c65707365222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223616e616c65707365222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a20202020202020203c436c617373204952493d22236d656e74616c5f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222362655f7261746564222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222362655f7261746564222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223636174617374726f7068655f73656e736174696f6e222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222363686f6b696e675f73656e736174696f6e222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222363686f6b696e675f73656e736174696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223636f6d70756c73696f6e73222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223636f6d70756c73696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236461696c795f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236461696c795f736974756174696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222364697a7a696e657373222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222364697a7a696e657373222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222365786167676572617465645f73746172746c655f726573706f6e7365222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222365786167676572617465645f73746172746c655f726573706f6e7365222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578706f737572655f746f5f686967685f7374726573735f6c6f6164222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236578706f737572655f746f5f686967685f7374726573735f6c6f6164222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222366617469676162696c697479222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222366617469676162696c697479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223666561725f6f665f6c6f73696e675f636f6e74726f6c222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223666561725f6f665f6c6f73696e675f636f6e74726f6c222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223666561725f746f5f646965222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223666561725f746f5f646965222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236672657175656e745f6e696768746d61726573222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236672657175656e745f6e696768746d61726573222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236879706572766967696c616e6365222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236879706572766967696c616e6365222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696d70756c736976656e657373222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696d70756c736976656e657373222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e637265617365645f686561727462656174222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e637265617365645f686561727462656174222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e74656e73655f616e6775697368222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e74656e73655f616e6775697368222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e747275736976655f616e645f726563757272656e745f6d656d6f72696573222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e747275736976655f616e645f726563757272656e745f6d656d6f72696573222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e747275736976655f74686f7567687473222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223696e747275736976655f74686f7567687473222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236972726174696f6e616c5f66656172222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236972726174696f6e616c5f66656172222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a20202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d7573636c655f6163686573222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d7573636c655f6163686573222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6175736561222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6175736561222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6572766f75736e657373222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6572766f75736e657373222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236f6273657373696f6e73222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236f6273657373696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370616369656e74655f636f6d5f6461646f735f696e76616c69646f73222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223706172657374686573696173222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223706172657374686573696173222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a2020202020202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223706572666f726d616e63655f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223706572666f726d616e63655f736974756174696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237075706c69635f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237075706c69635f736974756174696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223726570657469746976655f6265686176696f7273222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223726570657469746976655f6265686176696f7273222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223726573746c6573736e657373222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223726573746c6573736e657373222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222372697475616c69737469635f6265686176696f72222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222372697475616c69737469635f6265686176696f72222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d22236f6364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223676164222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736f6369616c5f6576656e7473222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736f6369616c5f6576656e7473222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736f6369616c5f696e746572616374696f6e73222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223736f6369616c5f696e746572616374696f6e73222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d2223736f6369616c5f616e78696574795f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d222373706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237377656174696e67222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237377656174696e67222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223747261756d617469635f657870657269656e6365222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223747261756d617469635f657870657269656e6365222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370747364222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237472656d6f7273222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d22237472656d6f7273222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223766f6d6974696e67222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f537562436c6173734f663e0a202020203c537562436c6173734f663e0a20202020202020203c436c617373204952493d2223766f6d6974696e67222f3e0a20202020202020203c4f626a656374536f6d6556616c75657346726f6d3e0a2020202020202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a2020202020202020202020203c436c617373204952493d222370616e69635f6469736f72646572222f3e0a20202020202020203c2f4f626a656374536f6d6556616c75657346726f6d3e0a202020203c2f537562436c6173734f663e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d22236162646f6d696e616c5f646973636f6d666f7274222f3e0a20202020202020203c436c617373204952493d222363686f6b696e675f73656e736174696f6e222f3e0a20202020202020203c436c617373204952493d222364697a7a696e657373222f3e0a20202020202020203c436c617373204952493d222366617469676162696c697479222f3e0a20202020202020203c436c617373204952493d2223696e637265617365645f686561727462656174222f3e0a20202020202020203c436c617373204952493d22236d7573636c655f6163686573222f3e0a20202020202020203c436c617373204952493d22236d7573636c655f74656e73696f6e222f3e0a20202020202020203c436c617373204952493d22236e6175736561222f3e0a20202020202020203c436c617373204952493d2223706172657374686573696173222f3e0a20202020202020203c436c617373204952493d22237377656174696e67222f3e0a20202020202020203c436c617373204952493d22237472656d6f7273222f3e0a20202020202020203c436c617373204952493d2223766f6d6974696e67222f3e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d2223616e616c65707365222f3e0a20202020202020203c436c617373204952493d2223636174617374726f7068655f73656e736174696f6e222f3e0a20202020202020203c436c617373204952493d2223636f6d70756c73696f6e73222f3e0a20202020202020203c436c617373204952493d2223646966666963756c74795f636f6e63656e74726174696e67222f3e0a20202020202020203c436c617373204952493d222365786167676572617465645f73746172746c655f726573706f6e7365222f3e0a20202020202020203c436c617373204952493d22236578636573736976655f616e7869657479222f3e0a20202020202020203c436c617373204952493d22236578636573736976655f66656172222f3e0a20202020202020203c436c617373204952493d22236578636573736976655f776f727279222f3e0a20202020202020203c436c617373204952493d2223666561725f6f665f6c6f73696e675f636f6e74726f6c222f3e0a20202020202020203c436c617373204952493d2223666561725f746f5f646965222f3e0a20202020202020203c436c617373204952493d22236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c222f3e0a20202020202020203c436c617373204952493d22236672657175656e745f6e696768746d61726573222f3e0a20202020202020203c436c617373204952493d22236879706572766967696c616e6365222f3e0a20202020202020203c436c617373204952493d2223696d70756c736976656e657373222f3e0a20202020202020203c436c617373204952493d2223696e74656e73655f616e6775697368222f3e0a20202020202020203c436c617373204952493d2223696e747275736976655f616e645f726563757272656e745f6d656d6f72696573222f3e0a20202020202020203c436c617373204952493d2223696e747275736976655f74686f7567687473222f3e0a20202020202020203c436c617373204952493d22236972726174696f6e616c5f66656172222f3e0a20202020202020203c436c617373204952493d222369727269746162696c697479222f3e0a20202020202020203c436c617373204952493d22236e6572766f75736e657373222f3e0a20202020202020203c436c617373204952493d22236f6273657373696f6e73222f3e0a20202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a20202020202020203c436c617373204952493d2223726570657469746976655f6265686176696f7273222f3e0a20202020202020203c436c617373204952493d2223726573746c6573736e657373222f3e0a20202020202020203c436c617373204952493d222372697475616c69737469635f6265686176696f72222f3e0a20202020202020203c436c617373204952493d222373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d65222f3e0a20202020202020203c436c617373204952493d2223736c6565705f6368616e676573222f3e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d222362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d222362655f7261746564222f3e0a20202020202020203c436c617373204952493d22236461696c795f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d22236578706f737572655f746f5f686967685f7374726573735f6c6f6164222f3e0a20202020202020203c436c617373204952493d22236e6f5f73706563696669635f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d2223706572666f726d616e63655f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d22237075706c69635f736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d2223736f6369616c5f6576656e7473222f3e0a20202020202020203c436c617373204952493d2223736f6369616c5f696e746572616374696f6e73222f3e0a20202020202020203c436c617373204952493d2223747261756d617469635f657870657269656e6365222f3e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a20202020202020203c436c617373204952493d22236d656e74616c5f6469736f7264657273222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d222370616369656e74655f636f6d5f6461646f735f696e76616c69646f73222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d222370616369656e74655f73656d5f7472616e73746f726e6f5f64655f616e736965646164655f6573706563696669636f222f3e0a20202020202020203c4f626a656374496e74657273656374696f6e4f663e0a2020202020202020202020203c436c617373204952493d222370616369656e74655f636f6d5f6461646f735f696e76616c69646f73222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f676164222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f6f6364222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70616e69635f6469736f72646572222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f70747364222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f72646572222f3e0a2020202020202020202020203c436c617373204952493d222370617469656e745f776974685f73706563696669635f70686f6269615f6469736f72646572222f3e0a20202020202020203c2f4f626a656374496e74657273656374696f6e4f663e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c4469736a6f696e74436c61737365733e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a20202020202020203c436c617373204952493d222370737963686f6c6f676963616c5f73796d70746f6d73222f3e0a202020203c2f4469736a6f696e74436c61737365733e0a202020203c436c617373417373657274696f6e3e0a20202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d2223636f6d6f72626964616465222f3e0a202020203c2f436c617373417373657274696f6e3e0a202020203c436c617373417373657274696f6e3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d222370616369656e7465222f3e0a202020203c2f436c617373417373657274696f6e3e0a202020203c436c617373417373657274696f6e3e0a20202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d22237472616e73746f726e6f222f3e0a202020203c2f436c617373417373657274696f6e3e0a202020203c4f626a65637450726f7065727479417373657274696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d2223636f6d6f72626964616465222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d222370616369656e7465222f3e0a202020203c2f4f626a65637450726f7065727479417373657274696f6e3e0a202020203c4f626a65637450726f7065727479417373657274696f6e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d222370616369656e7465222f3e0a20202020202020203c4e616d6564496e646976696475616c204952493d22237472616e73746f726e6f222f3e0a202020203c2f4f626a65637450726f7065727479417373657274696f6e3e0a202020203c496e76657273654f626a65637450726f706572746965733e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f616e78696574795f6469736f726465725f6f66222f3e0a202020203c2f496e76657273654f626a65637450726f706572746965733e0a202020203c496e76657273654f626a65637450726f706572746965733e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a202020203c2f496e76657273654f626a65637450726f706572746965733e0a202020203c496e76657273654f626a65637450726f706572746965733e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a202020203c2f496e76657273654f626a65637450726f706572746965733e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a20202020202020203c436c617373204952493d2223636f6d6f726269646974696573222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f636861726163746572697374696373222f3e0a20202020202020203c436c617373204952493d222370616e69635f61747461636b73222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f616e78696574795f6469736f726465725f6f66222f3e0a20202020202020203c436c617373204952493d2223616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f7065727479446f6d61696e3e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f4f626a65637450726f7065727479446f6d61696e3e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d222363616e5f62655f72656c617465645f77697468222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f616e78696574795f6469736f72646572222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f636861726163746572697374696373222f3e0a20202020202020203c436c617373204952493d2223706879736963616c5f73796d70746f6d73222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f736974756174696f6e222f3e0a20202020202020203c436c617373204952493d2223736974756174696f6e73222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d22236861735f73796d70746f6d222f3e0a20202020202020203c436c617373204952493d222373796d70746f6d73222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f616e78696574795f6469736f726465725f6f66222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f736974756174696f6e5f6f66222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4f626a65637450726f706572747952616e67653e0a20202020202020203c4f626a65637450726f7065727479204952493d222369735f73796d70746f6d5f6f66222f3e0a20202020202020203c436c617373204952493d22236d616a6f725f616e78696574795f6469736f7264657273222f3e0a202020203c2f4f626a65637450726f706572747952616e67653e0a202020203c4461746150726f7065727479446f6d61696e3e0a20202020202020203c4461746150726f7065727479204952493d222374696d655f776974685f73796d70746f6d73222f3e0a20202020202020203c436c617373204952493d222370617469656e74222f3e0a202020203c2f4461746150726f7065727479446f6d61696e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236162646f6d696e616c5f646973636f6d666f72743c2f4952493e0a20202020202020203c4c69746572616c3e6162646f6d696e616c5f646973636f6d666f72743c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236162646f6d696e616c5f646973636f6d666f72743c2f4952493e0a20202020202020203c4c69746572616c3e646573636f6e666f72746f5f6162646f6d696e616c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23616e616c657073653c2f4952493e0a20202020202020203c4c69746572616c3e616e616c657073653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e546869732067656e6572616c20636c6173732072656665727320746f20746865206d616a6f7220616e7869657479206469736f72646572732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e616e78696574795f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e7472616e73746f726e6f735f64655f616e736965646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f2065787472656d656c7920737065636966696320736974756174696f6e7320696e20776869636820616e20616e7869657479206469736f726465722063616e2065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e62655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2362655f696e5f7468655f70726573656e63655f6f665f73706563696669635f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e65737461725f6e615f70726573656e63615f64655f756d615f736974756163616f5f657370656369666963613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2362655f72617465643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20736974756174696f6e73207768657265207468652070617469656e742069732063616e20626520617373657373656420666f7220746865697220616374696f6e732c20696e20776869636820616e20616e7869657479206469736f72646572206d617920657870726573732074686569722073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2362655f72617465643c2f4952493e0a20202020202020203c4c69746572616c3e62655f72617465643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2362655f72617465643c2f4952493e0a20202020202020203c4c69746572616c3e7365725f6176616c6961646f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2363616e5f62655f72656c617465645f776974683c2f4952493e0a20202020202020203c4c69746572616c3e706f64655f65737461725f72656c6163696f6e61646f5f636f6d3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636174617374726f7068655f73656e736174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e636174617374726f7068655f73656e736174696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636174617374726f7068655f73656e736174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e73656e736163616f5f64655f636174617374726f66653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2363686f6b696e675f73656e736174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e63686f6b696e675f73656e736174696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2363686f6b696e675f73656e736174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e73656e736163616f5f64655f617366697869613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636f6d6f7262696469746965733c2f4952493e0a20202020202020203c4c69746572616c3e636f6d6f72626964616465733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636f6d6f7262696469746965733c2f4952493e0a20202020202020203c4c69746572616c3e636f6d6f7262696469746965733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636f6d70756c73696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e636f6d70756c73696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23636f6d70756c73696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e636f6d70756c736f65733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236461696c795f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20746865206461696c7920736974756174696f6e7320696e20776869636820616e20616e7869657479206469736f72646572206d61792065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236461696c795f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e6461696c795f736974756174696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236461696c795f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e7369747561636f65735f646961726961733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23646966666963756c74795f636f6e63656e74726174696e673c2f4952493e0a20202020202020203c4c69746572616c3e646966666963756c74795f636f6e63656e74726174696e673c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23646966666963756c74795f636f6e63656e74726174696e673c2f4952493e0a20202020202020203c4c69746572616c3e6469666963756c64616465735f6e615f636f6e636574726163616f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2364697a7a696e6573733c2f4952493e0a20202020202020203c4c69746572616c3e64697a7a696e6573733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2364697a7a696e6573733c2f4952493e0a20202020202020203c4c69746572616c3e766572746967656e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2365786167676572617465645f73746172746c655f726573706f6e73653c2f4952493e0a20202020202020203c4c69746572616c3e65786167676572617465645f73746172746c655f726573706f6e73653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2365786167676572617465645f73746172746c655f726573706f6e73653c2f4952493e0a20202020202020203c4c69746572616c3e726573706f7374615f64655f736f6272657373616c746f5f6578616765726164613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f616e78696574793c2f4952493e0a20202020202020203c4c69746572616c3e616e736965646164655f6578636573736976613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f616e78696574793c2f4952493e0a20202020202020203c4c69746572616c3e6578636573736976655f616e78696574793c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f666561723c2f4952493e0a20202020202020203c4c69746572616c3e6578636573736976655f666561723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f666561723c2f4952493e0a20202020202020203c4c69746572616c3e6d65646f5f65786365737369766f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f776f7272793c2f4952493e0a20202020202020203c4c69746572616c3e6578636573736976655f776f7272793c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578636573736976655f776f7272793c2f4952493e0a20202020202020203c4c69746572616c3e7072656f6375706163616f5f6578636573736976613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236578706f737572655f746f5f686967685f7374726573735f6c6f61643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20737472657373206f7665726c6f616420736974756174696f6e7320696e20776869636820616e20616e7869657479206469736f726465722063616e2065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578706f737572655f746f5f686967685f7374726573735f6c6f61643c2f4952493e0a20202020202020203c4c69746572616c3e6578706f736963616f5f615f616c74615f63617267615f64655f65737472657373653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236578706f737572655f746f5f686967685f7374726573735f6c6f61643c2f4952493e0a20202020202020203c4c69746572616c3e6578706f737572655f746f5f686967685f7374726573735f6c6f61643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2366617469676162696c6974793c2f4952493e0a20202020202020203c4c69746572616c3e66617469676162696c69646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2366617469676162696c6974793c2f4952493e0a20202020202020203c4c69746572616c3e66617469676162696c6974793c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23666561725f6f665f6c6f73696e675f636f6e74726f6c3c2f4952493e0a20202020202020203c4c69746572616c3e666561725f6f665f6c6f73696e675f636f6e74726f6c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23666561725f6f665f6c6f73696e675f636f6e74726f6c3c2f4952493e0a20202020202020203c4c69746572616c3e6d65646f5f64655f7065726465725f6f5f636f6e74726f6c653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23666561725f746f5f6469653c2f4952493e0a20202020202020203c4c69746572616c3e666561725f746f5f6469653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23666561725f746f5f6469653c2f4952493e0a20202020202020203c4c69746572616c3e6d65646f5f64655f6d6f727265723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c3c2f4952493e0a20202020202020203c4c69746572616c3e6665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236665656c696e675f6f665f6265696e675f6f75745f6f665f636f6e74726f6c3c2f4952493e0a20202020202020203c4c69746572616c3e73656e736163616f5f64655f65737461725f666f72615f64655f636f6e74726f6c653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236672657175656e745f6e696768746d617265733c2f4952493e0a20202020202020203c4c69746572616c3e6672657175656e745f6e696768746d617265733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236672657175656e745f6e696768746d617265733c2f4952493e0a20202020202020203c4c69746572616c3e7065736164656c6f735f6672657175656e7465733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236761643c2f4952493e0a20202020202020203c4c69746572616c3e49434420313020636f64653a204634312e313c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236761643c2f4952493e0a20202020202020203c4c69746572616c3e5468652070726573656e7420636c61737320697320726573706f6e7369626c6520746f20726570726573656e742074686520636f6e63657074206f662047656e6572616c697a656420416e7869657479204469736f726465722028474144292e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236761643c2f4952493e0a20202020202020203c4c69746572616c3e6761643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236761643c2f4952493e0a20202020202020203c4c69746572616c3e7461673c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e6861735f616e78696574795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e74656d5f706f73736976656c5f7472616e73746f726e6f5f64655f616e736965646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e6861735f736974756174696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e74656d5f736974756163616f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f73796d70746f6d3c2f4952493e0a20202020202020203c4c69746572616c3e6861735f73796d70746f6d3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236861735f73796d70746f6d3c2f4952493e0a20202020202020203c4c69746572616c3e74656d5f73696e746f6d613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236879706572766967696c616e63653c2f4952493e0a20202020202020203c4c69746572616c3e6869706572766967696c616e6369613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236879706572766967696c616e63653c2f4952493e0a20202020202020203c4c69746572616c3e6879706572766967696c616e63653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696d70756c736976656e6573733c2f4952493e0a20202020202020203c4c69746572616c3e696d70756c736976656e6573733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696d70756c736976656e6573733c2f4952493e0a20202020202020203c4c69746572616c3e696d70756c73697669646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e637265617365645f6865617274626561743c2f4952493e0a20202020202020203c4c69746572616c3e626174696d656e746f5f6163656c657261646f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e637265617365645f6865617274626561743c2f4952493e0a20202020202020203c4c69746572616c3e696e637265617365645f6865617274626561743c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e74656e73655f616e67756973683c2f4952493e0a20202020202020203c4c69746572616c3e616e6775737469615f696e74656e73613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e74656e73655f616e67756973683c2f4952493e0a20202020202020203c4c69746572616c3e696e74656e73655f616e67756973683c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e747275736976655f616e645f726563757272656e745f6d656d6f726965733c2f4952493e0a20202020202020203c4c69746572616c3e696e747275736976655f616e645f726563757272656e745f6d656d6f726965733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e747275736976655f616e645f726563757272656e745f6d656d6f726965733c2f4952493e0a20202020202020203c4c69746572616c3e6d656d6f726961735f7265636f7272656e7465735f655f696e74727573697661733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e747275736976655f74686f75676874733c2f4952493e0a20202020202020203c4c69746572616c3e696e747275736976655f74686f75676874733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23696e747275736976655f74686f75676874733c2f4952493e0a20202020202020203c4c69746572616c3e70656e73616d656e746f735f696e737472757369766f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369727269746162696c6974793c2f4952493e0a20202020202020203c4c69746572616c3e69727269746162696c69646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369727269746162696c6974793c2f4952493e0a20202020202020203c4c69746572616c3e69727269746162696c6974793c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f616e78696574795f6469736f726465725f6f663c2f4952493e0a20202020202020203c4c69746572616c3e655f706f73736976656c5f7472616e73746f726e6f5f64655f616e736965646164655f64653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f616e78696574795f6469736f726465725f6f663c2f4952493e0a20202020202020203c4c69746572616c3e69735f616e78696574795f6469736f726465725f6f663c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f736974756174696f6e5f6f663c2f4952493e0a20202020202020203c4c69746572616c3e655f736974756163616f5f64653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f736974756174696f6e5f6f663c2f4952493e0a20202020202020203c4c69746572616c3e69735f736974756174696f6e5f6f663c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f73796d70746f6d5f6f663c2f4952493e0a20202020202020203c4c69746572616c3e655f73696e746f6d615f64653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2369735f73796d70746f6d5f6f663c2f4952493e0a20202020202020203c4c69746572616c3e69735f73796d70746f6d5f6f663c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236d616a6f725f616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732061696d7320746f2067726f757020746865206d61696e20616e7869657479206469736f726465727320746861742077696c6c20626520616464726573736564206279206f6e746f6c6f67792e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d616a6f725f616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e6d616a6f725f616e78696574795f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d616a6f725f616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e7072696e6369706169735f7472616e73746f726e6f735f64655f616e736965646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236d656e74616c5f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f2074686520636f6e63657074732072656c6174656420746f206d656e74616c206469736f72646572732e20546865206d616a6f7220636f6e636570747320696e207468697320636c6173732061726520696d706f7274616e742c20626563617573652074686973206f6e746f6c6f677920616c736f2068617320746865206f626a656374697665206f6620636c6173736966792074686520636f6d6f72626964697479206265747765656e20616e7869657479206469736f72646572732077697468206f74686572206d656e74616c206469736f72646572732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d656e74616c5f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e6d656e74616c5f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d656e74616c5f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e7472616e73746f726e6f735f6d656e746169733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d7573636c655f61636865733c2f4952493e0a20202020202020203c4c69746572616c3e646f7265735f6d757363756c617265733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d7573636c655f61636865733c2f4952493e0a20202020202020203c4c69746572616c3e6d7573636c655f61636865733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d7573636c655f74656e73696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e6d7573636c655f74656e73696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236d7573636c655f74656e73696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e74656e73616f5f6d757363756c61723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236e61757365613c2f4952493e0a20202020202020203c4c69746572616c3e6e61757365613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236e6572766f75736e6573733c2f4952493e0a20202020202020203c4c69746572616c3e6e6572766f7369736d6f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236e6572766f75736e6573733c2f4952493e0a20202020202020203c4c69746572616c3e6e6572766f75736e6573733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236e6f5f73706563696669635f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e6e6f5f73706563696669635f736974756174696f6e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236e6f5f73706563696669635f736974756174696f6e3c2f4952493e0a20202020202020203c4c69746572616c3e73656d5f736974756163616f5f657370656369666963613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236f6273657373696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e6f6273657373696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236f6273657373696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e6f62736573736f65733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236f63643c2f4952493e0a20202020202020203c4c69746572616c3e49434420313020636f64653a204634323c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e236f63643c2f4952493e0a20202020202020203c4c69746572616c3e5468652070726573656e7420636c6173732072656665727320746f2074686520636f6e63657074206f66204f6273736573736976652d436f6d70756c73697665204469736f7264657220284f4344292e20416c74686f756768204f4344206973206e6f206c6f6e67657220636c617373696669656420617320616e20616e7869657479206469736f726465722c206163636f7264696e6720746f207468652044534d2d5620616e6420746865204943442031302c2074686973206469736f7264657220697320706f696e746564206173206f6e65206f6620746865206d61696e20616e7869657479206469736f72646572732062792074686520552e53204465706172746d656e74206f66204865616c74682026616d703b2048756d616e2053657276696365732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236f63643c2f4952493e0a20202020202020203c4c69746572616c3e6f63643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e236f63643c2f4952493e0a20202020202020203c4c69746572616c3e746f633c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370616e69635f61747461636b733c2f4952493e0a20202020202020203c4c69746572616c3e617461717565735f64655f70616e69636f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370616e69635f61747461636b733c2f4952493e0a20202020202020203c4c69746572616c3e70616e69635f61747461636b733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e49434420313020636f64653a204634312e303c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20746865206d61696e20636f6e63657074206f66207468652050616e6963204469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e70616e69635f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e7472616e73746f726e6f5f646f5f70616e69636f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237061726573746865736961733c2f4952493e0a20202020202020203c4c69746572616c3e706172657374657369613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237061726573746865736961733c2f4952493e0a20202020202020203c4c69746572616c3e7061726573746865736961733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e743c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20746865206d61696e20636f6e63657074206f662050617469656e742e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e743c2f4952493e0a20202020202020203c4c69746572616c3e70616369656e74653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e743c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e743c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6761643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e747320776974682047656e6572616c697a656420416e7869657479204469736f726465722028474144292e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6761643c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f6761643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6761643c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f7461673c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6f63643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e74732077697468204f627365737369766520436f6d70756c73697665204469736f7264657220284f4344292e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6f63643c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f6f63643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f6f63643c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f746f633c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f70616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e747320776974682050616e6963204469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f70616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f70616e69635f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f70616e69635f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f7472616e73746f726e6f5f646f5f70616e69636f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f707473643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e7473207769746820506f73742d547261756d6174696320537472657373204469736f72646572202850545344292e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f707473643c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f707473643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f707473643c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f746570743c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e7473207769746820536f6369616c20416e7869657479204469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f736f6369616c5f616e78696574795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f7472616e73746f726e6f5f64655f616e736965646164655f736f6369616c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370617469656e745f776974685f73706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c617373206973207573656420746f20636c617373696679207468652070617469656e747320776974682053706563696669632050686f626961204469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f73706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e70617469656e745f776974685f73706563696669635f70686f6269615f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370617469656e745f776974685f73706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f70616369656e74655f636f6d5f7472616e73746f726e6f5f64655f666f6269615f657370656369666963613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23706572666f726d616e63655f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20736974756174696f6e73207768657265207468652070617469656e74206e6565647320746f20706572666f726d206120706172746963756c6172207461736b20696e2066726f6e74206f66206f746865727320616e642074686174207461736b20726571756972657320676f6f6420706572666f726d616e63652c20696e20776869636820616e20616e7869657479206469736f72646572206d61792065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706572666f726d616e63655f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e706572666f726d616e63655f736974756174696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706572666f726d616e63655f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e7369747561636f65735f64655f706572666f726d616e63653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23706879736963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f2074686520706869736963616c2073796d70746f6d73207573656420746f20646961676e6f736520616e20616e7869657479206469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706879736963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e706879736963616c5f73796d70746f6d733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706879736963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e73696e746f6d61735f66697369636f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f61766f6964616e745f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f61766f6964616e745f706572736f6e616c6974795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f61766f6964616e745f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f64655f706572736f6e616c69646164655f6576697461746976613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6269706f6c61725f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f6269706f6c61725f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6269706f6c61725f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f735f6269706f6c617265733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f646570656e64656e745f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f646570656e64656e745f706572736f6e616c6974795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f646570656e64656e745f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f64655f706572736f6e616c69646164655f646570656e64656e74653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f646570726573736976655f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f646570726573736976655f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f646570726573736976655f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f735f6465707265737369766f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6479736d6f72706869635f626f64795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f6479736d6f72706869635f626f64795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6479736d6f72706869635f626f64795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f6469736d6f726669636f5f636f72706f72616c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6d616a6f725f646570726573736976655f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f6d616a6f725f646570726573736976655f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6d616a6f725f646570726573736976655f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f6465707265737369766f5f6d61696f723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6f62736573736976655f636f6d70756c736976655f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f6f62736573736976655f636f6d70756c736976655f706572736f6e616c6974795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6f62736573736976655f636f6d70756c736976655f706572736f6e616c6974795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f64655f706572736f6e616c69646164655f6f62736573736976615f636f6d70756c736976613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6f746865725f616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f6f746865725f616e78696574795f6469736f72646572733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f6f746865725f616e78696574795f6469736f72646572733c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f636f6d5f6f7574726f735f7472616e73746f726e6f735f64655f616e736965646164653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f736f6d617469635f73796d70746f6d735f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f737369626c655f72656c6174696f6e5f776974685f736f6d617469635f73796d70746f6d735f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23706f737369626c655f72656c6174696f6e5f776974685f736f6d617469635f73796d70746f6d735f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e706f73736976656c5f72656c6163616f5f636f6d5f7472616e73746f726e6f5f64655f73696e746f6d61735f736f6d617469636f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2370737963686f6c6f676963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f207468652070737963686f6c6f676963616c2073796d70746f6d73207573656420746f20646961676e6f736520616e20616e7869657479206469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370737963686f6c6f676963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e70737963686f6c6f676963616c5f73796d70746f6d733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2370737963686f6c6f676963616c5f73796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e73696e746f6d61735f707369636f6c6f6769636f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23707473643c2f4952493e0a20202020202020203c4c69746572616c3e49434420313020636f64653a204634332e313c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23707473643c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20746865206d61696e20636f6e63657074206f662074686520506f73742d547261756d6174696320537472657373204469736f726465722e0a0a502e532e3a204163636f7264696e6720746f20746865204943442d313020616e64207468652044534d2d562c2074686973206469736f72646572206973206e6f206c6f6e67657220636c617373696669656420617320616e20616e7869657479206469736f726465722c2064756520746f2069747320706172746963756c6172206368617261637465726973746963732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23707473643c2f4952493e0a20202020202020203c4c69746572616c3e707473643c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23707473643c2f4952493e0a20202020202020203c4c69746572616c3e746570743c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e237075706c69635f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f207075626c696320736974756174696f6e732074686174206163746976617465207468652073796d70746f6d73206f66206120706172746963756c617220616e7869657479206469736f726465722e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237075706c69635f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e7075626c69635f736974756174696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237075706c69635f736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e7369747561636f65735f7075626c696361733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23726570657469746976655f6265686176696f72733c2f4952493e0a20202020202020203c4c69746572616c3e636f6d706f7274616d656e746f735f7265706574697469766f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23726570657469746976655f6265686176696f72733c2f4952493e0a20202020202020203c4c69746572616c3e726570657469746976655f6265686176696f72733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23726573746c6573736e6573733c2f4952493e0a20202020202020203c4c69746572616c3e63616e7361636f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23726573746c6573736e6573733c2f4952493e0a20202020202020203c4c69746572616c3e726573746c6573736e6573733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2372697475616c69737469635f6265686176696f723c2f4952493e0a20202020202020203c4c69746572616c3e636f6d706f7274616d656e746f5f72697475616c69737469636f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2372697475616c69737469635f6265686176696f723c2f4952493e0a20202020202020203c4c69746572616c3e72697475616c69737469635f6265686176696f723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d653c2f4952493e0a20202020202020203c4c69746572616c3e73656e736163616f5f64655f646573666563686f5f6e6567617469766f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d653c2f4952493e0a20202020202020203c4c69746572616c3e73656e736174696f6e5f6f665f6e656761746976655f6f7574636f6d653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e546865206d61696e206f626a656374697665206f66207468697320636c61737320697320746f2067726f757020746865206d61696e20736974756174696f6e732077686572652074686520616e7869657479206469736f72646572732073796d70746f6d73206265636f6d65206e6f7469636561626c652c20746f2074686520696e646976696475616c20697473656c66206f7220746f206f74686572732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e7369747561636f65733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736974756174696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e736974756174696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736c6565705f6368616e6765733c2f4952493e0a20202020202020203c4c69746572616c3e616c74657261636f65735f6e6f5f736f6e6f3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736c6565705f6368616e6765733c2f4952493e0a20202020202020203c4c69746572616c3e736c6565705f6368616e6765733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e49434420313020636f64653a204634302e31303c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468652070726573656e7420636c6173732068617320746865206f626a656374697665206f6620726570726573656e742074686520636f6e63657074206f662074686520536f6369616c20416e7869657479204469736f726465722c20616c736f206b6e6f776e20617320536f6369616c2050686f6269612e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e736f6369616c5f616e78696574795f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f616e78696574795f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e7472616e73746f726e6f5f64655f616e736965646164655f736f6369616c3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23736f6369616c5f6576656e74733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20736f6369616c20736974756174696f6e7320696e20776869636820616e20616e7869657479206469736f72646572206d61792065787072657373206974732073796d70746f6d732c2073756368206173207061727469657320616e6420736f206f6e2e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f6576656e74733c2f4952493e0a20202020202020203c4c69746572616c3e6576656e746f735f736f63696169733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f6576656e74733c2f4952493e0a20202020202020203c4c69746572616c3e736f6369616c5f6576656e74733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23736f6369616c5f696e746572616374696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20657665727964617920736f6369616c20736974756174696f6e7320696e20776869636820616e20616e7869657479206469736f72646572206d61792065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f696e746572616374696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e696e74657261636f65735f736f63696169733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23736f6369616c5f696e746572616374696f6e733c2f4952493e0a20202020202020203c4c69746572616c3e736f6369616c5f696e746572616374696f6e733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2373706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468652049434420313020636f646520666f722074686973206469736f7264657220646570656e6473206f6e2069747320766172696174696f6e2e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e2373706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e5468652070726573656e7420636c61737320697320726573706f6e7369626c6520746f20726570726573656e742074686520636f6e6365707473206f6620537065636966632050686f626961732c2073756368206173205079726f70686f6269612c2041726163686e6f70686f62696120616e6420736f206f6e2e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e73706563696669635f70686f6269615f6469736f726465723c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373706563696669635f70686f6269615f6469736f726465723c2f4952493e0a20202020202020203c4c69746572616c3e7472616e73746f726e6f5f64655f666f6269615f657370656369666963613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237377656174696e673c2f4952493e0a20202020202020203c4c69746572616c3e7375646f726573653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237377656174696e673c2f4952493e0a20202020202020203c4c69746572616c3e7377656174696e673c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f20746865206d61696e2073796d70746f6d73206173736f63696174656420746f20746865206d616a6f7220616e7869657479206469736f72646572732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e73696e746f6d61733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e2373796d70746f6d733c2f4952493e0a20202020202020203c4c69746572616c3e73796d70746f6d733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a636f6d6d656e74222f3e0a20202020202020203c4952493e23747261756d617469635f657870657269656e63653c2f4952493e0a20202020202020203c4c69746572616c3e5468697320636c6173732072656665727320746f2074686520747261756d61746963206576656e747320696e20776869636820616e20616e7869657479206469736f72646572206d61792065787072657373206974732073796d70746f6d732e3c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23747261756d617469635f657870657269656e63653c2f4952493e0a20202020202020203c4c69746572616c3e657870657269656e6369615f747261756d61746963613c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23747261756d617469635f657870657269656e63653c2f4952493e0a20202020202020203c4c69746572616c3e747261756d617469635f657870657269656e63653c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237472656d6f72733c2f4952493e0a20202020202020203c4c69746572616c3e7472656d6f7265733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e237472656d6f72733c2f4952493e0a20202020202020203c4c69746572616c3e7472656d6f72733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23766f6d6974696e673c2f4952493e0a20202020202020203c4c69746572616c3e766f6d6974696e673c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a202020203c416e6e6f746174696f6e417373657274696f6e3e0a20202020202020203c416e6e6f746174696f6e50726f70657274792061626272657669617465644952493d22726466733a6c6162656c222f3e0a20202020202020203c4952493e23766f6d6974696e673c2f4952493e0a20202020202020203c4c69746572616c3e766f6d69746f733c2f4c69746572616c3e0a202020203c2f416e6e6f746174696f6e417373657274696f6e3e0a3c2f4f6e746f6c6f67793e0a0a0a0a3c212d2d2047656e65726174656420627920746865204f574c20415049202876657273696f6e20342e352e392e323031392d30322d30315430373a32343a34345a292068747470733a2f2f6769746875622e636f6d2f6f776c63732f6f776c617069202d2d3e0a0a
\.


                                                                                                                                                                                            2888.dat                                                                                            0000600 0004000 0002000 00000003631 13657224136 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	sleep_changes	Alterações no Sono	Psicológico
2	analepse	Analepse	Psicológico
3	intense_anguish	Angústia Intensa	Psicológico
4	excessive_anxiety	Ansiedade Excessiva	Psicológico
5	panic_attacks	Ataques de Pânico	Psicológico
6	restlessness	Cansaço	Psicológico
7	ritualistic_behavior	Comportamento Ritualístico	Psicológico
8	repetitive_behaviors	Comportamento Repetitivo	Psicológico
9	compulsions	Compulsões	Psicológico
10	difficulty_concentrating	Dificuldades na Concentração	Psicológico
11	hypervigilance	Hipervigilância	Psicológico
12	impulsiveness	Impulsividade	Psicológico
13	irrational_fear	Medo Irracional	Psicológico
14	irritability	Irritabilidade	Psicológico
15	fear_to_die	Medo de Morrer	Psicológico
16	fear_of_losing_control	Medo de Perder o Controler	Psicológico
17	excessive_fear	Medo Excessivo	Psicológico
18	intrusive_and_recurrent_memories	Memórias Recorrentes e Intrusivas	Psicológico
19	nervousness	Nervosismo	Psicológico
20	obsessions	Obsessões	Psicológico
21	intrusive_thoughts	Pensamentos Intrusivos	Psicológico
22	frequent_nightmares	Pesadelos Frequentes	Psicológico
23	excessive_worry	Preocupação Excessiva	Psicológico
24	exaggerated_startle_response	Resposta de Sobressalto Exagerada	Psicológico
25	catastrophe_sensation	Sensação de Catástrofe	Psicológico
26	sensation_of_negative_outcome	Sensação de Desfecho Negativo	Psicológico
27	feeling_of_being_out_of_control	Sensação de Estar Fora do Controle	Psicológico
28	increased_heartbeat	Batimento Acelerado	Físico
29	abdominal_discomfort	Desconforto Abdominal	Físico
30	muscle_aches	Dores Musculares	Físico
31	fatigability	Fatigabilidade	Físico
32	nausea	Náusea	Físico
33	paresthesias	Parestesia	Físico
34	choking_sensation	Sensação de Asfixia	Físico
35	sweating	Sudurese	Físico
36	muscle_tension	Tensão Muscular	Físico
37	tremors	Tremores	Físico
38	dizziness	Vertigens	Físico
39	vomiting	Vômitos	Físico
\.


                                                                                                       2889.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2890.dat                                                                                            0000600 0004000 0002000 00000000762 13657224136 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	be_in_the_presence_of_specific_situation	Estar na presença de uma situação específica
2	social_events	Eventos sociais
3	traumatic_experience	Experiência traumática
4	exposure_to_high_stress_load	Exposição a alta carga de estresse
5	social_interactions	Interações sociais
6	no_specific_situation	Sem situação específica
7	be_rated	Ser avaliado
8	performance_situations	Situações de performance
9	daily_situations	Situações diárias
10	puplic_situations	Situações públicas
\.


              2891.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2892.dat                                                                                            0000600 0004000 0002000 00000001227 13657224136 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	paciente_com_dados_invalidos	Paciente com dados inválidos
2	paciente_sem_transtorno_de_ansiedade_especifico	Paciente sem transtorno de ansiedade específico
3	patient_with_gad	Possível paciente com Transtorno de Ansiedade Generalizada
4	patient_with_ptsd	Possível paciente com Transtorno de Estresse Pós-Trumático
5	patient_with_ocd	Possível paciente com Transtorno Obsessivo Compulsivo
6	patient_with_social_anxiety_disorder	Possível paciente com Transtorno de Ansiedade Social
7	patient_with_specific_phobia_disorder	Possível paciente com Transtorno de Fobia Específica
8	patient_with_panic_disorder	Possível paciente com Transtorno de Pânico
\.


                                                                                                                                                                                                                                                                                                                                                                         2893.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2894.dat                                                                                            0000600 0004000 0002000 00000000440 13657224136 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	gad	Transtorno de Ansiedade Generalizada
2	ptsd	Transtorno de Estresse Pós-Traumático
3	ocd	Transtorno Obsessivo-Compulsivo
4	social_anxiety_disorder	Transtorno de Ansiedade Social
5	specific_phobia_disorder	Transtorno de Fobia Específica
6	panic_disorder	Transtorno do Pânico
\.


                                                                                                                                                                                                                                2895.dat                                                                                            0000600 0004000 0002000 00000000005 13657224136 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           blob_25175.dat                                                                                      0000600 0004000 0002000 00000000016 13657224136 0015341 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        voluntario.owl                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  blob_25203.dat                                                                                      0000600 0004000 0002000 00000444216 13657224136 0015347 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        <?xml version="1.0"?>
<rdf:RDF xmlns="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49"
     xml:base="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:xml="http://www.w3.org/XML/1998/namespace"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:disorders="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49"
     xmlns:untitled-ontology-49="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#">
    <owl:Ontology rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49">
        <owl:versionIRI rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49"/>
        <rdfs:comment xml:lang="en">Author: Max Denner T. da Silva</rdfs:comment>
        <rdfs:comment xml:lang="en">The present ontology aims on how to help psychologists and psychiatrists in the anxiety disorders diagnosis process.</rdfs:comment>
    </owl:Ontology>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Object Properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <rdfs:label xml:lang="pt">pode_estar_relacionado_com</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder">
        <owl:inverseOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_anxiety_disorder_of"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:label xml:lang="en">has_anxiety_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">tem_possivel_transtorno_de_ansiedade</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_characteristics -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_characteristics">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_attacks"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation">
        <owl:inverseOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:label xml:lang="en">has_situation</rdfs:label>
        <rdfs:label xml:lang="pt">tem_situacao</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom">
        <owl:inverseOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        <rdfs:label xml:lang="en">has_symptom</rdfs:label>
        <rdfs:label xml:lang="pt">tem_sintoma</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_anxiety_disorder_of -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_anxiety_disorder_of">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <rdfs:label xml:lang="pt">e_possivel_transtorno_de_ansiedade_de</rdfs:label>
        <rdfs:label xml:lang="en">is_anxiety_disorder_of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:label xml:lang="pt">e_situacao_de</rdfs:label>
        <rdfs:label xml:lang="en">is_situation_of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:label xml:lang="pt">e_sintoma_de</rdfs:label>
        <rdfs:label xml:lang="en">is_symptom_of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Data properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_name -->

    <owl:DatatypeProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_name">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#mental_disorders"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms -->

    <owl:DatatypeProperty rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
    </owl:DatatypeProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#abdominal_discomfort -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#abdominal_discomfort">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">abdominal_discomfort</rdfs:label>
        <rdfs:label xml:lang="pt">desconforto_abdominal</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#analepse -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#analepse">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">analepse</rdfs:label>
        <rdfs:label xml:lang="pt">analepse</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#mental_disorders"/>
        <rdfs:comment xml:lang="en">This general class refers to the major anxiety disorders.</rdfs:comment>
        <rdfs:label xml:lang="en">anxiety_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">transtornos_de_ansiedade</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_in_the_presence_of_specific_situation -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_in_the_presence_of_specific_situation">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to extremely specific situations in which an anxiety disorder can express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="en">be_in_the_presence_of_specific_situation</rdfs:label>
        <rdfs:label xml:lang="pt">estar_na_presenca_de_uma_situacao_especifica</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_rated -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_rated">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to situations where the patient is can be assessed for their actions, in which an anxiety disorder may express their symptoms.</rdfs:comment>
        <rdfs:label xml:lang="en">be_rated</rdfs:label>
        <rdfs:label xml:lang="pt">ser_avaliado</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#catastrophe_sensation -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#catastrophe_sensation">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:label xml:lang="en">catastrophe_sensation</rdfs:label>
        <rdfs:label xml:lang="pt">sensacao_de_catastrofe</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#choking_sensation -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#choking_sensation">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">choking_sensation</rdfs:label>
        <rdfs:label xml:lang="pt">sensacao_de_asfixia</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities">
        <rdfs:label xml:lang="pt">comorbidades</rdfs:label>
        <rdfs:label xml:lang="en">comorbidities</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#compulsions -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#compulsions">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">compulsions</rdfs:label>
        <rdfs:label xml:lang="pt">compulsoes</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#daily_situations -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#daily_situations">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to the daily situations in which an anxiety disorder may express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="en">daily_situations</rdfs:label>
        <rdfs:label xml:lang="pt">situacoes_diarias</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">difficulty_concentrating</rdfs:label>
        <rdfs:label xml:lang="pt">dificuldades_na_concetracao</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#dizziness -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#dizziness">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">dizziness</rdfs:label>
        <rdfs:label xml:lang="pt">vertigens</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exaggerated_startle_response -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exaggerated_startle_response">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">exaggerated_startle_response</rdfs:label>
        <rdfs:label xml:lang="pt">resposta_de_sobressalto_exagerada</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">ansiedade_excessiva</rdfs:label>
        <rdfs:label xml:lang="en">excessive_anxiety</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">excessive_fear</rdfs:label>
        <rdfs:label xml:lang="pt">medo_excessivo</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">excessive_worry</rdfs:label>
        <rdfs:label xml:lang="pt">preocupacao_excessiva</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exposure_to_high_stress_load -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exposure_to_high_stress_load">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to stress overload situations in which an anxiety disorder can express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="pt">exposicao_a_alta_carga_de_estresse</rdfs:label>
        <rdfs:label xml:lang="en">exposure_to_high_stress_load</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fatigability -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fatigability">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">fatigabilidade</rdfs:label>
        <rdfs:label xml:lang="en">fatigability</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_of_losing_control -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_of_losing_control">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">fear_of_losing_control</rdfs:label>
        <rdfs:label xml:lang="pt">medo_de_perder_o_controle</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_to_die -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_to_die">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">fear_to_die</rdfs:label>
        <rdfs:label xml:lang="pt">medo_de_morrer</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#feeling_of_being_out_of_control -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#feeling_of_being_out_of_control">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">feeling_of_being_out_of_control</rdfs:label>
        <rdfs:label xml:lang="pt">sensacao_de_estar_fora_de_controle</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#frequent_nightmares -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#frequent_nightmares">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">frequent_nightmares</rdfs:label>
        <rdfs:label xml:lang="pt">pesadelos_frequentes</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#daily_situations"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exposure_to_high_stress_load"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">3</owl:minQualifiedCardinality>
                                <owl:onClass>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fatigability"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_aches"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nervousness"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#restlessness"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sleep_changes"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:onClass>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:comment xml:lang="en">ICD 10 code: F41.1</rdfs:comment>
        <rdfs:comment xml:lang="en">The present class is responsible to represent the concept of Generalized Anxiety Disorder (GAD).</rdfs:comment>
        <rdfs:label xml:lang="en">gad</rdfs:label>
        <rdfs:label xml:lang="pt">tag</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#hypervigilance -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#hypervigilance">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">hipervigilancia</rdfs:label>
        <rdfs:label xml:lang="en">hypervigilance</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#impulsiveness -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#impulsiveness">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">impulsiveness</rdfs:label>
        <rdfs:label xml:lang="pt">impulsividade</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#increased_heartbeat -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#increased_heartbeat">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">batimento_acelerado</rdfs:label>
        <rdfs:label xml:lang="en">increased_heartbeat</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intense_anguish -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intense_anguish">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">angustia_intensa</rdfs:label>
        <rdfs:label xml:lang="en">intense_anguish</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_and_recurrent_memories -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_and_recurrent_memories">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">intrusive_and_recurrent_memories</rdfs:label>
        <rdfs:label xml:lang="pt">memorias_recorrentes_e_intrusivas</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_thoughts -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_thoughts">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">intrusive_thoughts</rdfs:label>
        <rdfs:label xml:lang="pt">pensamentos_instrusivos</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irrational_fear -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irrational_fear">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">irritabilidade</rdfs:label>
        <rdfs:label xml:lang="en">irritability</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders"/>
        <rdfs:comment xml:lang="en">This class aims to group the main anxiety disorders that will be addressed by ontology.</rdfs:comment>
        <rdfs:label xml:lang="en">major_anxiety_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">principais_transtornos_de_ansiedade</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#mental_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#mental_disorders">
        <rdfs:comment xml:lang="en">This class refers to the concepts related to mental disorders. The major concepts in this class are important, because this ontology also has the objective of classify the comorbidity between anxiety disorders with other mental disorders.</rdfs:comment>
        <rdfs:label xml:lang="en">mental_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">transtornos_mentais</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_aches -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_aches">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">dores_musculares</rdfs:label>
        <rdfs:label xml:lang="en">muscle_aches</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">muscle_tension</rdfs:label>
        <rdfs:label xml:lang="pt">tensao_muscular</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nausea -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nausea">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">nausea</rdfs:label>
        <rdfs:label xml:lang="pt">nausea</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nervousness -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nervousness">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">nervosismo</rdfs:label>
        <rdfs:label xml:lang="en">nervousness</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_comorbidities_related -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_comorbidities_related">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_sem_transtorno_de_ansiedade_especifico"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_specific_situation -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_specific_situation">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">no_specific_situation</rdfs:label>
        <rdfs:label xml:lang="pt">sem_situacao_especifica</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#obsessions -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#obsessions">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">obsessions</rdfs:label>
        <rdfs:label xml:lang="pt">obsessoes</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_specific_situation"/>
                    </owl:Restriction>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                        <owl:someValuesFrom>
                            <owl:Class>
                                <owl:unionOf rdf:parseType="Collection">
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#compulsions"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#impulsiveness"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_thoughts"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#obsessions"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#repetitive_behaviors"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ritualistic_behavior"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome"/>
                                </owl:unionOf>
                            </owl:Class>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:comment xml:lang="en">ICD 10 code: F42</rdfs:comment>
        <rdfs:comment xml:lang="en">The present class refers to the concept of Obssessive-Compulsive Disorder (OCD). Although OCD is no longer classified as an anxiety disorder, according to the DSM-V and the ICD 10, this disorder is pointed as one of the main anxiety disorders by the U.S Department of Health &amp; Human Services.</rdfs:comment>
        <rdfs:label xml:lang="en">ocd</rdfs:label>
        <rdfs:label xml:lang="pt">toc</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_com_dados_invalidos -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_com_dados_invalidos">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:unionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minExclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:minExclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxExclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">0</xsd:maxExclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:unionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <owl:disjointWith>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_sem_transtorno_de_ansiedade_especifico"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                </owl:intersectionOf>
            </owl:Class>
        </owl:disjointWith>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_sem_transtorno_de_ansiedade_especifico -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_sem_transtorno_de_ansiedade_especifico">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:complementOf>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:intersectionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                                        </owl:intersectionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:complementOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <owl:disjointWith>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paciente_com_dados_invalidos"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                </owl:intersectionOf>
            </owl:Class>
        </owl:disjointWith>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_attacks -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_attacks">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">ataques_de_panico</rdfs:label>
        <rdfs:label xml:lang="en">panic_attacks</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_specific_situation"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">4</owl:minQualifiedCardinality>
                                <owl:onClass>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#abdominal_discomfort"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#choking_sensation"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#dizziness"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_of_losing_control"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_to_die"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#feeling_of_being_out_of_control"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#increased_heartbeat"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intense_anguish"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nausea"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_attacks"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paresthesias"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sweating"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#tremors"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#vomiting"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:onClass>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">ICD 10 code: F41.0</rdfs:comment>
        <rdfs:comment xml:lang="en">This class refers to the main concept of the Panic Disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">panic_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">transtorno_do_panico</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paresthesias -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paresthesias">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">parestesia</rdfs:label>
        <rdfs:label xml:lang="en">paresthesias</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient">
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to the main concept of Patient.</rdfs:comment>
        <rdfs:label xml:lang="pt">paciente</rdfs:label>
        <rdfs:label xml:lang="en">patient</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">6</xsd:minInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Generalized Anxiety Disorder (GAD).</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_gad</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_tag</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">0</xsd:minInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Obsessive Compulsive Disorder (OCD).</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_ocd</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_toc</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">0</xsd:minInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Panic Disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_panic_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_transtorno_do_panico</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
                    </owl:Restriction>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                        <owl:someValuesFrom>
                            <rdfs:Datatype>
                                <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                <owl:withRestrictions rdf:parseType="Collection">
                                    <rdf:Description>
                                        <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">0</xsd:minInclusive>
                                    </rdf:Description>
                                </owl:withRestrictions>
                            </rdfs:Datatype>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                        <owl:someValuesFrom>
                            <rdfs:Datatype>
                                <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                <owl:withRestrictions rdf:parseType="Collection">
                                    <rdf:Description>
                                        <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                    </rdf:Description>
                                </owl:withRestrictions>
                            </rdfs:Datatype>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Post-Traumatic Stress Disorder (PTSD).</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_ptsd</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_tept</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">6</xsd:minInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Social Anxiety Disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_social_anxiety_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_transtorno_de_ansiedade_social</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_anxiety_disorder"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:minInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">6</xsd:minInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#time_with_symptoms"/>
                                <owl:someValuesFrom>
                                    <rdfs:Datatype>
                                        <owl:onDatatype rdf:resource="http://www.w3.org/2001/XMLSchema#int"/>
                                        <owl:withRestrictions rdf:parseType="Collection">
                                            <rdf:Description>
                                                <xsd:maxInclusive rdf:datatype="http://www.w3.org/2001/XMLSchema#int">1080</xsd:maxInclusive>
                                            </rdf:Description>
                                        </owl:withRestrictions>
                                    </rdfs:Datatype>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:comment xml:lang="en">This class is used to classify the patients with Specific Phobia Disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">patient_with_specific_phobia_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_paciente_com_transtorno_de_fobia_especifica</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#performance_situations -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#performance_situations">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to situations where the patient needs to perform a particular task in front of others and that task requires good performance, in which an anxiety disorder may express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="en">performance_situations</rdfs:label>
        <rdfs:label xml:lang="pt">situacoes_de_performance</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        <owl:disjointWith rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:comment xml:lang="en">This class refers to the phisical symptoms used to diagnose an anxiety disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">physical_symptoms</rdfs:label>
        <rdfs:label xml:lang="pt">sintomas_fisicos</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_avoidant_personality_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_avoidant_personality_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_avoidant_personality_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_de_personalidade_evitativa</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_bipolar_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_bipolar_disorders">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom>
                            <owl:Class>
                                <owl:unionOf rdf:parseType="Collection">
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                                </owl:unionOf>
                            </owl:Class>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_bipolar_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtornos_bipolares</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_dependent_personality_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_dependent_personality_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_dependent_personality_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_de_personalidade_dependente</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_depressive_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_depressive_disorders">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom>
                            <owl:Class>
                                <owl:unionOf rdf:parseType="Collection">
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                                </owl:unionOf>
                            </owl:Class>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_depressive_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtornos_depressivos</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_dysmorphic_body_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_dysmorphic_body_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_dysmorphic_body_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_dismorfico_corporal</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_major_depressive_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_major_depressive_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom>
                            <owl:Class>
                                <owl:unionOf rdf:parseType="Collection">
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_social_anxiety_disorder"/>
                                </owl:unionOf>
                            </owl:Class>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_major_depressive_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_depressivo_maior</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_obsessive_compulsive_personality_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_obsessive_compulsive_personality_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_obsessive_compulsive_personality_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_de_personalidade_obsessiva_compulsiva</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_other_anxiety_disorders -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_other_anxiety_disorders">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom>
                            <owl:Class>
                                <owl:unionOf rdf:parseType="Collection">
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_gad"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ocd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_panic_disorder"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_ptsd"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
                                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder"/>
                                </owl:unionOf>
                            </owl:Class>
                        </owl:someValuesFrom>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_other_anxiety_disorders</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_com_outros_transtornos_de_ansiedade</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_somatic_symptoms_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#possible_relation_with_somatic_symptoms_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#can_be_related_with"/>
                        <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient_with_specific_phobia_disorder"/>
                    </owl:Restriction>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:label xml:lang="en">possible_relation_with_somatic_symptoms_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">possivel_relacao_com_transtorno_de_sintomas_somaticos</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        <rdfs:comment xml:lang="en">This class refers to the psychological symptoms used to diagnose an anxiety disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">psychological_symptoms</rdfs:label>
        <rdfs:label xml:lang="pt">sintomas_psicologicos</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#traumatic_experience"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#analepse"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exaggerated_startle_response"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#frequent_nightmares"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#hypervigilance"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_and_recurrent_memories"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sleep_changes"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:comment xml:lang="en">ICD 10 code: F43.1</rdfs:comment>
        <rdfs:comment xml:lang="en">This class refers to the main concept of the Post-Traumatic Stress Disorder.

P.S.: According to the ICD-10 and the DSM-V, this disorder is no longer classified as an anxiety disorder, due to its particular characteristics.</rdfs:comment>
        <rdfs:label xml:lang="en">ptsd</rdfs:label>
        <rdfs:label xml:lang="pt">tept</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#puplic_situations -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#puplic_situations">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to public situations that activate the symptoms of a particular anxiety disorder.</rdfs:comment>
        <rdfs:label xml:lang="en">public_situations</rdfs:label>
        <rdfs:label xml:lang="pt">situacoes_publicas</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#repetitive_behaviors -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#repetitive_behaviors">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">comportamentos_repetitivos</rdfs:label>
        <rdfs:label xml:lang="en">repetitive_behaviors</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#restlessness -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#restlessness">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">cansaco</rdfs:label>
        <rdfs:label xml:lang="en">restlessness</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ritualistic_behavior -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ritualistic_behavior">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">comportamento_ritualistico</rdfs:label>
        <rdfs:label xml:lang="en">ritualistic_behavior</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ocd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">sensacao_de_desfecho_negativo</rdfs:label>
        <rdfs:label xml:lang="en">sensation_of_negative_outcome</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations">
        <rdfs:comment xml:lang="en">The main objective of this class is to group the main situations where the anxiety disorders symptoms become noticeable, to the individual itself or to others.</rdfs:comment>
        <rdfs:label xml:lang="pt">situacoes</rdfs:label>
        <rdfs:label xml:lang="en">situations</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sleep_changes -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sleep_changes">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#psychological_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#gad"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">alteracoes_no_sono</rdfs:label>
        <rdfs:label xml:lang="en">sleep_changes</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_rated"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#performance_situations"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#puplic_situations"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_events"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_interactions"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:comment xml:lang="en">ICD 10 code: F40.10</rdfs:comment>
        <rdfs:comment xml:lang="en">The present class has the objective of represent the concept of the Social Anxiety Disorder, also known as Social Phobia.</rdfs:comment>
        <rdfs:label xml:lang="en">social_anxiety_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">transtorno_de_ansiedade_social</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_events -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_events">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to social situations in which an anxiety disorder may express its symptoms, such as parties and so on.</rdfs:comment>
        <rdfs:label xml:lang="pt">eventos_sociais</rdfs:label>
        <rdfs:label xml:lang="en">social_events</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_interactions -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_interactions">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_anxiety_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to everyday social situations in which an anxiety disorder may express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="pt">interacoes_sociais</rdfs:label>
        <rdfs:label xml:lang="en">social_interactions</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#specific_phobia_disorder">
        <owl:equivalentClass>
            <owl:Class>
                <owl:intersectionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
                    <owl:Class>
                        <owl:intersectionOf rdf:parseType="Collection">
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_situation"/>
                                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_in_the_presence_of_specific_situation"/>
                            </owl:Restriction>
                            <owl:Restriction>
                                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#has_symptom"/>
                                <owl:someValuesFrom>
                                    <owl:Class>
                                        <owl:unionOf rdf:parseType="Collection">
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry"/>
                                            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irrational_fear"/>
                                        </owl:unionOf>
                                    </owl:Class>
                                </owl:someValuesFrom>
                            </owl:Restriction>
                        </owl:intersectionOf>
                    </owl:Class>
                </owl:intersectionOf>
            </owl:Class>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#major_anxiety_disorders"/>
        <rdfs:comment xml:lang="en">The ICD 10 code for this disorder depends on its variation.</rdfs:comment>
        <rdfs:comment xml:lang="en">The present class is responsible to represent the concepts of Specifc Phobias, such as Pyrophobia, Arachnophobia and so on.</rdfs:comment>
        <rdfs:label xml:lang="en">specific_phobia_disorder</rdfs:label>
        <rdfs:label xml:lang="pt">transtorno_de_fobia_especifica</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sweating -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sweating">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">sudorese</rdfs:label>
        <rdfs:label xml:lang="en">sweating</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms">
        <rdfs:label xml:lang="en">This class refers to the main symptoms associated to the major anxiety disorders.</rdfs:label>
        <rdfs:label xml:lang="pt">sintomas</rdfs:label>
        <rdfs:label xml:lang="en">symptoms</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#traumatic_experience -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#traumatic_experience">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_situation_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ptsd"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment xml:lang="en">This class refers to the traumatic events in which an anxiety disorder may express its symptoms.</rdfs:comment>
        <rdfs:label xml:lang="pt">experiencia_traumatica</rdfs:label>
        <rdfs:label xml:lang="en">traumatic_experience</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#tremors -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#tremors">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="pt">tremores</rdfs:label>
        <rdfs:label xml:lang="en">tremors</rdfs:label>
    </owl:Class>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#vomiting -->

    <owl:Class rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#vomiting">
        <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#physical_symptoms"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#is_symptom_of"/>
                <owl:someValuesFrom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_disorder"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label xml:lang="en">vomiting</rdfs:label>
        <rdfs:label xml:lang="pt">vomitos</rdfs:label>
    </owl:Class>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Individuals
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidade -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidade">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
        <untitled-ontology-49:can_be_related_with rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#voluntario02"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma1 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma1">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma10 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma10">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma11 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma11">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#tremors"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma2 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma2">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#restlessness"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma3 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma3">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#compulsions"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma4 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma4">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma5 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma5">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma6 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma6">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_and_recurrent_memories"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma7 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma7">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nervousness"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma8 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma8">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma9 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma9">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#feeling_of_being_out_of_control"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao1 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao1">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_in_the_presence_of_specific_situation"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao2 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao2">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_events"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao3 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao3">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exposure_to_high_stress_load"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao4 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao4">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_interactions"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao5 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao5">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_rated"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao6 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao6">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#daily_situations"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao7 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao7">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#puplic_situations"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#transtorno -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#transtorno">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#anxiety_disorders"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao1"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao2"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao3"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao4"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao5"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao6"/>
        <untitled-ontology-49:has_situation rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situacao7"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma1"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma2"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma3"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma4"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma5"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma6"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma7"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma8"/>
        <untitled-ontology-49:has_symptom rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sintoma9"/>
    </owl:NamedIndividual>
    


    <!-- http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#voluntario02 -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#voluntario02">
        <rdf:type rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
        <untitled-ontology-49:has_anxiety_disorder rdf:resource="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#transtorno"/>
        <untitled-ontology-49:time_with_symptoms rdf:datatype="http://www.w3.org/2001/XMLSchema#int">18</untitled-ontology-49:time_with_symptoms>
    </owl:NamedIndividual>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // General axioms
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    <rdf:Description>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#AllDisjointClasses"/>
        <owl:members rdf:parseType="Collection">
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#abdominal_discomfort"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#choking_sensation"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#dizziness"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fatigability"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#increased_heartbeat"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_aches"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#muscle_tension"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nausea"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#paresthesias"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sweating"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#tremors"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#vomiting"/>
        </owl:members>
    </rdf:Description>
    <rdf:Description>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#AllDisjointClasses"/>
        <owl:members rdf:parseType="Collection">
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#analepse"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#catastrophe_sensation"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#compulsions"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#difficulty_concentrating"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exaggerated_startle_response"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_anxiety"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_fear"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#excessive_worry"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_of_losing_control"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#fear_to_die"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#feeling_of_being_out_of_control"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#frequent_nightmares"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#hypervigilance"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#impulsiveness"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intense_anguish"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_and_recurrent_memories"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#intrusive_thoughts"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irrational_fear"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#irritability"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#nervousness"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#obsessions"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#panic_attacks"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#repetitive_behaviors"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#restlessness"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#ritualistic_behavior"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sensation_of_negative_outcome"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#sleep_changes"/>
        </owl:members>
    </rdf:Description>
    <rdf:Description>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#AllDisjointClasses"/>
        <owl:members rdf:parseType="Collection">
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_in_the_presence_of_specific_situation"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#be_rated"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#daily_situations"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#exposure_to_high_stress_load"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#no_specific_situation"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#performance_situations"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#puplic_situations"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_events"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#social_interactions"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#traumatic_experience"/>
        </owl:members>
    </rdf:Description>
    <rdf:Description>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#AllDisjointClasses"/>
        <owl:members rdf:parseType="Collection">
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#comorbidities"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#mental_disorders"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#patient"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#situations"/>
            <rdf:Description rdf:about="http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#symptoms"/>
        </owl:members>
    </rdf:Description>
</rdf:RDF>



<!-- Generated by the OWL API (version 4.5.9.2019-02-01T07:24:44Z) https://github.com/owlcs/owlapi -->

                                                                                                                                                                                                                                                                                                                                                                                  blobs.toc                                                                                           0000600 0004000 0002000 00000000052 13657224136 0014776 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        25175 blob_25175.dat
25203 blob_25203.dat
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      restore.sql                                                                                         0000600 0004000 0002000 00000045304 13657224136 0015403 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

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

ALTER TABLE ONLY public.sintomas_casos_sintoma DROP CONSTRAINT fkshn9w1tb0yupqgqh7x4baoyb9;
ALTER TABLE ONLY public.sintomas_casos_sintoma DROP CONSTRAINT fkk16n3p14gx3q5c9k5okt2986o;
ALTER TABLE ONLY public.transtornos_casos_transtorno DROP CONSTRAINT fkjbk0s0rhrckppc5m4kpdgxuyp;
ALTER TABLE ONLY public.situacoes_casos_situacao DROP CONSTRAINT fke9fyndbcbtghfwm63v8q4mq2g;
ALTER TABLE ONLY public.situacoes_casos_situacao DROP CONSTRAINT fka5qt2708w69bvo9vqlwo6awfk;
ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente DROP CONSTRAINT fka0b8sp7ae12r08onre6wosdvw;
ALTER TABLE ONLY public.comorbidades_casos_comorbidade DROP CONSTRAINT fk7vhesdwsvhm3xrs9j51x0davp;
ALTER TABLE ONLY public.comorbidades_casos_comorbidade DROP CONSTRAINT fk631ud4vvcd9pnfn3bqqwdgxc;
ALTER TABLE ONLY public.transtornos_casos_transtorno DROP CONSTRAINT fk2alfd0ixino5svrhp5tx08c21;
ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente DROP CONSTRAINT fk1n6e18dqux9e35eofdeef5iyd;
ALTER TABLE ONLY public.situacoes DROP CONSTRAINT uk_tipbwnu8rdidjga0fyp63qwqs;
ALTER TABLE ONLY public.sintomas DROP CONSTRAINT uk_o2x70ly8thlub7up6oyrwo84c;
ALTER TABLE ONLY public.situacoes DROP CONSTRAINT uk_nql81wq9wvia0k0id0asvyr8y;
ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT uk_m6o9a8frhh1f085pdfxvn3359;
ALTER TABLE ONLY public.transtornos DROP CONSTRAINT uk_lr0q6nekf1dxyd3ww1jwlcdq5;
ALTER TABLE ONLY public.sintomas DROP CONSTRAINT uk_jwwfk8yol1bvef4j0ooo4bnh3;
ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT uk_fjotqve1odc6gf17lb1j0kry3;
ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT uk_89hh0lxwd8t9smn8ir9si198o;
ALTER TABLE ONLY public.transtornos DROP CONSTRAINT uk_7ru0l8jlctb2ri3uu3vfip503;
ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT uk_3vxvcnd2501ps9cgibjvp7hli;
ALTER TABLE ONLY public.transtornos DROP CONSTRAINT transtornos_pkey;
ALTER TABLE ONLY public.tipos_paciente DROP CONSTRAINT tipos_paciente_pkey;
ALTER TABLE ONLY public.situacoes DROP CONSTRAINT situacoes_pkey;
ALTER TABLE ONLY public.sintomas DROP CONSTRAINT sintomas_pkey;
ALTER TABLE ONLY public.ontologia DROP CONSTRAINT ontologia_pkey;
ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT comorbidades_pkey;
ALTER TABLE ONLY public.casos DROP CONSTRAINT casos_pkey;
SELECT pg_catalog.lo_unlink('25203');
SELECT pg_catalog.lo_unlink('25175');
DROP TABLE public.transtornos_casos_transtorno;
DROP TABLE public.transtornos;
DROP TABLE public.tipos_paciente_casos_tipo_paciente;
DROP TABLE public.tipos_paciente;
DROP TABLE public.situacoes_casos_situacao;
DROP TABLE public.situacoes;
DROP TABLE public.sintomas_casos_sintoma;
DROP TABLE public.sintomas;
DROP TABLE public.ontologia;
DROP SEQUENCE public.hibernate_sequence;
DROP TABLE public.comorbidades_casos_comorbidade;
DROP TABLE public.comorbidades;
DROP TABLE public.casos;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: casos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.casos (
    codigo_caso bigint NOT NULL,
    data_registro_caso timestamp without time zone,
    tempo_sintomas_caso integer
);


ALTER TABLE public.casos OWNER TO postgres;

--
-- Name: comorbidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comorbidades (
    codigo_comorbidade bigint NOT NULL,
    iri_comorbidade character varying(255) NOT NULL,
    nome_comorbidade character varying(255) NOT NULL
);


ALTER TABLE public.comorbidades OWNER TO postgres;

--
-- Name: comorbidades_casos_comorbidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comorbidades_casos_comorbidade (
    comorbidades_caso_codigo_comorbidade bigint NOT NULL,
    casos_comorbidade_codigo_caso bigint NOT NULL
);


ALTER TABLE public.comorbidades_casos_comorbidade OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: ontologia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ontologia (
    codigo_ontologia bigint NOT NULL,
    data_ontologia timestamp without time zone,
    versao_ontologia bytea
);


ALTER TABLE public.ontologia OWNER TO postgres;

--
-- Name: sintomas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sintomas (
    codigo_sintoma bigint NOT NULL,
    iri_sintoma character varying(255) NOT NULL,
    nome_sintoma character varying(255) NOT NULL,
    tipo_sintoma character varying(255) NOT NULL
);


ALTER TABLE public.sintomas OWNER TO postgres;

--
-- Name: sintomas_casos_sintoma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sintomas_casos_sintoma (
    sintomas_caso_codigo_sintoma bigint NOT NULL,
    casos_sintoma_codigo_caso bigint NOT NULL
);


ALTER TABLE public.sintomas_casos_sintoma OWNER TO postgres;

--
-- Name: situacoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.situacoes (
    codigo_situacao bigint NOT NULL,
    iri_situacao character varying(255) NOT NULL,
    nome_situacao character varying(255) NOT NULL
);


ALTER TABLE public.situacoes OWNER TO postgres;

--
-- Name: situacoes_casos_situacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.situacoes_casos_situacao (
    situacoes_caso_codigo_situacao bigint NOT NULL,
    casos_situacao_codigo_caso bigint NOT NULL
);


ALTER TABLE public.situacoes_casos_situacao OWNER TO postgres;

--
-- Name: tipos_paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_paciente (
    codigo_tipo_paciente bigint NOT NULL,
    iri_tipo_paciente character varying(255) NOT NULL,
    nome_tipo_paciente character varying(255) NOT NULL
);


ALTER TABLE public.tipos_paciente OWNER TO postgres;

--
-- Name: tipos_paciente_casos_tipo_paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_paciente_casos_tipo_paciente (
    tipos_paciente_caso_codigo_tipo_paciente bigint NOT NULL,
    casos_tipo_paciente_codigo_caso bigint NOT NULL
);


ALTER TABLE public.tipos_paciente_casos_tipo_paciente OWNER TO postgres;

--
-- Name: transtornos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transtornos (
    codigo_transtorno bigint NOT NULL,
    iri_transtorno character varying(255) NOT NULL,
    nome_transtorno character varying(255) NOT NULL
);


ALTER TABLE public.transtornos OWNER TO postgres;

--
-- Name: transtornos_casos_transtorno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transtornos_casos_transtorno (
    transtornos_caso_codigo_transtorno bigint NOT NULL,
    casos_transtorno_codigo_caso bigint NOT NULL
);


ALTER TABLE public.transtornos_casos_transtorno OWNER TO postgres;

--
-- Name: 25175; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('25175');


ALTER LARGE OBJECT 25175 OWNER TO postgres;

--
-- Name: 25203; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('25203');


ALTER LARGE OBJECT 25203 OWNER TO postgres;

--
-- Data for Name: casos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.casos (codigo_caso, data_registro_caso, tempo_sintomas_caso) FROM stdin;
\.
COPY public.casos (codigo_caso, data_registro_caso, tempo_sintomas_caso) FROM '$$PATH$$/2885.dat';

--
-- Data for Name: comorbidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comorbidades (codigo_comorbidade, iri_comorbidade, nome_comorbidade) FROM stdin;
\.
COPY public.comorbidades (codigo_comorbidade, iri_comorbidade, nome_comorbidade) FROM '$$PATH$$/2886.dat';

--
-- Data for Name: comorbidades_casos_comorbidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comorbidades_casos_comorbidade (comorbidades_caso_codigo_comorbidade, casos_comorbidade_codigo_caso) FROM stdin;
\.
COPY public.comorbidades_casos_comorbidade (comorbidades_caso_codigo_comorbidade, casos_comorbidade_codigo_caso) FROM '$$PATH$$/2887.dat';

--
-- Data for Name: ontologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ontologia (codigo_ontologia, data_ontologia, versao_ontologia) FROM stdin;
\.
COPY public.ontologia (codigo_ontologia, data_ontologia, versao_ontologia) FROM '$$PATH$$/2897.dat';

--
-- Data for Name: sintomas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sintomas (codigo_sintoma, iri_sintoma, nome_sintoma, tipo_sintoma) FROM stdin;
\.
COPY public.sintomas (codigo_sintoma, iri_sintoma, nome_sintoma, tipo_sintoma) FROM '$$PATH$$/2888.dat';

--
-- Data for Name: sintomas_casos_sintoma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sintomas_casos_sintoma (sintomas_caso_codigo_sintoma, casos_sintoma_codigo_caso) FROM stdin;
\.
COPY public.sintomas_casos_sintoma (sintomas_caso_codigo_sintoma, casos_sintoma_codigo_caso) FROM '$$PATH$$/2889.dat';

--
-- Data for Name: situacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.situacoes (codigo_situacao, iri_situacao, nome_situacao) FROM stdin;
\.
COPY public.situacoes (codigo_situacao, iri_situacao, nome_situacao) FROM '$$PATH$$/2890.dat';

--
-- Data for Name: situacoes_casos_situacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.situacoes_casos_situacao (situacoes_caso_codigo_situacao, casos_situacao_codigo_caso) FROM stdin;
\.
COPY public.situacoes_casos_situacao (situacoes_caso_codigo_situacao, casos_situacao_codigo_caso) FROM '$$PATH$$/2891.dat';

--
-- Data for Name: tipos_paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_paciente (codigo_tipo_paciente, iri_tipo_paciente, nome_tipo_paciente) FROM stdin;
\.
COPY public.tipos_paciente (codigo_tipo_paciente, iri_tipo_paciente, nome_tipo_paciente) FROM '$$PATH$$/2892.dat';

--
-- Data for Name: tipos_paciente_casos_tipo_paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_paciente_casos_tipo_paciente (tipos_paciente_caso_codigo_tipo_paciente, casos_tipo_paciente_codigo_caso) FROM stdin;
\.
COPY public.tipos_paciente_casos_tipo_paciente (tipos_paciente_caso_codigo_tipo_paciente, casos_tipo_paciente_codigo_caso) FROM '$$PATH$$/2893.dat';

--
-- Data for Name: transtornos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transtornos (codigo_transtorno, iri_transtorno, nome_transtorno) FROM stdin;
\.
COPY public.transtornos (codigo_transtorno, iri_transtorno, nome_transtorno) FROM '$$PATH$$/2894.dat';

--
-- Data for Name: transtornos_casos_transtorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transtornos_casos_transtorno (transtornos_caso_codigo_transtorno, casos_transtorno_codigo_caso) FROM stdin;
\.
COPY public.transtornos_casos_transtorno (transtornos_caso_codigo_transtorno, casos_transtorno_codigo_caso) FROM '$$PATH$$/2895.dat';

--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 3, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: 
--

\i $$PATH$$/2900.dat

--
-- Name: casos casos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.casos
    ADD CONSTRAINT casos_pkey PRIMARY KEY (codigo_caso);


--
-- Name: comorbidades comorbidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT comorbidades_pkey PRIMARY KEY (codigo_comorbidade);


--
-- Name: ontologia ontologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ontologia
    ADD CONSTRAINT ontologia_pkey PRIMARY KEY (codigo_ontologia);


--
-- Name: sintomas sintomas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT sintomas_pkey PRIMARY KEY (codigo_sintoma);


--
-- Name: situacoes situacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT situacoes_pkey PRIMARY KEY (codigo_situacao);


--
-- Name: tipos_paciente tipos_paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT tipos_paciente_pkey PRIMARY KEY (codigo_tipo_paciente);


--
-- Name: transtornos transtornos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT transtornos_pkey PRIMARY KEY (codigo_transtorno);


--
-- Name: comorbidades uk_3vxvcnd2501ps9cgibjvp7hli; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT uk_3vxvcnd2501ps9cgibjvp7hli UNIQUE (nome_comorbidade);


--
-- Name: transtornos uk_7ru0l8jlctb2ri3uu3vfip503; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT uk_7ru0l8jlctb2ri3uu3vfip503 UNIQUE (nome_transtorno);


--
-- Name: tipos_paciente uk_89hh0lxwd8t9smn8ir9si198o; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT uk_89hh0lxwd8t9smn8ir9si198o UNIQUE (nome_tipo_paciente);


--
-- Name: comorbidades uk_fjotqve1odc6gf17lb1j0kry3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT uk_fjotqve1odc6gf17lb1j0kry3 UNIQUE (iri_comorbidade);


--
-- Name: sintomas uk_jwwfk8yol1bvef4j0ooo4bnh3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT uk_jwwfk8yol1bvef4j0ooo4bnh3 UNIQUE (nome_sintoma);


--
-- Name: transtornos uk_lr0q6nekf1dxyd3ww1jwlcdq5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transtornos
    ADD CONSTRAINT uk_lr0q6nekf1dxyd3ww1jwlcdq5 UNIQUE (iri_transtorno);


--
-- Name: tipos_paciente uk_m6o9a8frhh1f085pdfxvn3359; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_paciente
    ADD CONSTRAINT uk_m6o9a8frhh1f085pdfxvn3359 UNIQUE (iri_tipo_paciente);


--
-- Name: situacoes uk_nql81wq9wvia0k0id0asvyr8y; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT uk_nql81wq9wvia0k0id0asvyr8y UNIQUE (nome_situacao);


--
-- Name: sintomas uk_o2x70ly8thlub7up6oyrwo84c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT uk_o2x70ly8thlub7up6oyrwo84c UNIQUE (iri_sintoma);


--
-- Name: situacoes uk_tipbwnu8rdidjga0fyp63qwqs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situacoes
    ADD CONSTRAINT uk_tipbwnu8rdidjga0fyp63qwqs UNIQUE (iri_situacao);


--
-- Name: tipos_paciente_casos_tipo_paciente fk1n6e18dqux9e35eofdeef5iyd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente
    ADD CONSTRAINT fk1n6e18dqux9e35eofdeef5iyd FOREIGN KEY (tipos_paciente_caso_codigo_tipo_paciente) REFERENCES public.tipos_paciente(codigo_tipo_paciente);


--
-- Name: transtornos_casos_transtorno fk2alfd0ixino5svrhp5tx08c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transtornos_casos_transtorno
    ADD CONSTRAINT fk2alfd0ixino5svrhp5tx08c21 FOREIGN KEY (transtornos_caso_codigo_transtorno) REFERENCES public.transtornos(codigo_transtorno);


--
-- Name: comorbidades_casos_comorbidade fk631ud4vvcd9pnfn3bqqwdgxc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidades_casos_comorbidade
    ADD CONSTRAINT fk631ud4vvcd9pnfn3bqqwdgxc FOREIGN KEY (casos_comorbidade_codigo_caso) REFERENCES public.casos(codigo_caso);


--
-- Name: comorbidades_casos_comorbidade fk7vhesdwsvhm3xrs9j51x0davp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidades_casos_comorbidade
    ADD CONSTRAINT fk7vhesdwsvhm3xrs9j51x0davp FOREIGN KEY (comorbidades_caso_codigo_comorbidade) REFERENCES public.comorbidades(codigo_comorbidade);


--
-- Name: tipos_paciente_casos_tipo_paciente fka0b8sp7ae12r08onre6wosdvw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_paciente_casos_tipo_paciente
    ADD CONSTRAINT fka0b8sp7ae12r08onre6wosdvw FOREIGN KEY (casos_tipo_paciente_codigo_caso) REFERENCES public.casos(codigo_caso);


--
-- Name: situacoes_casos_situacao fka5qt2708w69bvo9vqlwo6awfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situacoes_casos_situacao
    ADD CONSTRAINT fka5qt2708w69bvo9vqlwo6awfk FOREIGN KEY (casos_situacao_codigo_caso) REFERENCES public.casos(codigo_caso);


--
-- Name: situacoes_casos_situacao fke9fyndbcbtghfwm63v8q4mq2g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situacoes_casos_situacao
    ADD CONSTRAINT fke9fyndbcbtghfwm63v8q4mq2g FOREIGN KEY (situacoes_caso_codigo_situacao) REFERENCES public.situacoes(codigo_situacao);


--
-- Name: transtornos_casos_transtorno fkjbk0s0rhrckppc5m4kpdgxuyp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transtornos_casos_transtorno
    ADD CONSTRAINT fkjbk0s0rhrckppc5m4kpdgxuyp FOREIGN KEY (casos_transtorno_codigo_caso) REFERENCES public.casos(codigo_caso);


--
-- Name: sintomas_casos_sintoma fkk16n3p14gx3q5c9k5okt2986o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas_casos_sintoma
    ADD CONSTRAINT fkk16n3p14gx3q5c9k5okt2986o FOREIGN KEY (sintomas_caso_codigo_sintoma) REFERENCES public.sintomas(codigo_sintoma);


--
-- Name: sintomas_casos_sintoma fkshn9w1tb0yupqgqh7x4baoyb9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas_casos_sintoma
    ADD CONSTRAINT fkshn9w1tb0yupqgqh7x4baoyb9 FOREIGN KEY (casos_sintoma_codigo_caso) REFERENCES public.casos(codigo_caso);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            