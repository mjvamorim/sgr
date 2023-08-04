PGDMP         
    
            {            postgres    15.1    15.3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     p   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4000            �           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                   postgres    false    4000            �           0    0    postgres    DATABASE PROPERTIES     �   ALTER DATABASE postgres SET "app.settings.jwt_secret" TO 'n4S4J5MaLHlurNNVd/IMBQW8EYpXSzFXdLYO25LV43yap60zF1FbsmPi6AbOiGA1l27DGZtDajW4JWUwp632FQ==';
ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    16            �           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                   pg_database_owner    false    16                       1259    29098    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false    16            �           0    0    TABLE alembic_version    ACL     �   GRANT ALL ON TABLE public.alembic_version TO anon;
GRANT ALL ON TABLE public.alembic_version TO authenticated;
GRANT ALL ON TABLE public.alembic_version TO service_role;
          public          postgres    false    263                       1259    29101    bairros    TABLE       CREATE TABLE public.bairros (
    id integer NOT NULL,
    cidade character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    bairro character varying(30) NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.bairros;
       public         heap    postgres    false    16            �           0    0    TABLE bairros    ACL     �   GRANT ALL ON TABLE public.bairros TO anon;
GRANT ALL ON TABLE public.bairros TO authenticated;
GRANT ALL ON TABLE public.bairros TO service_role;
          public          postgres    false    264            	           1259    29105    bairros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bairros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bairros_id_seq;
       public          postgres    false    264    16            �           0    0    bairros_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bairros_id_seq OWNED BY public.bairros.id;
          public          postgres    false    265            �           0    0    SEQUENCE bairros_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.bairros_id_seq TO anon;
GRANT ALL ON SEQUENCE public.bairros_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.bairros_id_seq TO service_role;
          public          postgres    false    265            
           1259    29106 	   campanhas    TABLE     J  CREATE TABLE public.campanhas (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    cupom character varying(30) NOT NULL,
    status character varying(20),
    expired boolean,
    empresa character varying(30),
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.campanhas;
       public         heap    postgres    false    16            �           0    0    TABLE campanhas    ACL     �   GRANT ALL ON TABLE public.campanhas TO anon;
GRANT ALL ON TABLE public.campanhas TO authenticated;
GRANT ALL ON TABLE public.campanhas TO service_role;
          public          postgres    false    266                       1259    29110    campanhas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campanhas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.campanhas_id_seq;
       public          postgres    false    266    16            �           0    0    campanhas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.campanhas_id_seq OWNED BY public.campanhas.id;
          public          postgres    false    267            �           0    0    SEQUENCE campanhas_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.campanhas_id_seq TO anon;
GRANT ALL ON SEQUENCE public.campanhas_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.campanhas_id_seq TO service_role;
          public          postgres    false    267                       1259    29111 	   catadores    TABLE     I  CREATE TABLE public.catadores (
    id integer NOT NULL,
    img_url character varying(200),
    cpf character varying(14) NOT NULL,
    score double precision,
    nrcoletas integer,
    user_id integer,
    empresa_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.catadores;
       public         heap    postgres    false    16            �           0    0    TABLE catadores    ACL     �   GRANT ALL ON TABLE public.catadores TO anon;
GRANT ALL ON TABLE public.catadores TO authenticated;
GRANT ALL ON TABLE public.catadores TO service_role;
          public          postgres    false    268                       1259    29115    catadores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.catadores_id_seq;
       public          postgres    false    268    16            �           0    0    catadores_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.catadores_id_seq OWNED BY public.catadores.id;
          public          postgres    false    269            �           0    0    SEQUENCE catadores_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.catadores_id_seq TO anon;
GRANT ALL ON SEQUENCE public.catadores_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.catadores_id_seq TO service_role;
          public          postgres    false    269                       1259    29116    coletas    TABLE     @  CREATE TABLE public.coletas (
    id integer NOT NULL,
    img character varying(200),
    date timestamp without time zone NOT NULL,
    hour character varying(8) NOT NULL,
    address character varying(200) NOT NULL,
    complement character varying(200),
    number character varying(10) NOT NULL,
    neighbourhood character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    cep character varying(10) NOT NULL,
    h3_geo character varying(64),
    latitude double precision,
    longitude double precision,
    entregue boolean,
    token character varying(6),
    valor double precision NOT NULL,
    gorjeta double precision,
    scr double precision,
    cancelada boolean,
    checkin boolean,
    prioridade integer,
    comum_id integer,
    catador_id integer,
    empresa_id integer,
    grupo_id integer,
    campanha_cupom character varying(30),
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    coleta_recorrente_id integer,
    grande_gerador_id integer
);
    DROP TABLE public.coletas;
       public         heap    postgres    false    16            �           0    0    TABLE coletas    ACL     �   GRANT ALL ON TABLE public.coletas TO anon;
GRANT ALL ON TABLE public.coletas TO authenticated;
GRANT ALL ON TABLE public.coletas TO service_role;
          public          postgres    false    270                       1259    29122    coletas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coletas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.coletas_id_seq;
       public          postgres    false    16    270            �           0    0    coletas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.coletas_id_seq OWNED BY public.coletas.id;
          public          postgres    false    271            �           0    0    SEQUENCE coletas_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.coletas_id_seq TO anon;
GRANT ALL ON SEQUENCE public.coletas_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.coletas_id_seq TO service_role;
          public          postgres    false    271                       1259    29123    coletas_recorrentes    TABLE     D  CREATE TABLE public.coletas_recorrentes (
    id integer NOT NULL,
    hour character varying(8) NOT NULL,
    address character varying(200) NOT NULL,
    complement character varying(200),
    number character varying(10) NOT NULL,
    neighbourhood character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    cep character varying(10) NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    weekday character varying NOT NULL,
    user_id integer NOT NULL
);
 '   DROP TABLE public.coletas_recorrentes;
       public         heap    postgres    false    16            �           0    0    TABLE coletas_recorrentes    ACL     �   GRANT ALL ON TABLE public.coletas_recorrentes TO anon;
GRANT ALL ON TABLE public.coletas_recorrentes TO authenticated;
GRANT ALL ON TABLE public.coletas_recorrentes TO service_role;
          public          postgres    false    272                       1259    29129    coletas_recorrentes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coletas_recorrentes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.coletas_recorrentes_id_seq;
       public          postgres    false    272    16            �           0    0    coletas_recorrentes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.coletas_recorrentes_id_seq OWNED BY public.coletas_recorrentes.id;
          public          postgres    false    273            �           0    0 #   SEQUENCE coletas_recorrentes_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.coletas_recorrentes_id_seq TO anon;
GRANT ALL ON SEQUENCE public.coletas_recorrentes_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.coletas_recorrentes_id_seq TO service_role;
          public          postgres    false    273                       1259    29130    comum    TABLE     �   CREATE TABLE public.comum (
    id integer NOT NULL,
    user_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.comum;
       public         heap    postgres    false    16            �           0    0    TABLE comum    ACL     �   GRANT ALL ON TABLE public.comum TO anon;
GRANT ALL ON TABLE public.comum TO authenticated;
GRANT ALL ON TABLE public.comum TO service_role;
          public          postgres    false    274                       1259    29134    comum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.comum_id_seq;
       public          postgres    false    16    274            �           0    0    comum_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.comum_id_seq OWNED BY public.comum.id;
          public          postgres    false    275            �           0    0    SEQUENCE comum_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.comum_id_seq TO anon;
GRANT ALL ON SEQUENCE public.comum_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.comum_id_seq TO service_role;
          public          postgres    false    275                       1259    29135    empresa_materiais    TABLE     u  CREATE TABLE public.empresa_materiais (
    id integer NOT NULL,
    faz_coleta boolean,
    compra boolean,
    coleta boolean,
    faz_logistica_reversa boolean,
    fabrica boolean,
    recicla boolean,
    empresa_id integer NOT NULL,
    material_id integer NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
 %   DROP TABLE public.empresa_materiais;
       public         heap    postgres    false    16            �           0    0    TABLE empresa_materiais    ACL     �   GRANT ALL ON TABLE public.empresa_materiais TO anon;
GRANT ALL ON TABLE public.empresa_materiais TO authenticated;
GRANT ALL ON TABLE public.empresa_materiais TO service_role;
          public          postgres    false    276                       1259    29139    empresa_materiais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empresa_materiais_id_seq;
       public          postgres    false    16    276            �           0    0    empresa_materiais_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empresa_materiais_id_seq OWNED BY public.empresa_materiais.id;
          public          postgres    false    277            �           0    0 !   SEQUENCE empresa_materiais_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.empresa_materiais_id_seq TO anon;
GRANT ALL ON SEQUENCE public.empresa_materiais_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.empresa_materiais_id_seq TO service_role;
          public          postgres    false    277                       1259    29140    empresas    TABLE       CREATE TABLE public.empresas (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    cnpj character varying(14) NOT NULL,
    razao_social character varying(60) NOT NULL,
    tipo character varying(60),
    nome_fantasia character varying(60) NOT NULL,
    descricao character varying(500),
    cep character varying(8) NOT NULL,
    endereco character varying(100) NOT NULL,
    bairro character varying(60) NOT NULL,
    cidade character varying(60) NOT NULL,
    saldo double precision,
    "logoIMG" character varying(120),
    latitude character varying(60) NOT NULL,
    longitude character varying(60) NOT NULL,
    patrocinadora boolean,
    faz_coleta boolean,
    ponto_coleta boolean,
    ponto_compra boolean,
    logistica_reversa boolean,
    fabricante boolean,
    recicladora boolean,
    selo_siri boolean,
    data_ultima_edicao timestamp without time zone,
    usuario_criador integer,
    ultima_edicao_por integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.empresas;
       public         heap    postgres    false    16            �           0    0    TABLE empresas    ACL     �   GRANT ALL ON TABLE public.empresas TO anon;
GRANT ALL ON TABLE public.empresas TO authenticated;
GRANT ALL ON TABLE public.empresas TO service_role;
          public          postgres    false    278                       1259    29146    empresas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empresas_id_seq;
       public          postgres    false    278    16            �           0    0    empresas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.empresas_id_seq OWNED BY public.empresas.id;
          public          postgres    false    279            �           0    0    SEQUENCE empresas_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.empresas_id_seq TO anon;
GRANT ALL ON SEQUENCE public.empresas_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.empresas_id_seq TO service_role;
          public          postgres    false    279                       1259    29147    grandes_geradores    TABLE     �  CREATE TABLE public.grandes_geradores (
    id integer NOT NULL,
    numero_pessoas integer NOT NULL,
    razao_social character varying(50),
    numero_contrato character varying(50) NOT NULL,
    cpf character varying(14),
    cnpj character varying(19),
    status character varying(60) NOT NULL,
    empresa_coletora_id integer,
    user_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
 %   DROP TABLE public.grandes_geradores;
       public         heap    postgres    false    16            �           0    0    TABLE grandes_geradores    ACL     �   GRANT ALL ON TABLE public.grandes_geradores TO anon;
GRANT ALL ON TABLE public.grandes_geradores TO authenticated;
GRANT ALL ON TABLE public.grandes_geradores TO service_role;
          public          postgres    false    280                       1259    29151    grandes_geradores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grandes_geradores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.grandes_geradores_id_seq;
       public          postgres    false    16    280            �           0    0    grandes_geradores_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.grandes_geradores_id_seq OWNED BY public.grandes_geradores.id;
          public          postgres    false    281            �           0    0 !   SEQUENCE grandes_geradores_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.grandes_geradores_id_seq TO anon;
GRANT ALL ON SEQUENCE public.grandes_geradores_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.grandes_geradores_id_seq TO service_role;
          public          postgres    false    281                       1259    29152    grupos    TABLE       CREATE TABLE public.grupos (
    id integer NOT NULL,
    date timestamp without time zone NOT NULL,
    hour character varying(8) NOT NULL,
    h3_geo character varying(64),
    "full" boolean,
    entregue boolean,
    price double precision,
    neighbourhoods character varying(500),
    token character varying(6),
    catador_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    status character varying(50),
    city character varying(50),
    venda_id integer
);
    DROP TABLE public.grupos;
       public         heap    postgres    false    16            �           0    0    TABLE grupos    ACL     �   GRANT ALL ON TABLE public.grupos TO anon;
GRANT ALL ON TABLE public.grupos TO authenticated;
GRANT ALL ON TABLE public.grupos TO service_role;
          public          postgres    false    282                       1259    29158    grupos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grupos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grupos_id_seq;
       public          postgres    false    16    282            �           0    0    grupos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.grupos_id_seq OWNED BY public.grupos.id;
          public          postgres    false    283            �           0    0    SEQUENCE grupos_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.grupos_id_seq TO anon;
GRANT ALL ON SEQUENCE public.grupos_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.grupos_id_seq TO service_role;
          public          postgres    false    283                       1259    29159    horarios    TABLE     {  CREATE TABLE public.horarios (
    id integer NOT NULL,
    neighbourhood character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    date timestamp without time zone NOT NULL,
    hour character varying(8) NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.horarios;
       public         heap    postgres    false    16            �           0    0    TABLE horarios    ACL     �   GRANT ALL ON TABLE public.horarios TO anon;
GRANT ALL ON TABLE public.horarios TO authenticated;
GRANT ALL ON TABLE public.horarios TO service_role;
          public          postgres    false    284                       1259    29163    horarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.horarios_id_seq;
       public          postgres    false    284    16            �           0    0    horarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.horarios_id_seq OWNED BY public.horarios.id;
          public          postgres    false    285            �           0    0    SEQUENCE horarios_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.horarios_id_seq TO anon;
GRANT ALL ON SEQUENCE public.horarios_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.horarios_id_seq TO service_role;
          public          postgres    false    285                       1259    29164 	   materiais    TABLE       CREATE TABLE public.materiais (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    descricao character varying(500) NOT NULL,
    valor_medio_kg integer,
    aplicacoes_possiveis character varying(400),
    como_descartar character varying(1200),
    tempo_decomposicao integer,
    como_reusar character varying(1200),
    como_reduzir character varying(1200),
    repense character varying(1200),
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.materiais;
       public         heap    postgres    false    16            �           0    0    TABLE materiais    ACL     �   GRANT ALL ON TABLE public.materiais TO anon;
GRANT ALL ON TABLE public.materiais TO authenticated;
GRANT ALL ON TABLE public.materiais TO service_role;
          public          postgres    false    286            ;           1259    29758    materiaisVendidos    TABLE     I  CREATE TABLE public."materiaisVendidos" (
    id integer NOT NULL,
    kg double precision NOT NULL,
    valor_kg double precision NOT NULL,
    material_id integer,
    venda_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    nome_material character varying(50)
);
 '   DROP TABLE public."materiaisVendidos";
       public         heap    postgres    false    16            �           0    0    TABLE "materiaisVendidos"    ACL     �   GRANT ALL ON TABLE public."materiaisVendidos" TO anon;
GRANT ALL ON TABLE public."materiaisVendidos" TO authenticated;
GRANT ALL ON TABLE public."materiaisVendidos" TO service_role;
          public          postgres    false    315            :           1259    29757    materiaisVendidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."materiaisVendidos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."materiaisVendidos_id_seq";
       public          postgres    false    16    315            �           0    0    materiaisVendidos_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."materiaisVendidos_id_seq" OWNED BY public."materiaisVendidos".id;
          public          postgres    false    314            �           0    0 #   SEQUENCE "materiaisVendidos_id_seq"    ACL     �   GRANT ALL ON SEQUENCE public."materiaisVendidos_id_seq" TO anon;
GRANT ALL ON SEQUENCE public."materiaisVendidos_id_seq" TO authenticated;
GRANT ALL ON SEQUENCE public."materiaisVendidos_id_seq" TO service_role;
          public          postgres    false    314                       1259    29170    materiais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.materiais_id_seq;
       public          postgres    false    16    286            �           0    0    materiais_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.materiais_id_seq OWNED BY public.materiais.id;
          public          postgres    false    287            �           0    0    SEQUENCE materiais_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.materiais_id_seq TO anon;
GRANT ALL ON SEQUENCE public.materiais_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.materiais_id_seq TO service_role;
          public          postgres    false    287                        1259    29171    payments    TABLE     R  CREATE TABLE public.payments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    confirmed boolean,
    external_reference character varying(64),
    payment_method_id character varying(64),
    date_created character varying(32),
    description character varying(256),
    transaction_amount double precision,
    response_id character varying(50),
    token character varying(512),
    status character varying(64),
    status_detail character varying(64),
    transfer_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.payments;
       public         heap    postgres    false    16            �           0    0    TABLE payments    ACL     �   GRANT ALL ON TABLE public.payments TO anon;
GRANT ALL ON TABLE public.payments TO authenticated;
GRANT ALL ON TABLE public.payments TO service_role;
          public          postgres    false    288            !           1259    29177    payments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.payments_id_seq;
       public          postgres    false    288    16            �           0    0    payments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;
          public          postgres    false    289            �           0    0    SEQUENCE payments_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.payments_id_seq TO anon;
GRANT ALL ON SEQUENCE public.payments_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.payments_id_seq TO service_role;
          public          postgres    false    289            "           1259    29178    sacolas    TABLE     L  CREATE TABLE public.sacolas (
    id integer NOT NULL,
    material character varying(50) NOT NULL,
    quantity integer NOT NULL,
    tamanho character varying(10) NOT NULL,
    coleta_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    coleta_recorrente_id integer
);
    DROP TABLE public.sacolas;
       public         heap    postgres    false    16            �           0    0    TABLE sacolas    ACL     �   GRANT ALL ON TABLE public.sacolas TO anon;
GRANT ALL ON TABLE public.sacolas TO authenticated;
GRANT ALL ON TABLE public.sacolas TO service_role;
          public          postgres    false    290            #           1259    29182    sacolas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sacolas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.sacolas_id_seq;
       public          postgres    false    290    16            �           0    0    sacolas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.sacolas_id_seq OWNED BY public.sacolas.id;
          public          postgres    false    291            �           0    0    SEQUENCE sacolas_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.sacolas_id_seq TO anon;
GRANT ALL ON SEQUENCE public.sacolas_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.sacolas_id_seq TO service_role;
          public          postgres    false    291            5           1259    29676    saques    TABLE     �  CREATE TABLE public.saques (
    id integer NOT NULL,
    valor double precision,
    status character varying(64),
    chave_pix character varying(64),
    user_id integer NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    user_nome character varying(50),
    user_modificador_id integer,
    user_modificador_nome character varying(50)
);
    DROP TABLE public.saques;
       public         heap    postgres    false    16            �           0    0    TABLE saques    ACL     �   GRANT ALL ON TABLE public.saques TO anon;
GRANT ALL ON TABLE public.saques TO authenticated;
GRANT ALL ON TABLE public.saques TO service_role;
          public          postgres    false    309            4           1259    29675    saques_id_seq    SEQUENCE     �   CREATE SEQUENCE public.saques_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.saques_id_seq;
       public          postgres    false    16    309            �           0    0    saques_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.saques_id_seq OWNED BY public.saques.id;
          public          postgres    false    308            �           0    0    SEQUENCE saques_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.saques_id_seq TO anon;
GRANT ALL ON SEQUENCE public.saques_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.saques_id_seq TO service_role;
          public          postgres    false    308            $           1259    29183    semanal    TABLE     n  CREATE TABLE public.semanal (
    id integer NOT NULL,
    bairro character varying(100) NOT NULL,
    cidade character varying(100) NOT NULL,
    estado character varying(100) NOT NULL,
    day character varying(3) NOT NULL,
    hour character varying(8) NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.semanal;
       public         heap    postgres    false    16            �           0    0    TABLE semanal    ACL     �   GRANT ALL ON TABLE public.semanal TO anon;
GRANT ALL ON TABLE public.semanal TO authenticated;
GRANT ALL ON TABLE public.semanal TO service_role;
          public          postgres    false    292            %           1259    29187    semanal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.semanal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.semanal_id_seq;
       public          postgres    false    16    292            �           0    0    semanal_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.semanal_id_seq OWNED BY public.semanal.id;
          public          postgres    false    293            �           0    0    SEQUENCE semanal_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.semanal_id_seq TO anon;
GRANT ALL ON SEQUENCE public.semanal_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.semanal_id_seq TO service_role;
          public          postgres    false    293            7           1259    29689    track    TABLE       CREATE TABLE public.track (
    id integer NOT NULL,
    valor double precision NOT NULL,
    user_remetente_id integer,
    user_destinatario_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    transacao_id integer NOT NULL,
    type character varying(50) NOT NULL,
    user_remetente character varying(50),
    user_destinatario character varying(50),
    saldo_remetente double precision,
    saldo_destinatario double precision,
    status character varying(50)
);
    DROP TABLE public.track;
       public         heap    postgres    false    16            �           0    0    TABLE track    ACL     �   GRANT ALL ON TABLE public.track TO anon;
GRANT ALL ON TABLE public.track TO authenticated;
GRANT ALL ON TABLE public.track TO service_role;
          public          postgres    false    311            6           1259    29688    track_id_seq    SEQUENCE     �   CREATE SEQUENCE public.track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.track_id_seq;
       public          postgres    false    311    16            �           0    0    track_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.track_id_seq OWNED BY public.track.id;
          public          postgres    false    310            �           0    0    SEQUENCE track_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.track_id_seq TO anon;
GRANT ALL ON SEQUENCE public.track_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.track_id_seq TO service_role;
          public          postgres    false    310            &           1259    29188 	   transfers    TABLE     p  CREATE TABLE public.transfers (
    id integer NOT NULL,
    doc character varying(200),
    valor double precision NOT NULL,
    user_email_pay character varying(60),
    user_email_receive character varying(60),
    tipo character varying(200),
    extra_info text,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.transfers;
       public         heap    postgres    false    16            �           0    0    TABLE transfers    ACL     �   GRANT ALL ON TABLE public.transfers TO anon;
GRANT ALL ON TABLE public.transfers TO authenticated;
GRANT ALL ON TABLE public.transfers TO service_role;
          public          postgres    false    294            '           1259    29194    transfers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transfers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.transfers_id_seq;
       public          postgres    false    294    16            �           0    0    transfers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.transfers_id_seq OWNED BY public.transfers.id;
          public          postgres    false    295            �           0    0    SEQUENCE transfers_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.transfers_id_seq TO anon;
GRANT ALL ON SEQUENCE public.transfers_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.transfers_id_seq TO service_role;
          public          postgres    false    295            (           1259    29195    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    email character varying(60) NOT NULL,
    password_hash bytea NOT NULL,
    celular character varying(30),
    address character varying(200),
    complement character varying(200),
    number character varying(10),
    neighbourhood character varying(100),
    city character varying(100),
    state character varying(100),
    cep character varying(10),
    active boolean,
    type_user character varying(30) NOT NULL,
    pin_hash bytea,
    pin_create_time timestamp without time zone,
    saldo double precision,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    16            �           0    0    TABLE users    ACL     �   GRANT ALL ON TABLE public.users TO anon;
GRANT ALL ON TABLE public.users TO authenticated;
GRANT ALL ON TABLE public.users TO service_role;
          public          postgres    false    296            )           1259    29201    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    296    16            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    297            �           0    0    SEQUENCE users_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.users_id_seq TO anon;
GRANT ALL ON SEQUENCE public.users_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.users_id_seq TO service_role;
          public          postgres    false    297            *           1259    29202    users_sistema    TABLE     G  CREATE TABLE public.users_sistema (
    id integer NOT NULL,
    username character varying(60) NOT NULL,
    img_url character varying(201),
    cpf character varying(14) NOT NULL,
    empresa_id integer,
    user_id integer,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
 !   DROP TABLE public.users_sistema;
       public         heap    postgres    false    16            �           0    0    TABLE users_sistema    ACL     �   GRANT ALL ON TABLE public.users_sistema TO anon;
GRANT ALL ON TABLE public.users_sistema TO authenticated;
GRANT ALL ON TABLE public.users_sistema TO service_role;
          public          postgres    false    298            +           1259    29206    users_sistema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_sistema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_sistema_id_seq;
       public          postgres    false    298    16            �           0    0    users_sistema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_sistema_id_seq OWNED BY public.users_sistema.id;
          public          postgres    false    299            �           0    0    SEQUENCE users_sistema_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.users_sistema_id_seq TO anon;
GRANT ALL ON SEQUENCE public.users_sistema_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.users_sistema_id_seq TO service_role;
          public          postgres    false    299            9           1259    29740    vendas    TABLE     �   CREATE TABLE public.vendas (
    id integer NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone,
    data timestamp without time zone NOT NULL,
    empresa_id integer
);
    DROP TABLE public.vendas;
       public         heap    postgres    false    16            �           0    0    TABLE vendas    ACL     �   GRANT ALL ON TABLE public.vendas TO anon;
GRANT ALL ON TABLE public.vendas TO authenticated;
GRANT ALL ON TABLE public.vendas TO service_role;
          public          postgres    false    313            8           1259    29739    vendas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vendas_id_seq;
       public          postgres    false    313    16            �           0    0    vendas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vendas_id_seq OWNED BY public.vendas.id;
          public          postgres    false    312            �           0    0    SEQUENCE vendas_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.vendas_id_seq TO anon;
GRANT ALL ON SEQUENCE public.vendas_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.vendas_id_seq TO service_role;
          public          postgres    false    312            ,           1259    29207    webhooks    TABLE     �   CREATE TABLE public.webhooks (
    id integer NOT NULL,
    response text NOT NULL,
    create_time timestamp with time zone DEFAULT now(),
    update_time timestamp with time zone
);
    DROP TABLE public.webhooks;
       public         heap    postgres    false    16            �           0    0    TABLE webhooks    ACL     �   GRANT ALL ON TABLE public.webhooks TO anon;
GRANT ALL ON TABLE public.webhooks TO authenticated;
GRANT ALL ON TABLE public.webhooks TO service_role;
          public          postgres    false    300            -           1259    29213    webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.webhooks_id_seq;
       public          postgres    false    300    16            �           0    0    webhooks_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.webhooks_id_seq OWNED BY public.webhooks.id;
          public          postgres    false    301            �           0    0    SEQUENCE webhooks_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.webhooks_id_seq TO anon;
GRANT ALL ON SEQUENCE public.webhooks_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.webhooks_id_seq TO service_role;
          public          postgres    false    301            C           2604    29238 
   bairros id    DEFAULT     h   ALTER TABLE ONLY public.bairros ALTER COLUMN id SET DEFAULT nextval('public.bairros_id_seq'::regclass);
 9   ALTER TABLE public.bairros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            E           2604    29239    campanhas id    DEFAULT     l   ALTER TABLE ONLY public.campanhas ALTER COLUMN id SET DEFAULT nextval('public.campanhas_id_seq'::regclass);
 ;   ALTER TABLE public.campanhas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            G           2604    29240    catadores id    DEFAULT     l   ALTER TABLE ONLY public.catadores ALTER COLUMN id SET DEFAULT nextval('public.catadores_id_seq'::regclass);
 ;   ALTER TABLE public.catadores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268            I           2604    29241 
   coletas id    DEFAULT     h   ALTER TABLE ONLY public.coletas ALTER COLUMN id SET DEFAULT nextval('public.coletas_id_seq'::regclass);
 9   ALTER TABLE public.coletas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270            K           2604    29242    coletas_recorrentes id    DEFAULT     �   ALTER TABLE ONLY public.coletas_recorrentes ALTER COLUMN id SET DEFAULT nextval('public.coletas_recorrentes_id_seq'::regclass);
 E   ALTER TABLE public.coletas_recorrentes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272            M           2604    29243    comum id    DEFAULT     d   ALTER TABLE ONLY public.comum ALTER COLUMN id SET DEFAULT nextval('public.comum_id_seq'::regclass);
 7   ALTER TABLE public.comum ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274            O           2604    29244    empresa_materiais id    DEFAULT     |   ALTER TABLE ONLY public.empresa_materiais ALTER COLUMN id SET DEFAULT nextval('public.empresa_materiais_id_seq'::regclass);
 C   ALTER TABLE public.empresa_materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276            Q           2604    29245    empresas id    DEFAULT     j   ALTER TABLE ONLY public.empresas ALTER COLUMN id SET DEFAULT nextval('public.empresas_id_seq'::regclass);
 :   ALTER TABLE public.empresas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278            S           2604    29246    grandes_geradores id    DEFAULT     |   ALTER TABLE ONLY public.grandes_geradores ALTER COLUMN id SET DEFAULT nextval('public.grandes_geradores_id_seq'::regclass);
 C   ALTER TABLE public.grandes_geradores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    280            U           2604    29247 	   grupos id    DEFAULT     f   ALTER TABLE ONLY public.grupos ALTER COLUMN id SET DEFAULT nextval('public.grupos_id_seq'::regclass);
 8   ALTER TABLE public.grupos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282            W           2604    29248    horarios id    DEFAULT     j   ALTER TABLE ONLY public.horarios ALTER COLUMN id SET DEFAULT nextval('public.horarios_id_seq'::regclass);
 :   ALTER TABLE public.horarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284            Y           2604    29249    materiais id    DEFAULT     l   ALTER TABLE ONLY public.materiais ALTER COLUMN id SET DEFAULT nextval('public.materiais_id_seq'::regclass);
 ;   ALTER TABLE public.materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286            o           2604    29761    materiaisVendidos id    DEFAULT     �   ALTER TABLE ONLY public."materiaisVendidos" ALTER COLUMN id SET DEFAULT nextval('public."materiaisVendidos_id_seq"'::regclass);
 E   ALTER TABLE public."materiaisVendidos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    315    315            [           2604    29250    payments id    DEFAULT     j   ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);
 :   ALTER TABLE public.payments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288            ]           2604    29251 
   sacolas id    DEFAULT     h   ALTER TABLE ONLY public.sacolas ALTER COLUMN id SET DEFAULT nextval('public.sacolas_id_seq'::regclass);
 9   ALTER TABLE public.sacolas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290            i           2604    29679 	   saques id    DEFAULT     f   ALTER TABLE ONLY public.saques ALTER COLUMN id SET DEFAULT nextval('public.saques_id_seq'::regclass);
 8   ALTER TABLE public.saques ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308    309            _           2604    29252 
   semanal id    DEFAULT     h   ALTER TABLE ONLY public.semanal ALTER COLUMN id SET DEFAULT nextval('public.semanal_id_seq'::regclass);
 9   ALTER TABLE public.semanal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    292            k           2604    29692    track id    DEFAULT     d   ALTER TABLE ONLY public.track ALTER COLUMN id SET DEFAULT nextval('public.track_id_seq'::regclass);
 7   ALTER TABLE public.track ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    311    311            a           2604    29253    transfers id    DEFAULT     l   ALTER TABLE ONLY public.transfers ALTER COLUMN id SET DEFAULT nextval('public.transfers_id_seq'::regclass);
 ;   ALTER TABLE public.transfers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    294            c           2604    29254    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    296            e           2604    29255    users_sistema id    DEFAULT     t   ALTER TABLE ONLY public.users_sistema ALTER COLUMN id SET DEFAULT nextval('public.users_sistema_id_seq'::regclass);
 ?   ALTER TABLE public.users_sistema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298            m           2604    29743 	   vendas id    DEFAULT     f   ALTER TABLE ONLY public.vendas ALTER COLUMN id SET DEFAULT nextval('public.vendas_id_seq'::regclass);
 8   ALTER TABLE public.vendas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    313    313            g           2604    29256    webhooks id    DEFAULT     j   ALTER TABLE ONLY public.webhooks ALTER COLUMN id SET DEFAULT nextval('public.webhooks_id_seq'::regclass);
 :   ALTER TABLE public.webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300            l          0    29098    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    263   �e      m          0    29101    bairros 
   TABLE DATA           W   COPY public.bairros (id, cidade, estado, bairro, create_time, update_time) FROM stdin;
    public          postgres    false    264   �e      o          0    29106 	   campanhas 
   TABLE DATA           h   COPY public.campanhas (id, name, cupom, status, expired, empresa, create_time, update_time) FROM stdin;
    public          postgres    false    266   �g      q          0    29111 	   catadores 
   TABLE DATA           v   COPY public.catadores (id, img_url, cpf, score, nrcoletas, user_id, empresa_id, create_time, update_time) FROM stdin;
    public          postgres    false    268   �g      s          0    29116    coletas 
   TABLE DATA           V  COPY public.coletas (id, img, date, hour, address, complement, number, neighbourhood, city, state, cep, h3_geo, latitude, longitude, entregue, token, valor, gorjeta, scr, cancelada, checkin, prioridade, comum_id, catador_id, empresa_id, grupo_id, campanha_cupom, create_time, update_time, coleta_recorrente_id, grande_gerador_id) FROM stdin;
    public          postgres    false    270   �j      u          0    29123    coletas_recorrentes 
   TABLE DATA           �   COPY public.coletas_recorrentes (id, hour, address, complement, number, neighbourhood, city, state, cep, create_time, update_time, weekday, user_id) FROM stdin;
    public          postgres    false    272   �       w          0    29130    comum 
   TABLE DATA           F   COPY public.comum (id, user_id, create_time, update_time) FROM stdin;
    public          postgres    false    274   i	      y          0    29135    empresa_materiais 
   TABLE DATA           �   COPY public.empresa_materiais (id, faz_coleta, compra, coleta, faz_logistica_reversa, fabrica, recicla, empresa_id, material_id, create_time, update_time) FROM stdin;
    public          postgres    false    276   :
      {          0    29140    empresas 
   TABLE DATA           f  COPY public.empresas (id, name, cnpj, razao_social, tipo, nome_fantasia, descricao, cep, endereco, bairro, cidade, saldo, "logoIMG", latitude, longitude, patrocinadora, faz_coleta, ponto_coleta, ponto_compra, logistica_reversa, fabricante, recicladora, selo_siri, data_ultima_edicao, usuario_criador, ultima_edicao_por, create_time, update_time) FROM stdin;
    public          postgres    false    278   .      }          0    29147    grandes_geradores 
   TABLE DATA           �   COPY public.grandes_geradores (id, numero_pessoas, razao_social, numero_contrato, cpf, cnpj, status, empresa_coletora_id, user_id, create_time, update_time) FROM stdin;
    public          postgres    false    280                   0    29152    grupos 
   TABLE DATA           �   COPY public.grupos (id, date, hour, h3_geo, "full", entregue, price, neighbourhoods, token, catador_id, create_time, update_time, status, city, venda_id) FROM stdin;
    public          postgres    false    282   �      �          0    29159    horarios 
   TABLE DATA           h   COPY public.horarios (id, neighbourhood, city, state, date, hour, create_time, update_time) FROM stdin;
    public          postgres    false    284   
&      �          0    29164 	   materiais 
   TABLE DATA           �   COPY public.materiais (id, name, descricao, valor_medio_kg, aplicacoes_possiveis, como_descartar, tempo_decomposicao, como_reusar, como_reduzir, repense, create_time, update_time) FROM stdin;
    public          postgres    false    286   '&      �          0    29758    materiaisVendidos 
   TABLE DATA              COPY public."materiaisVendidos" (id, kg, valor_kg, material_id, venda_id, create_time, update_time, nome_material) FROM stdin;
    public          postgres    false    315   ='      �          0    29171    payments 
   TABLE DATA           �   COPY public.payments (id, user_id, confirmed, external_reference, payment_method_id, date_created, description, transaction_amount, response_id, token, status, status_detail, transfer_id, create_time, update_time) FROM stdin;
    public          postgres    false    288   �)      �          0    29178    sacolas 
   TABLE DATA           }   COPY public.sacolas (id, material, quantity, tamanho, coleta_id, create_time, update_time, coleta_recorrente_id) FROM stdin;
    public          postgres    false    290   L1      �          0    29676    saques 
   TABLE DATA           �   COPY public.saques (id, valor, status, chave_pix, user_id, create_time, update_time, user_nome, user_modificador_id, user_modificador_nome) FROM stdin;
    public          postgres    false    309   ΐ      �          0    29183    semanal 
   TABLE DATA           b   COPY public.semanal (id, bairro, cidade, estado, day, hour, create_time, update_time) FROM stdin;
    public          postgres    false    292   �      �          0    29689    track 
   TABLE DATA           �   COPY public.track (id, valor, user_remetente_id, user_destinatario_id, create_time, update_time, transacao_id, type, user_remetente, user_destinatario, saldo_remetente, saldo_destinatario, status) FROM stdin;
    public          postgres    false    311   =�      �          0    29188 	   transfers 
   TABLE DATA           �   COPY public.transfers (id, doc, valor, user_email_pay, user_email_receive, tipo, extra_info, create_time, update_time) FROM stdin;
    public          postgres    false    294   ��      �          0    29195    users 
   TABLE DATA           �   COPY public.users (id, name, email, password_hash, celular, address, complement, number, neighbourhood, city, state, cep, active, type_user, pin_hash, pin_create_time, saldo, create_time, update_time) FROM stdin;
    public          postgres    false    296   ��      �          0    29202    users_sistema 
   TABLE DATA           r   COPY public.users_sistema (id, username, img_url, cpf, empresa_id, user_id, create_time, update_time) FROM stdin;
    public          postgres    false    298   <�      �          0    29740    vendas 
   TABLE DATA           P   COPY public.vendas (id, create_time, update_time, data, empresa_id) FROM stdin;
    public          postgres    false    313   ��      �          0    29207    webhooks 
   TABLE DATA           J   COPY public.webhooks (id, response, create_time, update_time) FROM stdin;
    public          postgres    false    300   ��      �           0    0    bairros_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bairros_id_seq', 18, true);
          public          postgres    false    265            �           0    0    campanhas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.campanhas_id_seq', 1, false);
          public          postgres    false    267            �           0    0    catadores_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.catadores_id_seq', 37, true);
          public          postgres    false    269            �           0    0    coletas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.coletas_id_seq', 4258, true);
          public          postgres    false    271            �           0    0    coletas_recorrentes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.coletas_recorrentes_id_seq', 179, true);
          public          postgres    false    273            �           0    0    comum_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.comum_id_seq', 11, true);
          public          postgres    false    275            �           0    0    empresa_materiais_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empresa_materiais_id_seq', 10, true);
          public          postgres    false    277            �           0    0    empresas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empresas_id_seq', 11, true);
          public          postgres    false    279            �           0    0    grandes_geradores_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.grandes_geradores_id_seq', 30, true);
          public          postgres    false    281            �           0    0    grupos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.grupos_id_seq', 14530, true);
          public          postgres    false    283            �           0    0    horarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.horarios_id_seq', 1, false);
          public          postgres    false    285            �           0    0    materiaisVendidos_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."materiaisVendidos_id_seq"', 38, true);
          public          postgres    false    314            �           0    0    materiais_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.materiais_id_seq', 10, true);
          public          postgres    false    287            �           0    0    payments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.payments_id_seq', 61, true);
          public          postgres    false    289            �           0    0    sacolas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sacolas_id_seq', 1843, true);
          public          postgres    false    291            �           0    0    saques_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.saques_id_seq', 42, true);
          public          postgres    false    308            �           0    0    semanal_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.semanal_id_seq', 31, true);
          public          postgres    false    293            �           0    0    track_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.track_id_seq', 63, true);
          public          postgres    false    310            �           0    0    transfers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.transfers_id_seq', 90, true);
          public          postgres    false    295            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 99, true);
          public          postgres    false    297                        0    0    users_sistema_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_sistema_id_seq', 3, true);
          public          postgres    false    299                       0    0    vendas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vendas_id_seq', 65, true);
          public          postgres    false    312                       0    0    webhooks_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.webhooks_id_seq', 88, true);
          public          postgres    false    301            r           2606    29296 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    263            t           2606    29298    bairros bairros_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_pkey;
       public            postgres    false    264            v           2606    29300    campanhas campanhas_cupom_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.campanhas
    ADD CONSTRAINT campanhas_cupom_key UNIQUE (cupom);
 G   ALTER TABLE ONLY public.campanhas DROP CONSTRAINT campanhas_cupom_key;
       public            postgres    false    266            x           2606    29302    campanhas campanhas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.campanhas
    ADD CONSTRAINT campanhas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.campanhas DROP CONSTRAINT campanhas_pkey;
       public            postgres    false    266            z           2606    29304    catadores catadores_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.catadores
    ADD CONSTRAINT catadores_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.catadores DROP CONSTRAINT catadores_pkey;
       public            postgres    false    268            |           2606    29306    catadores catadores_user_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.catadores
    ADD CONSTRAINT catadores_user_id_key UNIQUE (user_id);
 I   ALTER TABLE ONLY public.catadores DROP CONSTRAINT catadores_user_id_key;
       public            postgres    false    268                       2606    29308    coletas coletas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_pkey;
       public            postgres    false    270            �           2606    29310 ,   coletas_recorrentes coletas_recorrentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.coletas_recorrentes
    ADD CONSTRAINT coletas_recorrentes_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.coletas_recorrentes DROP CONSTRAINT coletas_recorrentes_pkey;
       public            postgres    false    272            �           2606    29312    comum comum_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.comum
    ADD CONSTRAINT comum_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.comum DROP CONSTRAINT comum_pkey;
       public            postgres    false    274            �           2606    29314    comum comum_user_id_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.comum
    ADD CONSTRAINT comum_user_id_key UNIQUE (user_id);
 A   ALTER TABLE ONLY public.comum DROP CONSTRAINT comum_user_id_key;
       public            postgres    false    274            �           2606    29316 (   empresa_materiais empresa_materiais_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.empresa_materiais
    ADD CONSTRAINT empresa_materiais_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.empresa_materiais DROP CONSTRAINT empresa_materiais_pkey;
       public            postgres    false    276            �           2606    29318    empresas empresas_cnpj_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_cnpj_key UNIQUE (cnpj);
 D   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_cnpj_key;
       public            postgres    false    278            �           2606    29320    empresas empresas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_pkey;
       public            postgres    false    278            �           2606    29322 (   grandes_geradores grandes_geradores_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.grandes_geradores
    ADD CONSTRAINT grandes_geradores_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.grandes_geradores DROP CONSTRAINT grandes_geradores_pkey;
       public            postgres    false    280            �           2606    29324 /   grandes_geradores grandes_geradores_user_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.grandes_geradores
    ADD CONSTRAINT grandes_geradores_user_id_key UNIQUE (user_id);
 Y   ALTER TABLE ONLY public.grandes_geradores DROP CONSTRAINT grandes_geradores_user_id_key;
       public            postgres    false    280            �           2606    29326    grupos grupos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_pkey;
       public            postgres    false    282            �           2606    29328    horarios horarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_pkey;
       public            postgres    false    284            �           2606    29764 (   materiaisVendidos materiaisVendidos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."materiaisVendidos"
    ADD CONSTRAINT "materiaisVendidos_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."materiaisVendidos" DROP CONSTRAINT "materiaisVendidos_pkey";
       public            postgres    false    315            �           2606    29330    materiais materiais_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_pkey;
       public            postgres    false    286            �           2606    29332    payments payments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    288            �           2606    29334 !   payments payments_response_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_response_id_key UNIQUE (response_id);
 K   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_response_id_key;
       public            postgres    false    288            �           2606    29336 !   payments payments_transfer_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_transfer_id_key UNIQUE (transfer_id);
 K   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_transfer_id_key;
       public            postgres    false    288            �           2606    29338    sacolas sacolas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.sacolas
    ADD CONSTRAINT sacolas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.sacolas DROP CONSTRAINT sacolas_pkey;
       public            postgres    false    290            �           2606    29682    saques saques_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.saques
    ADD CONSTRAINT saques_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.saques DROP CONSTRAINT saques_pkey;
       public            postgres    false    309            �           2606    29340    semanal semanal_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.semanal
    ADD CONSTRAINT semanal_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.semanal DROP CONSTRAINT semanal_pkey;
       public            postgres    false    292            �           2606    29695    track track_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public            postgres    false    311            �           2606    29717    track track_transacao_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_transacao_id_key UNIQUE (transacao_id);
 F   ALTER TABLE ONLY public.track DROP CONSTRAINT track_transacao_id_key;
       public            postgres    false    311            �           2606    29342    transfers transfers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_pkey;
       public            postgres    false    294            �           2606    29344    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    296            �           2606    29346     users_sistema users_sistema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_sistema
    ADD CONSTRAINT users_sistema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_sistema DROP CONSTRAINT users_sistema_pkey;
       public            postgres    false    298            �           2606    29348 '   users_sistema users_sistema_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_sistema
    ADD CONSTRAINT users_sistema_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.users_sistema DROP CONSTRAINT users_sistema_user_id_key;
       public            postgres    false    298            �           2606    29746    vendas vendas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_pkey;
       public            postgres    false    313            �           2606    29350    webhooks webhooks_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.webhooks
    ADD CONSTRAINT webhooks_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.webhooks DROP CONSTRAINT webhooks_pkey;
       public            postgres    false    300            }           1259    29386    ix_catadores_cpf    INDEX     L   CREATE UNIQUE INDEX ix_catadores_cpf ON public.catadores USING btree (cpf);
 $   DROP INDEX public.ix_catadores_cpf;
       public            postgres    false    268            �           1259    29387    ix_users_email    INDEX     H   CREATE UNIQUE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    296            �           1259    29388    ix_users_sistema_cpf    INDEX     T   CREATE UNIQUE INDEX ix_users_sistema_cpf ON public.users_sistema USING btree (cpf);
 (   DROP INDEX public.ix_users_sistema_cpf;
       public            postgres    false    298            �           2606    29438 #   catadores catadores_empresa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.catadores
    ADD CONSTRAINT catadores_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(id);
 M   ALTER TABLE ONLY public.catadores DROP CONSTRAINT catadores_empresa_id_fkey;
       public          postgres    false    268    278    3723            �           2606    29443     catadores catadores_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.catadores
    ADD CONSTRAINT catadores_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.catadores DROP CONSTRAINT catadores_user_id_fkey;
       public          postgres    false    268    3748    296            �           2606    29448 #   coletas coletas_campanha_cupom_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_campanha_cupom_fkey FOREIGN KEY (campanha_cupom) REFERENCES public.campanhas(cupom);
 M   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_campanha_cupom_fkey;
       public          postgres    false    270    266    3702            �           2606    29453    coletas coletas_catador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_catador_id_fkey FOREIGN KEY (catador_id) REFERENCES public.catadores(user_id);
 I   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_catador_id_fkey;
       public          postgres    false    3708    270    268            �           2606    29665 )   coletas coletas_coleta_recorrente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_coleta_recorrente_id_fkey FOREIGN KEY (coleta_recorrente_id) REFERENCES public.coletas_recorrentes(id);
 S   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_coleta_recorrente_id_fkey;
       public          postgres    false    272    270    3713            �           2606    29463    coletas coletas_comum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_comum_id_fkey FOREIGN KEY (comum_id) REFERENCES public.comum(user_id);
 G   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_comum_id_fkey;
       public          postgres    false    270    274    3717            �           2606    29468    coletas coletas_empresa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(id);
 I   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_empresa_id_fkey;
       public          postgres    false    3723    278    270            �           2606    29473 &   coletas coletas_grande_gerador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_grande_gerador_id_fkey FOREIGN KEY (grande_gerador_id) REFERENCES public.grandes_geradores(user_id);
 P   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_grande_gerador_id_fkey;
       public          postgres    false    280    3727    270            �           2606    29478    coletas coletas_grupo_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.coletas
    ADD CONSTRAINT coletas_grupo_id_fkey FOREIGN KEY (grupo_id) REFERENCES public.grupos(id);
 G   ALTER TABLE ONLY public.coletas DROP CONSTRAINT coletas_grupo_id_fkey;
       public          postgres    false    270    3729    282            �           2606    29483 4   coletas_recorrentes coletas_recorrentes_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coletas_recorrentes
    ADD CONSTRAINT coletas_recorrentes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 ^   ALTER TABLE ONLY public.coletas_recorrentes DROP CONSTRAINT coletas_recorrentes_user_id_fkey;
       public          postgres    false    296    3748    272            �           2606    29488    comum comum_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comum
    ADD CONSTRAINT comum_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.comum DROP CONSTRAINT comum_user_id_fkey;
       public          postgres    false    3748    296    274            �           2606    29493 3   empresa_materiais empresa_materiais_empresa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_materiais
    ADD CONSTRAINT empresa_materiais_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.empresa_materiais DROP CONSTRAINT empresa_materiais_empresa_id_fkey;
       public          postgres    false    278    3723    276            �           2606    29498 4   empresa_materiais empresa_materiais_material_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_materiais
    ADD CONSTRAINT empresa_materiais_material_id_fkey FOREIGN KEY (material_id) REFERENCES public.materiais(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.empresa_materiais DROP CONSTRAINT empresa_materiais_material_id_fkey;
       public          postgres    false    3733    286    276            �           2606    29503 (   empresas empresas_ultima_edicao_por_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_ultima_edicao_por_fkey FOREIGN KEY (ultima_edicao_por) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_ultima_edicao_por_fkey;
       public          postgres    false    296    3748    278            �           2606    29508 &   empresas empresas_usuario_criador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_usuario_criador_fkey FOREIGN KEY (usuario_criador) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_usuario_criador_fkey;
       public          postgres    false    278    3748    296            �           2606    29513 <   grandes_geradores grandes_geradores_empresa_coletora_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grandes_geradores
    ADD CONSTRAINT grandes_geradores_empresa_coletora_id_fkey FOREIGN KEY (empresa_coletora_id) REFERENCES public.empresas(id);
 f   ALTER TABLE ONLY public.grandes_geradores DROP CONSTRAINT grandes_geradores_empresa_coletora_id_fkey;
       public          postgres    false    3723    280    278            �           2606    29518 0   grandes_geradores grandes_geradores_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grandes_geradores
    ADD CONSTRAINT grandes_geradores_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 Z   ALTER TABLE ONLY public.grandes_geradores DROP CONSTRAINT grandes_geradores_user_id_fkey;
       public          postgres    false    3748    280    296            �           2606    29523    grupos grupos_catador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_catador_id_fkey FOREIGN KEY (catador_id) REFERENCES public.catadores(user_id);
 G   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_catador_id_fkey;
       public          postgres    false    3708    268    282            �           2606    29775    grupos grupos_venda_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_venda_id_fkey FOREIGN KEY (venda_id) REFERENCES public.vendas(id);
 E   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_venda_id_fkey;
       public          postgres    false    3763    282    313            �           2606    29765 4   materiaisVendidos materiaisVendidos_material_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."materiaisVendidos"
    ADD CONSTRAINT "materiaisVendidos_material_id_fkey" FOREIGN KEY (material_id) REFERENCES public.materiais(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."materiaisVendidos" DROP CONSTRAINT "materiaisVendidos_material_id_fkey";
       public          postgres    false    315    3733    286            �           2606    29770 1   materiaisVendidos materiaisVendidos_venda_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."materiaisVendidos"
    ADD CONSTRAINT "materiaisVendidos_venda_id_fkey" FOREIGN KEY (venda_id) REFERENCES public.vendas(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."materiaisVendidos" DROP CONSTRAINT "materiaisVendidos_venda_id_fkey";
       public          postgres    false    313    315    3763            �           2606    29528 "   payments payments_transfer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_transfer_id_fkey FOREIGN KEY (transfer_id) REFERENCES public.transfers(id);
 L   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_transfer_id_fkey;
       public          postgres    false    3745    294    288            �           2606    29533    payments payments_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_user_id_fkey;
       public          postgres    false    3748    296    288            �           2606    29538    sacolas sacolas_coleta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sacolas
    ADD CONSTRAINT sacolas_coleta_id_fkey FOREIGN KEY (coleta_id) REFERENCES public.coletas(id);
 H   ALTER TABLE ONLY public.sacolas DROP CONSTRAINT sacolas_coleta_id_fkey;
       public          postgres    false    3711    290    270            �           2606    29670 )   sacolas sacolas_coleta_recorrente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sacolas
    ADD CONSTRAINT sacolas_coleta_recorrente_id_fkey FOREIGN KEY (coleta_recorrente_id) REFERENCES public.coletas_recorrentes(id);
 S   ALTER TABLE ONLY public.sacolas DROP CONSTRAINT sacolas_coleta_recorrente_id_fkey;
       public          postgres    false    3713    290    272            �           2606    29683    saques saques_user_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.saques
    ADD CONSTRAINT saques_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.saques DROP CONSTRAINT saques_user_id_fkey;
       public          postgres    false    309    296    3748            �           2606    29734 &   saques saques_user_modificador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.saques
    ADD CONSTRAINT saques_user_modificador_id_fkey FOREIGN KEY (user_modificador_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.saques DROP CONSTRAINT saques_user_modificador_id_fkey;
       public          postgres    false    309    3748    296            �           2606    29700 %   track track_user_destinatario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_user_destinatario_id_fkey FOREIGN KEY (user_destinatario_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.track DROP CONSTRAINT track_user_destinatario_id_fkey;
       public          postgres    false    3748    311    296            �           2606    29705 "   track track_user_remetente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_user_remetente_id_fkey FOREIGN KEY (user_remetente_id) REFERENCES public.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.track DROP CONSTRAINT track_user_remetente_id_fkey;
       public          postgres    false    296    311    3748            �           2606    29548 +   users_sistema users_sistema_empresa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_sistema
    ADD CONSTRAINT users_sistema_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(id);
 U   ALTER TABLE ONLY public.users_sistema DROP CONSTRAINT users_sistema_empresa_id_fkey;
       public          postgres    false    298    3723    278            �           2606    29553 (   users_sistema users_sistema_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_sistema
    ADD CONSTRAINT users_sistema_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.users_sistema DROP CONSTRAINT users_sistema_user_id_fkey;
       public          postgres    false    298    3748    296            �           2606    29785    vendas vendas_empresa_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_empresa_id_fkey;
       public          postgres    false    278    313    3723            �	           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO service_role;
          public          postgres    false    16            �	           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO service_role;
          public          supabase_admin    false    16            �	           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO service_role;
          public          postgres    false    16            �	           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO service_role;
          public          supabase_admin    false    16            �	           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     }  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO service_role;
          public          postgres    false    16            �	           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO service_role;
          public          supabase_admin    false    16            l      x�K11�H5I�LMN4����� /0I      m   �  x�u�M�� ����S��=~����X�����u�He�U��X�Xr���n�5�$?�3)����Ӌ/��ā l86ȩ�[��i�Q~✼�퀔��!ГO!�Lʉ�~��ϰu�0
W+�>���k� ��++k�/�Ӄ�c<M��H�L*%�^ETE����X��@�P[M|��m��H�+��?��|�i�S7�듄'4SJs�V	S�?��9�gV9��K�ڮl[a;?\2�O�PQ�ݎ�v;��V������@%7T���K�p���lF8ə���-�����e8w�0e쟻���.�����x��,k%�fë�����r�p�����Xy�$��S���?Rx�h�q���ilƵ�=�^��r�վ����������߮!�e35 t���a�ե��e�9n#g���z��      o      x������ � �      q   �  x�m�Mr�0���)��C���z�l,Kꤋ�]dr�B�I+�㍄� �@�&���az�=aD:G:S�� ���c�g�p�iBD"�g"�hE0G}�r����X  ��@=���61�S�� ��\�< �@	Q�`>�v!I����I{���(s�h���p@��!*,��yXC��4 ��(�|�I�����TS#���H�����&<� �9a�4� 7�im��
T$��(Y��:i�L��י97���E��#qAu/ !4�i�� q�".d!{Ll����ɑ�d�-{��]O��HO)��0���bWE;9RE�P����X'G�h��z&�M쪤N�TQ�4���<�G���@�-�P$���G*J]%w�k�W����֤�0�
���]����;:�nG�
ȝ�N�o�;9�n�{Rv�Ks�����m�������m����}\��ßl���u��~��>�<��2|F��X�̅Ϙr�����؏퍮�H�+�˺l��UT����aWo|����7��Y�%��\���
��(Լ�g�������=1˅.�PL��\eY��g@/���g@��`�%�R^}K��rD�V˳�m~a,j��^הD��²�<K�$�<�����������u|뷓����:r'�i�N��.�r��	".��l�l3��'W���Y��z/���Z�[������3����q{�j���N�����      s      x�̽ݲ$��&x}�u��0�@ݱ[6m�6+����o�dIb/�ҖJ��>�
��b� #�ȌdeDy$�
u��� ��?o�����i���?��ҷ����{����>������û��_?����yz���?x�Ӈw�����ㇷ���w?}|�/�W~�������|Kɽ}���o��@��۷L���폶�������Ko$�����ѷ�ށ�gz��� ��K�6]���q�(�V��� ��
�������?CW��@����q���� �!�!�E(�s�����.��{IBJ.]��l��ރ� �aj!DZ"��?���×O�������.8��������7��[��uYB�	c���-r� ���r[�p>�t�Z����n BL<�J��&��0x�`� ��}��4���;��/O4�~O4��~}���DcL��e����qg��{���ug�D����s=J��(���ȕ�j�ߢ�`�(��p�(�?~���_��ӧ����������ro������?�^�g}����(�A|�8#�o�LK��=�ˈ��8���S�.g�=�� q�	�2%o=Hh� �П��&D� �>5!�j]�+Ħ�8Bj#�!�Oq�C4���hrKUٝ"n�XD�V�t2C�7r�=������D
�ߐ�/E��"���by+Bh�D<�Z���G|4x��[ZV�/<q�����&4 �{�&.�+*�����!b[a����!*���h~qaB��'�Nc϶9�ca�Q���B��4���yK1vK��y�8��+�X�Rw�b6m���6��;{��"��i�����?��jAg��n~u�����;�|HQ6��ߢ��78	7+j�S�t��/�|A�e.w�A~���=yQ�Тa�5�wH��Ά� ��Z0!�`�Ç_���wP���:N�Չ��gpj~�n�����C7���*��Ud�,��jt�i�,6cT��۸p.���b��W>Il��Մ�fњ�y�2�!7,���4�>m~x�d����.bz�E��s1����f^�]��*����N�n�-x��O6N��^Tт1NRfUT=�&ғ�0K���8�'�N!���U,�=eP�4�S��k���j5 �1�*����Sj�_x�x�Uy��9Ґ�-��9�4+��c+_K$Ssem��{��2�.���O�ݼ�l��.�\�o:�~=��GoLQ���կ8����_���S�W=A��H�\ߜ������t��cHB���}�o���^��y���]�$A�, ����cPE��y�vb�ņ%�q��ϗd��R�uq�ԇ�ߺ��\��?FPϿt�e�� x�(�,.��S��|ő`�]�y���H��FNy��M��rr.�5β�����lF�D���?��ϻ�0Mn�&��MV�e.��0@a�&�>��D99�G_�ˁW� tqQ$�� O߮��u�+��Kv�P���K	Y�p���	Q��lH��I[���&S���;�'ܩXf=�K=+�oBۯ�Gʑ/o*��,a`�?��8���JeL��.Pz�ʖݛ��?�i�I�y��{J��#q\F�*��'�!4�?w���OT�
읨_#E֝!�R�uh!�8��U�Y����*˅Pi�Ec�g���t��`
a4Nb/O��෋u��Ê."%�o��8T�L�|�J��9��,�<E�0��Bn���T�w*/��hen�U���0=�M��N�Z��Wl7�?��K�|��*���M[D����w(���x�8`K�E���O�o%v���!s6����*���Z��ʦ�~��!R=?t4��X�i��s�^Qw�D���eh��o����MNDx�ũa�ާAb�U�W%N��LP>b��Fx��d�A]�q�D��?h��_��b�"�/����Oz��z*.�k�)\�gڪG�����V�[��v�p1�Kl>��c_��VnP#x�G'޲�!��N�e����
�\�c�C �\����(V�G	V�<r��j�_d� .����[U��m�(� ­�AR�����B ��a�=�c��b�'�/�F�R���[�w�qx�n��]N{JNw5�Y����H'T���Ǹ���z/�~Iw��v�^2f$�[Q���2]9����`+�QWe�1�N�OVF!E��(��t)�.��`ڈ2a��(�Wq:1�G�CL�]�((��l��P��������U&U�t��Lq�)�Z�����$�t�"Y#$17E�	œ�e��,_P�v�� ��j��d,[=��(��\�����si���e0�1	�ţ�si�RO�ԯg�<).�K���&U�1����Wu./)�rT9��� �P�z.��lU����\U_���j1�aP;��_������3�j*������\
�l5.Y7�%�X�$�80Y|#��0���`$=�	�۰���8F�k,�Ow��(� �����.��ǨYQ]|:{�����l4��H>�= �
�ǈ�,𹼶�Uѻ�G1P�T|:�,���X�Q�T|:���һ:vRV߅Og@n������w��`Ż�y˸���O���e�k>��.�t��fr"s�şN��uF+��s�şN�f q>�.au^���*ZI3!��w�:/�tb�p�� �{/�t.!Z�&xu�i��ө 4Ê���S�z/�p���V�ދ�yyȃ���y/ �(�����lD��ǅ�"�3	r~ ����B�S^V�8 ��Ih�ZlT��7���iggř=�v��һ�{����?�C� W�G�NC�P������A�� ��=n�B9��F��μ�P����ݭk��Y^`�H 5Q�J�tς�[ �w�BA�3% �� ��BѬ	P�l(2Ϲ D�zmp.[�(g0S�>�z3�qZ�'|�y��1nFA�:��.�e� �A�4�t'A&g����}j��8g�:��Zܱ#7��C���0������P���y�V�v��/�p:� ��Ӝgn�	����[�n�^Ng�����<FkJ�&�.rO�dR���x«�q`K��UG%nOxU���Xp/�fnj�<j�<�]-�>�G7٪"M�lj��d}$e�1[mn�K' ވ�]�bj>�d-!h���G�z�du�e��BQ�k���Փձ��5 ��e<Y�zު��^�x?7Nַ]�
j��{�jB�d�[e��Rp���ɸ��V�e@m��Ps�'��([���_)��ө ��R"@����n����< ���k%͌u��U?�Z�c��ث�h��![�8��ZӒǓ������#�7t�;�
 ��H
����P�Y+|�%/6 ��u0o5geȏ���ZA8�X�`3r��J� �dty����b��D��x/�V�	�ch�ꪓ�^��&� Dc��ꪓ�^�<��9Ut�+�
�!ދc#��r
	ݜ��8n����Gqp�_��⒵wI$�U�E��O��^>p�
-VE/�ҝ�q/�ԍP��Y��OƽPT�ȥ�J�V�N8ݍ���$p���Q��'ˋ���v���ߩ�	�CA� ��X�ڝx:Ë��8$䴹v��d�s;hd�R�kw�	��`�&SE��%�N_�,�%G���,���3'��Q����E/�t�
�&��Uu�,��{����/Y���q=�Vmʙ�q�jI����t�a`ps�A<׃d�|�y����A���A�mk�b�����Q`Tο��\�|dyl�����5��(q�![M�~�c.�ı��#V#�8��,%~A�Sb�YDcȭ���\!�����3�����j�B�d2�:�Xe�i��O���3k�Vse��)�|�)b�lBp#�S �#M���Q�XyY��#MѭZ�X�j�c?ęrl;�86]{:�E8#Kz�p�d�t��%����vq�0-���|\�.�s����y9�CȃK�������E�ɦQ���r>��hex���*�����U��ؑ���.�z�V�F,��v|�6ርZ�*���j�]���\9    ���"�� 6��2),|���T�s�T����r�f�hi#���a<_/k����y�����`-�J��J�S%�	媷���
�|�)�B��E�̝���3�j�P�Z�$�塞�C����T$�	�jt��Ѫ���p$?�#��@3	��$����:��l��� 1v�Z,r:�'Z�w�n�@��L XE��A	���Qx�Vf��%Q��<�g�%Q��g�,�8�}�s��Ԭ7hM�C$�G卼�H�z�n��C\�G��q�M�ƾ�Aq����uaߨ�jM��c6XlZ�+m�-n���<bXXx/�{��c#��2(���0�^�1�^ԯ 
ذդ��b�'�����V��sqW���G�����V��=,ԯhi��U5X01����+Z�7lU�V��-�w�
f�-'Q�+Z�7l�_-�*^�Ҿa��{ggԸ�+Z��nm,��y) �ħ6l51����WT�ݪ%�<���zEK���B��DzEK�ݭ��UI�>a*[=�
P##�<II�hi߰�Ā~���W���ݪ0��|H%���}�VM��J:�^�(~w�6_�5�UX��S��V�:�>�|$	��S|�V}�z�UV��Q��N��OMjA�l��b5������Y�P��q[��\�9W=�!~�V�:tJv�Ug��^f����+��۪w��o��Te�+:(�n���-j�+��nGiR\��+�6l�'c�R���^��䶄�kz�uI6m�n��w���*m��~��[���Ip%���+xx���*�:�����+ؙ6X�^�y3[�	���HZL�d8��#R�i=������]�i#l4�� �p���p�V��+X�7d�|�N��]��8dCvP�s���Uw�
.�).����v'4{��zѣh�,��G^���!,.ֺѺQ��zE���D���q9�
��$b� i�^���kCR8��u�=����@�- �W�	FK.��%P����[�u l	�<ZL{�����:���|=h��U�j�z����@�����8DKm��]��?�����4����z�2��t�姟��7T;}�j�;k��=q������ƴK�Ȼ<0�f�������K����W�~��|���ƪ���O?��a���_���_~���?~��o_>��%��������������_~���~�����}�����S�����.�H�;	
�AT߿}�@f����-F���t�Tv8 N읷(�ȢJ�n���~��_Q�����`rR�M�F���4��7�=����@iyV��%s��Bh9s���5�������3lz����8$����Ɓ���F�[��/�6� F��^RL�$K�e�H n��ć����Q2f��D�?l��$l �����2��(�h,Rf~˜M��ɪU|�z����L�5H��绿���T~���;�K�6Wbqn&���Y՜J�VW�s������s[��n��8&�U5r���0�$CE�o87}��?��&�gj'z��
�/eE7N,�R�X���#�4X*�"��O,n:�00ǩX�,z7X��X�%�*�v�o�l�'��-� �?&h��dF�:꺜7�̒��1��aý�Ќ�o��������5��g�ţM��J�UҸ�Q�t��ռ�ݧ����O�������~�-�����_?��mJ�����҇��`�)e�@�
���-�J-���[�� 4�$��Y�<	������|V0?���si0��Q���A�*�`*��(f�n¡o'@KRXǉ�j�,K�HXT:6�0��H-e�v�߀%�T��aQ�?��qџ�����ࠂ���7�t��s�ֹ�d/	��^l�vp����lH�d���!.���؂k��θ��8���)���%F܃v�W~�&�̝~-��S�䋪���oW�ω
�-8r�z�RY疾��4�#O� �	E���[e�=�k,�Q����˧wO���"Z��=�꜋�F�	��^�olW�O:��ɬ�e�jfA��8�&ƒ܎El�#Z��?���?=�dx�ɘq, �~4f�Y�QߍB�j��U,����Lq������ �c8�4DT�:�0����b�ǆHr	�|��I`C	$�;2��"�W��o�j����+��7�@�@�ZWX�uOX$�e+��\�p�[5'_��%�T�u��8�Z3�>�1[�p',��^�KaQ������,VoD_�����(��N�O�F�B� ~��۩�ߘ�,__��2��|�L��`Nu�.��ɇhYMg�R/Rd��mi��b���]�C���Ԯ:��ALal�,��鈖l�~��W~>����ݭ�!&�3+��(nt��E��[�OGn;���H��W��ܶ��S�fe:	�n��H�1����阵u�F����騵m�*�U�ش\̉�Qks�
�[��83�1 ��d E��Y���r��"���t:fm�*�R�a�Y۶��6�ڲx:�Q�*���B�O��ӑ��Ve`��~[:	�n����@���C$��z��gH ����Y>�~���> �8�,�!n�C�Cz�d0��+�Y���,�du11a��\z�}���Ɔ��r��Ѷ�0D�B���W4��*��\�A��r�iֶUoXq4	��r�1ɶ�4����Z�Wt��۪u�J��`:��c�j�]DJq����Vy ri��T��̫w�5^3-�ī�v꽚  ����l��*;�����
�؛[�V;D�7}?z/�h\����H����FZ��Zy�ѭ&!t�6N7ۆ%o��n�>�ӽ�<�PlLc+#�&yEG�]��v��>is<�P<4���w�(<�l�۠���.� *1�͎�B���C���7��|��ԥ#���z�j�M(N7���B���y��Z���E���O{3�	��,�`])�ͤ!�Ow�����<��^A�qO�fE�ͨ~1���`�3b�BA�n�l_�N�ٌvp���� ^1b�&�@�Y$,�U_1b��VUqL#�|M)<4b�Д�x�����Yn؆A��Aˡ��oq��m�{�C�I�f��mV���I#������wHF� jw�or�e��7g?�5��'��I��Ժ���Ә:عi�/�z�8�eeRs�ӄ�H���$U���bH>����#�.����t���rzjb � �()�����\�S����u�F!��kȹ��b�MC�D2���*�m_�W!�8S'�dG6p��um��[\+s�v��?��O� �6�۩Q���&�ѷOM�08H��ґ� �t��i���t�Z.�?��4��j���\W�@A�fgz)Io!鰐������jRviz�g<�{���e�wVa�-���H��MW��������b��3�ᆮ�y�aS�\i������k�<y̫�+&t�Z;�y6Іc>����	���P�_�����oA,m<��D��rBݝ���~׊�[�w�}�,�� ��&b�ש��(�I�n��N�s͎P�m�j�x��:;Bv �����K��Մ/=3������f}�6�`4|��pJs�� x��T�`����&�P�G�+E����r�٤騔�P��q�yp�LXܼ����8w)���<��r��)��f������iG��4�02�!������u���D�2	צ�^R�M��|�zn�����o97�A4��}nj�{JX\�\1�t��7�aЍ"m0a�*�ja���;G��Mh�������`@=�">�9��G�	[Ш��q!��UolRX���G���Ш�8$�F�S�T5n!`Y�K:
Mڄ&���P��B-��E��H���,Ie�plj)���6�T�����T�`G8��4�x7�%�M0�n�U�)&-�^��k!=.�	�QEV&�C�PY5#b*=���sh���z7��,Go�9�&^�tև�j��L)���a�E��8���6��/�������)��2�\W�`�qLy�<sG��Id$��3�Z�s.i��MD5�';6���Z-�f�����!�L19g�읙7�B�ut��=V0V����e�<Oc    _�o��)!�Q���J�h*/��z��]���b�_1�s�H�B���\U��_��O�Ug�m��ֵ`�z�W����B}��]�ڨ.�i\�,(ԪA�W�y���Uz�Z��l��eB��i����ɥ�L����RR�դG�����lh�Wg�hK���R�N�H� �2-d��b��6͏t�d��!EWVK��H#����md�.�)��f��_�=^�4l; *N�#�/;��;��������s�O�D*��_����F좎O+%�_<8VU��bi����u��,�nRm�Z��w�K�Xi��EO��t��z�7y�!�Յ�r�B��b��(K[x[��S	��nlI/���Pͩ��ES���:4e�E�p� ];�����ի,�!�"�+Yrx	ܔʳV���`���^!?��� �	��h+p�>3хB�@Es�,kM�w�b3�,3�0Qi���bEs��cMޯ�$p�t]�����hJ��$��/J>vа���`y�q�@As��cMĺ2Zi�dM�k	PIpQ7������x�Lh�1s+�oɀdI������|���S�a��}8��d/��j$�T�;`�H�����q$c�MڏGm��I
1��-��O����=n�s�HN-�6�h4��8��D]ų;"ڂ��?=�&"��r�%.���gwD�	QX85k2cs�9��3"�*�=��B�������x��*�i%��J����wL�y�ػV�|vgkk�6lC��eNƋ�M�ت�I�]�^���a ��
��9{3���j�4Pk{������B9,����lM�b��)vJ�+'�%RY����G�<�؛�ɯ�l�t��y�.����R��	 ː"�j��/�g'T �V�` ����
�����c�#�� $�ũ�V4�Y�r�V�6�L#�-����6�d��m.�F�[�'�tp�<;"i�l4s��N(ɝ3�Zs��h[$v�gvB!�NC5$����&���M�����f�v'T���sbjհ4IOd�Dz���N>V7*B�x�M�3���偤9�&�b*�ݭ���#s}1*qu:'�j�1�����x:�b%6/�N!��W̚���0 �k�t!��fMKރ����| ��Ł�v��c���3��>P����0�N�Q�ycw�z�<ǻ[��A�~?���tN&�xX��ߏ�0:��I%F<K<�Nd4.(ux	�1:��B9 F>-�a��<d���C��Ql�V-�"\G,��'��KN���x�����A��q@\���̵�Fc��aޗ§���l��!^Ǥ��t\��U��ƹ�r���Us(��s��t3bm�* H|���r���U�.)�+�wy`F�G�jڲո�ejJ4SvJ�`ӈf0�I�i�����g,��{��}�ܠ&묆v�����I�#��_㑉�OUQ˪��wZ��7e��`Ä���Z!g0X=�0)n��g�����Y�d6xH`��yh��� ���$���PJfx1���*� 7�u�1��9"1�,_ʴJU������ٝ/\��y���K�q5 Ε(����W�kG@�P����B\VI�@�|�T()~hf�W��/oI�yp�޳yoz�]��[C� KDh�g�_T�b�w�]��"
��(�v{a��-
����RK����^���ȁ�2�yt��Ok�y-�f����#Ϥ���x̿�`I�PW
�X�����#]9p {ł_�"�u�$a6�e�j-� 2�f�����xOP���t.�V�脉�u�~�)�y��U竎g�v���I��DZ"�O��(�����D%���O�*�'D7-i]��~�l�:��%�H���h�oO����1Ѩ������d�#�	�o�W�x�@���w���	-<]�3��>渹Ƈ�t�4��+�Z>�&�����pFRq�2�Nw��"�����:a��*c�KhL]kW�,@d;N:Hz����1��.�zԡϷʇ�C.2�τ��P�}(����jC�����rz ��<(��NE�k��>�*�B�&��p�%l�����}p
Xj�(�
��&:��k�%ރ�ɂZ�ҁ"Y�+Q�@�/�rJ� %�I�ɭ��:D�֬\�B�O�y�7����ņ;� ��}&�GT��H�_�e
eIhX7�u�%=SY��X_��R�qz�A�Q�����jJ	Nr���P:��6�a�;�#~I��>|!�q�5.��n�1����|�M���3�'jH�Q*N�,D?�V�K�%��xT����r͋ue����;��<��Q?�9�K����z]�m*�G�b�E��фAe��~�F}gw8߲ty$,�\4t�Z�L��6XK�,5X��'�D4|��Qm���3��.���<64>�-�{5E�	B.4Д(�H�B6����v?7�6��1@;��2�'W��
5<K7 �;�G��1�2>^����,i��򀹳Cb	�^8}������S��b\I1w���(�/�fZ��h����TA�i�ԻÉ��y����
�>.P��ܷB?�(���0������z>e�̈́ ��dK�� ���T=2��7����+z�w�s8�S�EE(�ʳ���}{"��$�s4�ҍv*�r���NY5Vy����8W��D�|N3���i˥ǁ0�l�ǸH��LJ7���(,��-ŷ����H��8�:
m��df����Q�<u�K�sK�>�gs��&�u� �}�T�&}�%D]\�8�	8 n�A����2^�/W�'V�`�	���,�9Y���Ca���Ɗ#�p�2�?s�"�6<�\z���ċ�bٖ3���ѩ�L_�F[]YGJ� �ی�#���A%-���"s� a(Ev%o�ܶG�	��䡟N'j���7D7�İ��ߖ9�F�Y���$+7�
��b�O�o�����<$j)|�ru�kJ�db�O�o��@��*:�<*��7������(��`�I���g��Q�kW�T%�CW��A��HO�����t��
'j�!��U�{��M`��(ɜ�v\U�?&���b&��[ e�s�-�5��z�M��r�E+E��L�]E���~���so�9(h�b�n!���!�!'ݭ6�4o8�Yw1vN�>���ǧ��M�r����hUE"��F�Qu�#�
7�rp��Y�+�N�cW��������
-_+0jNp�e�JSa NQhzB���_3�m}<�:��<�X�eVU4�sd�\�l��q?��G|ꝋo	�b�	�ќ<�
�gj�:b�L3��A_�.�+��h.�U��𤵈�2̸�����v0���G�$)�*`q�b�'��쎆{h��P���e5[
M���RO7����?���W�
���(���e��0$W�����WD�ZJiq⌦k,�Р{��&Z�$�3c�eC�>�j2�x��k$������]0�1���m0�I��h�J�x �#O�w�@N����p��eU��jb���������g����y�yݯ%>�����hт�5%	��(h����,w��[�'S�k4eU���,�2Lr��>|�q7,a�cZv�ΦE�t��ET�{�J�f]+`σ�E?�o9�� Kӳ�q�@���t���F�c���XYt�,yU=�R�Z&���{^�`���2�C�:�gD�E+�� ��;�����)��5��8�0���n��(��h�U���@��
�h�Exp����x6�j%��4��i�[
�Cb90������M0��M\�f�������ƻ�M`��\�ge5�>�|2���z��� Û���Sԯ�����XrS�
��}=�d�}0��ة�m0��_�WCv;����F�0��6�4��XC*`bL#����%��j��j�2�`U�ؒh�k�P�s��䴊"Z���"6K�6������� 
6ϲ�B��M��9�gD`!�Z
'����U��c�ZS�E@�"����9���1"�����I+=��EHC��5��8��MCs��h�4L��%�X��Z���-p���gC��z�����k��&�7�A?��+m�a��\$9P�t�    ���������^�Ǆt�Vc1,�z��V#;�y�����Y�X�^8"�L]�C ��C(N�|,�˱N�J����$�6+�ffO������<�P��|7uU��RZt��3�����Ӿk�_*׫�ߨ���3��D0�89m0���X	��H0��@uq�BO=��.N�Z��ʩ}ɼXx�������-%:";�%����W�,5/����+�A]�������o:�`�bZ/�69D�8��U�m>���m����}f�$l��A؃���6�Z1s��&+�l9.�)��U������gZ�A����d�Sz�Va����M�����߆]�@���C��̗�zU����m�5r��گ'{͑�A���*	�؀�~v-����M3��	���A�=���6�8�m=8�t�\��*��o�֡L��&α�[����J��Q�U��X�:��&�sڱ�a���5��K&Q0n(��CY�Q�D&19wa"S�@��}m��������� �S��!��!Jᚾ N��~������wn�o4�6�ݻ�!�
�����j�I�B�[A�O�+�ԥ�0�
�eO+G��|V��*��	�v)SA�5��%�;��d�F��kA�z�%��U	%P����^xE+��lXdf+�TVmj]p�<�x���g��GV(�#=e��2��Fj(����n�Is0���.��u����}�F%P�
�ӻ�w�tѨa��YUR�j�1R�P�	�_��f@q&�V��[��v�W구f�&��K�%A�&ɋw+�.��h�FL���D��<��ҋ�Ե�L4/) ��U������w��e�����7������nTdg�;�q�˖��D��.�
$�<N�n~@���i雘��Tl�K�˪A�,]��ϓ<�ٵ�5��\j����"G����՞���s�ٹi��&�W�!eQM�X\���ͯ	",�g�m�
6N��I\�n~$��cKV�OyϬ��.�}�J$'�X��݉��F7x~�4O24jG�����zE�������ْ^��Z�-�JJrm�33%Ǘ1:���]E�3��	���z���Q��'�4��3��en�Y	�w�x1���[-˪��o��������ϰ	��`s�N�رX��JF������{z�.ۮ��s�\Yd�OY{��c��2nLڄ�[�T�Fp�V��L��4!�_�RX�������+[��<nG���s.}�͖�g`mU`�,���"�V`� ��T+m�0lq5��}�TW�N�([�e���bmU2�u�#�3}��:@a�>0���WG _\ߵo�tuѨ��� ��|C��<"�8�B��:ҵp����s��Us��t���:n�3�:ݎ�=���9����S�Pa����cs�|�Q[+A�T��#q�������?Un����*���w�G�σ��QgS"Ӫ0����n���u�G�A�jM�&D���Ԋ�誹B^��xn*���"�P�>S�#��ٖ�<xp5K��Zp��q��nю�咗���ċF��j��("ၲ���;�BK��C�<,���&T�@���z��5��}����;�qii��νQ�Q��u�O*��9��k�\a��_>��e��x]�VQ���jUԬ.�!�I+-(�0��Y����\ϯ@��TmUe��T;B�r]onoa�j�ly7��e��L�p����h$߳�m	�c��#��z��ؔp��ĩ��� ���yFnB�6��0����@oX����@������~��{�/X�UTs����"<�r��@�hl��Hl����m؀%x� �l�y>OnBU�a���ASG�*�ճ��<�'���A,���F�IAJ9U%�I&ʛh�G�ÛЈ5��M2.�T.Z!�I&ʛ`v"��I�5��7��E��M|قFM� �mN�1�XӉ5�0g�ncy>K؄�҅�Y�k��&8����Gl��:)��v@=4߳Ի����	�~��ߞ�7�TV�Y�j(�%]Ě��$���@�>"ق(��-K��E�r:N#T��S��E��2�7�c j�ę⹮��CG%�KE�,�4����o��u���dm�M4L����d��*��.����_?��� ��5C��"OK@o�uOF��I�ݴ��?rc�J3��r,�D�@S]Oz'���V"�)�����iN1y X�)���4����)=�?|لCu��&SN���ݡ�+��@��� Q�㌅����4�Y #n90��%��u�HV6�����g�H�pdy��s]5Vs�4�=��Au�d���ā��㪍�
U�K�b�~��Â���s�Z�gr߀���M8�@"�ºqU�H��q�cy�{à-0�Fb0K�\s !8W\��,�MZ����y�	/�<�B٩?�ϊK�Ƃ�xa���O�\C�C�F<δ���yGZKC$l_+�����B97�HH�y�	�������+1ȋz�7�Amq��	I�R��ǋz��J��
�&�9.�>�4(�Eu��
��+�K=�g�e��h���s/��qep���d�����B�h� �&#�����.�d4�ZW����>Vv�\Un@^��{@@�&jFM�LbL\K�E��T�w���/rB�*�Ȇ3g U���'��� X��-5�V'�$`i*�U��K{����� a�N���|�y�b��V��e�䙾µ�,'�K�z��@jy�M\�b���R����ȥ2b���������AO]6��R��:�|hz�نWOJ�H�jde"�d�|��9p��'��q`�EhŪF`�b�h@� �f/� Vc���c�g'�h��z�98hO���} j3@-�-�^��_>�ۋ�)ؤ-���P.�T�%��k��p�������!3�A�p3�B��+Ɛ�p�U1�#��?���?�UO���j�8���(34`�2�'F};����'�Q>��ݿ|������������_?��������������$���-��5yqD([�����ZA�<�דe�J"�Ȑt��NHp67���;��0�f��K�g���]$�UH����H�ٷ�$�z/�o�}HU�aW�VZW᝺aԗ�Ҿb���x	�M,W�(���.d���o�HIb�tҠ�wA#MW��Y)��-\^��_��4a3�@�FW���P����a�����/o.=�޸[Tz�`��++{�pV��R�Z��c���
ۯt:�<���B\�0䕾�Z��W��w����Ӛwf�6�����ҕU�
�K��չ�V�5��o%�;���X�#���#Y~��Ccp�i�^�U�(:o�i��l4�������������p�+6_�` �	�Mp�q�Zp���_|"��D�{�V����,z"�` qˉ׀\�~P-q��"U�K�����z8dH,����R�uN*ո�:��Ɓ�,Jv+W���T��9�T=d~�i�#$K�k����ҳ��(8n�f1Z�ueB�X"U�P�/h��B��Xx�2�m z^r�Q�Xȋ�zH	�G�]E���X���E_�$lR�I��9�;�,�b��ц~P�� ���Zr��0�_
Y���b�m	�ĪC��J�����z�׻��( �ZB�/�d����0��>��z��@�h�Rz���8#d����m ?$��3޿X�/CU�3V�����S-c���J�b��FO�	Z��\���\�J������#7�V.��X��J�b����ER����!@1���K%��{��h�p][D�<$��+V���ſX�w��!z}��C�q�wuG��5{HR��S����:ӫ��Ŋ���HeD5RT�C<�TL�K%��b� 	����R#�_��U��tٟ]��A�`�E�w�ة��˴�E��O.eYnԭ�݉ڦ�����³Jٮ���d���n"���*�C*�ʥ�E�+�=JYz@�ʂ�Z{�
�#楔EQ��-e�u^��=h�DX��j=�\�����K)�lW�{��4�ư���\+�E�~צȴ�E�    �O�d��gCV��cS �Y�v�)p�d���?��eU�U�jCҒ��&��E�,�U��T���؜�R�����.s�/�,����T���ؠ>Fl#Q��1���J�RI�	��J�u%`l�^VJ�0�d�;�'��Ā��Es,�%W8���ȋ���j��,#s�+��"8���S��pt�(z����x�ӯڃcɻWͶ�|��]������p9����s��ht�IܜKf��P������Nf�`�[X�[�BMV}@Wj��� �)u�q'�7�a�/uф\�S4���l����FX�T��j�P;��� EC=4G��\���{F녌����Kn��72�WA­��pG�u���q��:8X��p�s��U�}��5q��p�|P��W������7E�5tvF�[�E��mDi?t������H9�T*�mT��Ĕ�d��B}�t�g��D������������� :��v�JB����r�\�~�y��y:ͻ��®�#[�'������GL��Χ������EIH��T8��{��p��m-<�hӧ��i#$�9!t+H�����7,��*H��71I��=�5&v]��󰊅�QB��;~��r�ʰ
p�MM�s�j���5V��V�Y���b��Ֆ�����4�<JL�Rc4�mYSP�aJ��^ر�*t�T����Ukݰ��`�z_��� �����J�<R��Yp�,	c�V֊���{],���QHݴ�QcQzdU�n�e��d�:ID��?��mq;5\�EJ�r�[�\�4�my��ߐ�[m�f����Bw��~q�7�FO��v�T�I*y	ބ�j �¸m�/�R�Qф����$u�p�Y�F)��Zl��pقlH�Eo��*F�Q��r�G�	����#I窡̀CW[�k��b��Qp�8��J^��<�a�q��^�&mB�10��DK�'�3^*��O:΢1��'���#	���`���^�gV��m8j����~;6�C�t�Z����]8Ѫ��1��*�����_-�x�����$p���0ŚA�j��]8F-q>��j9��YC�	�	l�K�C��֢�w#,�.P��x���Z:|l��A5���Zќ�&�	Cp�\�e5�Pu��ԫj'um�����\�KUQ�K���[W�����SZ	j� =b<5��Z�V����Z׭�Z�4�X=b<��0m�NOɹ�)e��T����5�w�ɐp����T���@`�wt������hwH�ZV���������K\u���x"l2�l�Ҝ����
�����u��Fcꨟy˄��S�\S5�RW����J���(߂�s3:�o�����\ک�q຺�!�Ժ@�4(�	�����ug�,M@6Ǣ��Eu�"����Kϥn��N��g���Ĵ�R�����8���Rw�x�ok�!+Y�Y �j1Fro�����i���?��~Sx�`�ٽӍ��b]�5R ��ʉo�,���۲.c��c哋8]����(������g%p@��W�sVC ��^�	��Pl�"���`އL�5a���G#i71	x)���~���J�/��������U6F��r���7$����a}��@Kk���Z��i��yW�ahx?觝�s6�p4�6U4�%h�&4i !t�`iY�����40�����8�dL��	���L�'�y��)'l�c�>��N��S�h}ד�<̻�����u�gq񩫖h(m�5.�����M`�����W�@6+o��y��q��m£���Kǻ���-4�˃��X��u�~Q@ZJ2S�g�I\�A�k�n��+���M�(���9�EІcy@
8y  TQPM9�IЁ�utη�9s��s�&�S�m8d<����:)M�� �0	:h�����oZWU$�$!�ڑ�Ip`\~/+�U�?1Y��}�*�8�˃<b<5.�����չ��Q��	]��j\�����Ѹ	SSo�um���A���!tm�����g�E/�
)�U�g?��C�j����-H��.�9Ӹ�&7�850�����w ��s�;[��(5���T������|�Z=��>��E��V������|�����A�(�������O�˧yX�%�27�#�M���N�����a��UG�����a�OKڹq�+�S�ǰ|��E݂����G-i�O�G̜n�H��$.��qR�Z??��p�˦�k���MHdԀ�N's��:�R�c�HH��
�IK�F���$�W�
��ƽ7$�	�#=�ۺ�sWӂ���d#����]M�͵;ve��h$-��dk}D�6�u[Qw7�	�!,r?������ݓrӸ���͐�w`�~�|J�K6�� �T|�J1Ϯ�Q�~5���/�}����;5n�N��R&����ى�Ǔ�����lѾy��t�B�����e�3�I�R�j�����%T���SI�	Y<���5�:��ɜ������,m\��8=�p�;ۤ#��i�o�> �]8��k��nՇV��Y<�~��A��i/�Yp0���5�&�o��yU�@dK�1ak�T{@�O���u��.�����,>H�r"�E�g�M�k�	�ȴ:!����l��>�٫R��m(�����j-��aفٵջ5d#�8����b5�6�Y�Xf�>�Hq���b���M8Ҡ��Gg4�����\f��*�^�;ދ�Cig�1mX�J1��8�&%��>RCBs�㋕aG�x5�b�<��K�h�*��������z��z ld��]���T)���6�ڷ�X-]ȹbEUa���W�ź�D5�]�HR9 R��:UJm����&��}M"���T)�+�yM��B�(Y�'b�f�q,�:U���ڰ$����׋�S�_|��@lҌ^��V�jMr���N�bz�Z� 	yI���mҌ���x�*~��>U�ա���m ��	���bz�^��h*�]*����)�@P*��b���bI�Vl[(Ƙ\mޯS��^���@�H5ѱ�ֽ7B�P�ԩRL/V� ��L,8���dm߱��שRL��ϝ*�A�sq|p��¾����8I�#��f�T)��p+[U[k]�=�F5`��j�=�]�?�TH2F���G���>��x�#�5���Ju��hK�V�7Ә��R�\�J1?����*�ɑ�<�28�����w@�5!T�J1oW�ϟ*�=���}6�Vx銭R�J1?��w�������xlc
C��+�]+��U�����YM�[�>�HK��q��Q��T���R�]}�X�>PBj.�f�P���P)殺?`�TG��JR�eG�jQ\dYW�EիpV��ʆ�`�ܾ`l�W�?�^�������f��~�6$1I�#NW�U]��#M463�Ė�\*�J%~�T�̏�����Ȫ?T4�.>s�KY�++U/��-pUo��,J�8��c���Z�u�|��Mz1<4��BZ��������GC+܎�M��"���1.�_����0B@=7Q4s��υBy���1@�h��������	Az2lf_.��)��4#�s�|]�8�Ҭ$��nBc�W��h�����8��	/AC��_ʺq��ɩ_PL�
&�oc�/�\W9Oc��"Mz	�	�WC&�<~]���X��V�	�HqG6�I���[�F�U���l�p�%p�}8��a!�ԁ#z@��|*|	��	����0w��U�L42���*z	����7���U2�k�<W8�8˸l�)��f����&�����m�l��$�����R-<�EЁc,����5���8��x
���h>Tz�&�6�U� Oa���SJ$m�f�o�t��3��VA�"��d���7�h.W���SX8i��i�1��$�I۪x�kE4�h��u�~�vj�6�0��m%ZS�&<=b�F4�=�f��jp�e�Mxz�0ؑh���f�-�^W-ґ"��s!��Ե%��^<#~g�ؾxjzGt�S�	O]t(�DR�&#��5��`�����)ф�    �:�h�)� ��
MH ��fi%���UEGMt� ��G�> ���FV�	�]Mt(�D�.
6�����|��%�j��#>�NTI�w����"o���S�^L�J5ṫ��K��8�ꆽ�p�~?jhcm	!��e�;���RMt�GMm�W
Z�P0˕CrnJ��qT��e�+úiBJ����YԃqK�.SM`�����\�/o^�`�+H����~��#}.Ӣ�fme@� ����C�����4oW�BzZV!p�B͗�{����P\�T:Xf]��<A��mo�KW@��0��w�|�}���� ����Pl��Z��C\�2��<n6�һ�R�r�{�t>_����`��4O(3�R��~��y9Q%v	9�X��\��r@"���O�W8agޣ{%L��CS47���`踃�C`c���٨y�(R����b�`j+������O���:�mpB���L�o����3����{�lL��7]8�5�1���]�
�v���+�y(nG��Zg���+�t�٨4P�6��7���r�狘ٟՃ�4����jF�U�ZSR�.G4��Y`'a��R�!]$_i�Q4H���k�tA�q2�Q�'}7�個v��M��Տ�G�`��਩�CI�RĲZ�o0	�%m��6��7�&Z�K��t��Q,{���`�2��6�I677,��ـ�̉**umU�sJ��}n$	Z�o~�sj�,�9��:���Cc�Ŗja*�v��疃
[���
(����0�\�~�
�=�*���@A4/p=`^�4��ף�g�y������p�ͭw_u���]STՊ�0%p�^6u�R��r��u]ѫw��/���O_W<������]{��O�KD>O'�E��ؑr���=����M�
�&�����Z7�v�h~����>�t0I-� qu�|�Һ�k�9��{~]��&a��-�h�N;�:_��YI�PwƜ`�g�����S�y�<)��̍����
(�Gӊ.��	�EjH�hY9�%[��P׻j{˵E���C�J����(�h�6�.?�r�ԵN=D���S�'��J��9�q7����z�%�=�,6��i��r
�0�m�B�:��u�\��z��k�50�ӏ�ԓ�o	�Ra���JxWT�~8�K{R��晒�n�Bb�b{��T�X�^�<ON���F��"���lB�l��X]W�j���c:�w��l�}6z��զ��j��Ku!�K�ፆ5b �^2Q�Xp"{�>� i�㐈�@��!�!��d�ԝg��!�ж>�RX)�l|��^���e�/1%��ٸ�	��2T3:<��j��H�����<�<�XJxPh}=��&�e4�$m����^��E��o�9�� ��sj��;]%v�ۥ��v��|V�[@X�V�D���)�7֘ ߼&	Ձj��zy���m�����f���@��2T�6�i=��#g��l�>�H"h�n�R&>Z7���
KH��	6y����k}*� z�X,D-V!�F�2�P�����ʘ�D2:� ����7�NV���5�q1����mM�����(tz	USNX����o�rX�^��Ė�����/ 6���/���X�J+ߘ<@ ��ĭ	Ak�j��'�s`Ǆ�K��&�h��'�&�	Fi5M��`b��gigһJ��Ļ=p�1�@u�����߯��S�9\�������X�z͠������:��o�ʹ�^&oŧB����B���eIЄK��y��3zF�}F�����N~�U��ϨL����\ۡ��U"�;4�)5�o��G�q�5�2N��շ�]4�r�I֝��|雨5�0o]�f����	Q�,�Hϴ��s�#�����]��b�\�h���{�0ؘpZ�v"�hC�{'���,EN_�ή[��Ո�mD~"4�?&�J
��"'N
	�Ԫ׭���lB�je��YN&�:=P.e�ݜ�ހ�&@��qּ;E��S�K��^H��-���#L��4@a �"���~�\w�M�dP1�V	��(j�r)(_�W2tQ�� �_���MHF���G��潣�w���&JL�D�j8Jj��F���G��Hj�m���U�L��f]��I����۶�7܄'��^j�P�%�K��*>:QKoZ�~�d�x"W)q�LQ=�n���GC[��Ӏ�'���D\J�����	۰1���r��2R-��K(��:mM�r���4�G���)tK��[3�B��꥝y~Л��mܚyV����������$��zv�����z���wI=�6�Lz;c�\���q�c�y�k>���ԳQ,vs���sx��G��;��p�^��h�����Bz$.�\H�R"�R����Z�i��K����hIa<gW͈vR
kq��e)�!hp��qN�>��"�ySr���YV�������԰�z�u�p~�~���������8�FmzGm qB����v;�M@lb����6t	��`5���� �-@���%���_W��ҥ���m�y��Q�d���y'h>c��FCN����C}(��G㷠!���U����g�28uل��4'��o/jN�Z�hv��ЄMh����k�����K��j����t�4q�\��m0~H��4L����o�I����m��I]~��5���~���{U�fh�e�J�l��$�줫�w�3G�m4����y6>#���u�5 �D��р�a ��]fP��:�Fb�t��=��&4ƃ�ŵ� �g�7%�_��N�o
4kQn�4aH6���nr]rz��u(N��soҷ�m�MD6����ہ\Y֓f����IW�� B7P�n�&"��X͟K禓�}r����M� {x��ʫ�^Mz�d����t�ӻ6�_��c䰏HM�Z��x�t�!�A_Pu��d���Ƒ;��[&5�:�:����������c�:B��T���H`<���|��"��>=�zT�p�p3q������R@��է��ݸ)�;h����6D��:`IE�^87\�*�grU��m0�Ȟ8�A��L�u�I�h�l�@��v�\���I��8K�]W��C�t~�D��7�M����~5�����UN���m<�ޙ�.R�"�E�p ˮ	���Uԁ���zq�.§\���M����i��\Ḫo�Ӆ�;\�'�����4���b�w\�Zc�ǚT��y*�gss0�42@�����jR1�A�{�Fr�{����h�K� ��1�U\۾C�9v;���ZMα/��9�s�i�%��CӰ>���~x��W������bs�ԥ��Ez �3]��]Dּ҂j���j�qHҦ�����6�B��O���Q�Qi ��E^�A�4���9��R�Y��o±�������:v�]����/�@�Qm�`=���,��.�]�`W<�	�21�y����޷�;t9�ލ]�`�v)��� ڐx�@��������ô�����̷�[�Z)��[�*um���{*�ŽkK92Af��&"k5B�����P�L�q:�����q�}�,}��*Q_�MS�LX�>����w�?����^��L�b;O�RY�J
��]\���z{:���G�ڃ��/��j�]k5B�~�1���Q�����z�H����k8�������i-,g���a}*���%���Q����<$��9*��p�{(6�	�}Nn�%�����}8����|�Ն��O��!c�Xx㢨� Ր�Fׂ&nF�n��bMPWǈo�p���$�L0p5�S������a0# ShTpN1����pvS�8~Pƻ�e�88��*S����W��Mp�CJs��qՃ�Y�%�5��&�&��g�8�&$��:	���
��`�TpW�zXhAw]��7�Kꔳ����w��m7�)���+��qP�C�\#b�R�8����&H�'���X���/I���5��:�l�{XzB�Upjc_�qr�ws�U|%��U��-�����L,lXP?���q���&NR���Z%�Z5Q5�a���^bb/M�q��v��V#X    #��Ćy��΁&����VK ��;wY%Ę��Ć97A��&v_�[��;)醋��ڛh�3�o�!���e5V�S�����faw�DO��3CS-R�>���i[��_�����k9On�M�-��h7��s@j��4�eU8]f\|�y#�Qpd#��:���F^�&lD���Cw��AJ���A�����[����;
�fm�< x�����J���{��/�� A��9��"�ȋ!���\�d��]��`o�)� k��"���-��]XL��o���~�6�/bM�r.��!��l�t��ۊ�*�ʰ��w��&�W��̇^Wq�&�S������G��Mht��2����Z�h�h��C�B�Ѩ1�&P�K���߈%�G������[(�|���<�W��Mh(�f�Ϋ!�.S�*�.��p�F8��`�p<��aW8�%p�F8>	s�t�s��xPJ�a�>{��N`�6֫�v[	�r�/�������A?o��gNW�� �nB���m����z��B�3�P2m�kQhf��)H����K�ݟ�ᇟ��+n�,�ކ��A�Vo��#�N�qU�O���;��z���E�,�m��C���w�H��]c�{N��*�#�\�������T���}U{Iǅ
��g���%�����a�����9|5%�t���r���/G�D�~��ܤ���K�T�m�߾�N.�rs��)�j�՚0��٦��s��"DV;�9(�s0�՜�<�W��5���ʹCznӴ��iQ�@J��K����v,��G$ע�5��0�F����|�Je�׳jz���o�kv�ɑ��=O�/�	2����0���Uoz�� A�Z�l��W���b� #o%��*���yh`�aOM�K2�x�q ��OM�j49�팠Y���-�����/mQ�4[fJ�Q��ه��ܙ��Q�
��?�>��f[Q�H��pO%�
6���wQ9¡7�1+�P���i?y����w�O��P�;��oo'p�b���`�B��'���/ۑ����Z�i)���u �hf)LDޕy�%�чV�*ZUwU�),=�"�4ۤ,|����4OU�����EiIY4�ix��X夏Z9!�$����#��5�#�c�g�p�W��p�V-m���cSK�Մ���O�������?���������A^������_~����_�������?��߀���#��e����KL&��B�$���>a����]�:��)�?׈@j�C��#X�P��j1��%�J�mIXܒ"閭l-'K�	io�>�P��2uko�A��y��	�q�e Š����\��𼆅����ţ|�i��4�Y�P��IfҤ�Q�U�d�[z׺ѥ8|"�"�Q%�Rt����g3�����i�R�~��"�B��&{�I1�j�ZW:���(��(.!���$�M�Ym;uE�W!J+� 7
�t1A��=�{pz��D�d	�oͤٳ_r�>�CFN>�3(I���SH��^A���%PYh8+�J0Zd�g={����{\�Q�QmSO'g/��"$�w>i�}���|�A#-u����y�zo�$�;C�mR���s`�2 Z�]L�3��(n���g@e�ևH��(�C�:�.B"�;�TR��شŐ�:��!ŝ!�"�»4	�48�BVB�f�ZdD�U����*���)ԋ�!�n�z	�9�g0ϐ�"$���d�!�Pvptd/J�gY�������;��mr�����>HrAa���tE��[rQK�+~��iۜQu�6&����h�	*i�J�1������gL]Vka��w*���UL:�HUT8w/��+��!��v�)H{nq�@z���l���8â%XQ^�}�ߩ S�[%U�T�B���e�g�7D�f\��f��虳��=�c�p��w��o�������y����3�m�O26��(1�O��H�Z�$UNt���l����[o����dvV-������fX��9�j�|�a%c�O�/v�5;7�Hϩ�����}E�ZxS��$���5�nR�}����x����Ђt��O��#޾�\C�#�)*M�V~}��Z�Mf��Vc�?"8�e�MDͦ�鯞�:���Q�]��w�N�P��s��Z�U����9�����Q}ظ���J"�EÔ�
5���GB
�`Բ�x�~{.%A�b���0n��D��z���"��c�"�?�jVI֒-8�<i�h��T�xc��#F\�჋�a��'*������v]�Cy�q�i<�b*�� ��N�9q�u�I8&C�sX�)�j���/Fd��[�u�AT8 ����VK�����Ɍ�o�|H�c�0�~=�
U#j����J�~|�W�������);�Wt��=��|����O�Dѽ�q�U�H�],��	�����wx��<�0]D
��I
 n���4\ON����ÖD"��g_Eǫ�� �cTz��67&'�l�9[��M$�]H�Ǩ�w�d��Nd��%��h-UG@�u�|��y���{��AmU����"� 1��Űn�2e�ʠg[�n���E-�=��|��T|�8���;}9ЏUi�RY/�4�J1Y�WE8��5>�\�Rv�Y���F2���y��1��v}����`�qg��02��]�|t��F*a�Z�)�w��y5��)�XAZo�^rx��;D��!B���뫫�O,e!&x:\D#�S���h����,A�~c��<`�wؒ���$�^��64����=�<��R�n�e��U�۰�%,R� ���/�N��E%��M�64���=���c&/y!��OQ0�%`h	L܂O8�"�e�mнr\OV�L\J�ğD���j6�N����KسSGj�^�����n�5݋7_ p�f8�~^��j�U���-�p��M3��Xn�qvur�)��1Q���Fm'W�X��S�@M͚�f̀#��S�%�Y���ӓ�h��]�����^��s8�W[�SI�,�>��������+Ai�t��
�14������L���}���� B�o��h��&#��>���e鼂Iƴp�?4�?Vӆ)g:��0&�ZpAc���]���:�ϫ��v�D���]u�����s�X��j!J��]��B�C3��1�lw���v1>Z�SD��v����1���p	Q�J���WH�s嬔�&���L'��������Ԍ���x�!��p����Ҋ�e(O�r�3�r|S"����;B
:���D1 ��W�>덶N$ cw���^C�Ė��	+p\�g�=���3m�3<U4��p4�+��3%�e������'
#���9�pƎ�K!�������{��G��+M�C��'�O��&i�$�~��Hp�-_�!�qL$�B��7�%I��.��@�mt>y>ܣ�zTW��v��Y��ɔJ?}B��P��3�� ���1�d��M2��\��}t8���-����5-��i�7�Ƹr�M*�L��Kӝ�H���w ������ǏZ�� B"w���զG��V�GSZ��N��R3pތ���q0�D�@ZjP�شD�`���}w�~�;��n�y'5I�S�41��I-e]Q��c�����������wԏ�ӈ�O�D�m����Z1����2��� #cOd�*%)wdl�Я c��}O��6���'c��v^��x����ӾBg�o[�2'eo�� �1��Z�p2Ǧ" <�S]S�����C@~�U��p|އݩ/���tӥ��>4��w�\4�ʄ#�a)=��p;���v�sQ���;�љ�X<��1��kv�-�-h���I8�vA{��:@���Hu��no�a�9�9/�'�F���3a��-33?Z?�M۹E�-"[6����3����ʎ�ph�9�[L	B�2Cfdpsˌ�m���8��M�!v-3dF7���!6e	��1��8��c�L����>H[/��➿V��^�mUe|n�kP��>Y���}a!��/���HM��m;ڍ�3��r�ˎ����Y]�%���ֿ��H    Z*�І�f��a�y=Z�a�)��T&�9�4��9�ȴrh0�H�-"�){�c�3>]-�
�@�hIeRRTA:�t�C1��8����&�����t_��㰡��ލ�?c���� !�b�9Q��Ԉ	�ȫP$Q���i>V���-�Q�Ļ���d����}=����*�I7�% �^�i"o�u�oiA�
��Jӆ�t" ���jؼO�%)
��osy~�fQX��@�lA�aˋ�C�@��eh����J�c����V^�@H�τ^��mU�۫V;��b�h�("��q~�E8"����;D���(�ﺨ���N��ˋ�ȩ�~*�je��U�H+�5#�~�_�F ��BO~ka�ĀJ��Q�C��Qp��u]7ݑ�͹e�9Ǳ��X�kN���0�H߄V��P�86�<9�$*�*QQ0�
0a	L͟�[������	�;�~�U�Z6"��s ��^��Ĩ7o+@d�G^C�c��$S)��ä@�f a	H�Qm��|�V�j#cV��q�=��f��0��0�հ�&y�(�=I��!-�A�C�Éz��V�����ɯ ��dQ�Mava@Zz}$�2����MZA��m��1�U0immhZ��u��4y	ǎ.�S ��بN�u��4e	MنIe��t���}$Er��Iϋ��@�b ?5� ��������/�ӣ�)���K�g1T��w�ڭ�Z�b:�+��� ����iHM#S��PL�%���%m�\.�ká�$�s��ry~0Q�� 
��A�9pP�y���ii$���r1��Տ��Q�s@���$M)6���X�PL�y+}�BDl؈�`�C҈��������L�9A�b`�wڋL8i#_���	��y���HK����O����{�>��=�ϱ����Eո��xEdz�Ky���W�8���'RF�U!�1U��=ߕ~^|f�B
�9���y�R�k�~��L_z�4�u��N[�e%x�6�蔑���Lwz%�V��ۈ�J��t\����<48ӟ���o/��2�pZ"M�i��r�}��>��tOp0�M�A�OU]��1��l��wӤ��ބi���i?���L�:\{�{[��ڌ���Ӑ���8)h����l�v��u縱�;q]kޖ�t��^�8��:�ZGm���R��%@��[����8���$jo�N��#��Y׫�w���0��t&;�t�*�`d�
J��c���lŻ��`8������c%�m�T�$�^�䮝�%0Tc�47|2�p�����^��[��hDAB�u�U�'o��Uw�@;H��?��;gȍ���7�#�fܰ8����FN��C�X�E���!=3�f���q��{��VC*�R�T?��-1�`�����s�F�#�Wq#�rRM������4T�g([+�,8��]�1������wC?��媨�|�f^4K� k�c��Q�xp�P�Q�Y몬���~��3/�w���m��#�_:ف�sp�� ҳ��������t�����G��`{y����b���#�#D"a�����mŷ�[ �`
����
���V�%T /&΀��,�� ��D���LQ���4h ���AJ�1�H��0��c�
�ŬAHa{�S�W����a�咝y1kp�?5�<?Z^�	���J"�I}\�N�2��$�o;��!�j����h��"�$�����@N���S�ʓIK�WI��B{�ɠ@���ϙ:K@��/0�$B��c�;�u�� a	H�J�2���n!j�i���g���o��xQ{���F��4s�T� �M�C��.���f�΄$t�X�G�����`3��q�W�EZ��~�׸5������A`"�iA�h���9{��>Ux���<n��rH�w�Coz�;F�YHDƥ��s c������ur�����hrV8N�2� _|J0k?!	�۲V���Y�������Ź��Qb���8��
2PB�u|�����_�l;���2PR�c�v�Q^�.��1]�}rAC����y+��Oc�X9�un�N�B����Byc�$�����6GyW��ȺAm�C2c�����HtO|�f-�Qx��Ľ���9�.�������1��O�2�gm=	8i97��w���Q�,���N�
���^��&x�T��;(}����4�B2���rP��GAX���*(�tJ����uK��O�9MR�sߓ9�C.v�ߥ�v�a��'ԃ�Up*�0S���	P�>�����(4�T�`'�r����	嘉ԏ�v�VM��?��j�0��,AKi����F4��Ff��N\�*��ϥ��h�?t�]�ш�f�n�q�w.��������%4�Ù\(�ш�2�o�#5u L}�V�m�8�
��T%�]��g�V�����o�R@�/AKhD���d�^��d��۽�/AV�p��A?��m�d�*�h�?����%4$=��UN{�����_����N�>��*��9gn�H�%8(��'����%N���HSTe�v*��8i	N�ۘ�7'��8�l�@e�`J/��W�/��C)�m7t�5u*�o)�NY�#�l��-�w��N�r�0��6��p.�1���H��u�z}�_""�Z���p�|ߥ򶚶�	�NYQ8_"$0�H��e��!�%-���L�_""��!�"c��y�D���4��4qc+Pz>��jو�Z9����%B��>b�}���Uy���H(�/p��et��V�����N�N6C�ۄx�i��~/�k���|s$�V�dժ���xັ�����9)h��Z[%G��S��������ʱ�&���ā���U��������fb6�{�fZ����?[č
59%�����n�|�R�l����U�M9S�;��E(�3�wp��?e2�x�A� �E-)m�3����ə$�P��Hq�9B�%�əXL�z���&�|9:�>uU�0�ƺ�a�XL�z�P�@�\3'�iK�x���3��Us@-���14wJ�۪L=�.)e�%@�8��F3W��-E��\-MC�(K!Ō���-���d��;�w�"��(�k�j�������Z��7�p�:�rF!���ұ�X>S<�n�i>(����'���д(
~���ǚ�cg��'-ݟ$J�'aB�Y[mQ��%h�h�{��It<�Wqä}�Zzː^��,��M�C�9 &�M���{/�ӕ�l<e�CR?�#i��^<��2|�W��S?X�y����i+�KW{�CE$�$�E]�b��M�~�Kv<VAt%���m
"7��4����P�y���1i�WQ4�h���t��j�\bܴ֜�)����+>�SY�1iF�����$Dy��!YxHT+oϩ��
�v�I&����b��Ro����5��*n��I+�8H`�t�p�!�NO)�￐����٘�qP�|&�U�Xm���o�~[SG%�c�P��	M\BS8qF,S0|
�է�nl�7aI+X���?}��2�-�UQ4A�\�4WucM4QB������i��Fucc��i������܆�K03�R�cPB�j��r��\֎5��)���NO��b�ڱq���G3ʺ���nK�)�"/�s)A���n��+��� ������@P4m3��M=�D�!M��O�p�=�FW���	|V=�Bñ3r�i�Fz�ɵ$N�c;��>@�+��1���0�oC��<�҄��A�6Y��n��*-�i�h~ڂ�V����T793 �w���(p�|�>V�V_��}�j�əQ�}j�&��I�^i�*�������&g�w��Z�D�-j�^L����ʵ̞�ܧ�k�I[a�gA��*���+��M������*�-�(Χ�,
��h������ə���� cǍ~p�D@��#ae}ݥp�3c�ۤp�h�366�azu��Ϋ��.����$�k����X��*��.'M{xS�Lp#}�0�6D���Rp3-��`�������*H�k�U�6%�c�V�8o1���4xV�R����w��
�ۀ8�n��Ի��	�� �h � �j��� ���֏�(U���­���	�    �9���Hf�����T�N����	K[Sؠ�s4���9�
o�3��/]]��+�j�2��4����]7f�KW�% �����nY���U^q�p�xɐ<`슴˻��U�Ƞ�|2�Ś���3��4CM�sc�i�=;�
4�c4-09ՙU*A ��U���h���N�9�z��uU���]W�Y���h�<�n��(��+Ӫ{v���Ū���8�a�s4Y�����E���Ew�Ȓ����*ȓ)��C�=����Ew!�Mшa��f H�Ʌ����B�~󮢻�&�(�0�4A��e}�֢{��g�9l���`�����l���M9*9W6�Ğf4��5�)Z��i�r�B�)F�&�p"�6����X��Fͭw0`��qN�)Qܿ����O�%�*��nӢԠ�w XT�	���c5�FSj\c�S���g�O�2���S�C�8��M��sҾ=t��+&�(唕旇Sl���cW� ��̽Y�b��[�l��M�R@TLz���
q�8*K�j�r�BL{�3_�5�O6y0̔�V��S���Ǳ+i Ǘw3��Ʈ��F�7�L)G�~~uH���r���+ih�y�UcWlD�T�)��]S��$0��殘~�o��SK� ��ـj�bܠ��Yks4���(hh�T��6w�8l�e����4�`��R��>w%��6w�Ɠ�ϕ��}�So�8`ߟ�x�����kZ��aC��0�"οBR���u\0��;eZmHqB8�ܐ�#���qż�� 3F8���"����U���ص�W���S�\�"2��gi	n���d��T/B��^s�f�pޟ��ۿ~���?~��������Җ��8�K�m;Gz:�)V�����O���}N)��顁��ѥ��&2�BJ�s*�@�t����_�o�����i��Mu�s$$ix�tz��Upǋ�=�����5P�*�B9��#6����%���s�O����P��#�%�S�Fq�^_E�r�h)�I��BǬ�k�����9����(�k�ny����N��&�W������|R�6Q���Q�͉����
��,F)�P
9��H_�sW�|�`JB���E75�K���9��ײ�E�j����$E�e���_�������y��6�;a\v��P� x�ԟh�3�ϭ#�Y�ec�]�6���s�tӊ�/��GR��8���ާ����+�t(Qv(�>K��(����ę���/l@��ܑ���#p��%f�u�A��G_r�~�5�ĸ��\%z'�
���"1�߈΅��d��K�Ӱ����]o{���u��C���	a�|��ҩ�\�_'m �DH��w�$ňl`F7g-
7;�Sf\Q�����lݴ�D���$tf�W_'[����!��2�-��_�}3�L�0c�ָ�����ؚ�7Y�w�oڈhsS����\�r��f��Mj�͎���h���9��pC�^m,����8��3ߏ��~l!"�����9���`���{EdLo�h��T��4nmH�kw���'�u83#j-8��gݡΐ�`��{�2͏d��]펡�,�~p�|,�VeN�YG|j�c7�Ђsm��	��s��3���Ewg�j�fxpO��F��١{S�I��1��O�hT�!YǶ:��'j��26�2k��NX���NX���	8$m��G,�0���G,�pbu3���E��:OBG,�f���	Nz�;��㪌XH1G,��%��82bB1�$Q+�8b!S��>Y?��^��dXim�$�	X萅>#�zِsP��Y��U�JF��!9|F���!6�(2I� ,g��ɨFY�9����X0���2��q�@1C�٧,��nK`C*[��Ɍ�P%�!���=K���B��%0 U��{�k�W��өMGt�T��<�L3�^_Kלp�`�O��C�N%0!y�9��0SRn�jȘڑ�8?#B~�T��y��LF��j�0�deh�S	�tG7�t�9inPB(S8����l��x��g�����n�̾ff�+��C	��eR�����E?|�h�������6��U�;4"c�E|����%?|�| 	����o�q���j�Z��g�B�oN�A> JՃ��0��2��k�_��РЛT����x5BK�T�-�7�	Kh�R���H*1���V�����4��q�]�Y��(ôC�RM�Q��^�D�l�P��9	�͐�&�XX�GX����p4�5$�Ga���}�5B��5	$Ӯ���X͛c�ܚ�[t�A>̲��&�,H8#DO�(�2� �	L\���Bqz��(X����.cXt���&nƸ27cX�(���~HP4�9�ei��P�JN��yR�[�C�]��&4e	�h%�J���ī.�!Es��_�v���-8��̤%w�M��U����^���Go��+�h��%)pj�������i�Xh�70�V���'����f��J��������,�OMg)��'������Xhء`	8s7I��AG�('��	ܜ:��j�f���h~s �C
�(@^����X�8C�]3켚�)e�UNN3&���c��-8f�'I(�b�&�sr
�Q���s�~�$y}�V.APNN32���c���)0�q�z���S������̍���.8??pSǒ5��99�������s��eN��b�z�rr
���}��<�y��84�G7��	
휜f|p'�CB�Mnn�%FM��x��~�$�Ok�N*mp���,������*�2�׺����e����X�7'�i�H�ͫ������s�s�-S4 3��"�o�y����2�A��0��	���۟����ȤӋl�G�@!L�>���&*
.�w�-���q(=Q�m1n�ێ�G-~����ф���%42�d�oM�Q�-Q�ŏ���>��$P,42P�5�9ᅳU"�'�N\��� s4Y�F\R4Z��8s4Ϗ�i���8�U�d��N%�ZN���l���u(H�`�uD�ͧ�4�����g��_��_/�D2!Eᦄ^ �mU�+@m����^H㟺m��cHM�-q�6�%��Ὠf�h�jq��p��y�58�\�A҃�]zf*��*��f�y�v,b�	~K��
O[/�j6�udz�0!�w����K(`1�_���QZ�	뽯���;���Z;�p�Y�ubN�Q0�_��_����?�*EOR2���[��G���;��<��oI�O [���/�U���D�����F���~�s2%?�m�6eyU ���b�.���_�1���o���3(|[��	���|'�"�#�P%%��F=�m�
����3���� i�׉M�tR���Ί�G�)X7�IԷ��p�mTb�\�:@&?��8E	���8���nʊ+=��B���_f����7Lq��)Ѓ/xR��^��g�S�z����s"\B�[��o�@$�b^me�A)t��?#�%Dy�B�&�8AT6���S�O�e��
$Qe��8�$�Q��ڋ�/��� �,s�=��[�@�Z.
ɴw�C�Cj�̜=Y��80U�
	_�,A�����wɳu�I}V�e$z$��+�8V�{e匉��KׂrÔ>��2�o?pn�S��m�o�2�B^��Ukf�d���Y�KBx���X�;���j�0@&�k����+:q-82�+t��������jgډ[�X藿9�A&X^�(���m��uP;q���7� �C8(�]�9���L�����%�2��7�p�#88�#%0�Wi�{E�غZ�.����ߛk����pDN���,c/]��D
������ �M��hm]S��]ںja"����<W9IϡZ�\��wOܥ��Ʊ�O�X&��bsD^ hI�u�"�]w��h�~��8� xUF�a�r�:|�]^Շkl�-r�0���x��1D9�pϕ�W��N!A�����X���"�n�ֈ{_Јk��&�33s :8�y������}ͥ��$����������Fܒ>��_ֈ;�� y��h~༈(�ς���\���/ �  R���!sN��'}X��I	<��U�!����ėtA���.\cs�U&pN7�Ab��(�P�օ˻S^�;aew@�8ߞ]��!�8�s�۶v/-0�uE�Tjn �'鶬�&�	�0*�������3Ѡ��Xbg�ض�/��ǿ��5M`/����c�Fר#�������,0W&�(��E�5�u�1��
4i	M�������W6��r�{Mڿ^�&������9�E�V�m�klѲ�B�KγlZ��;P5�!l�Ӄk��bޙ�ҝ�N<kg�V�#7�2�&i:���u�f��@#�O�M&�
�(�H�x��c4f�v_^͐~�(�A��KCeCy�wM}͑-�rϔ�^,N!�x��8v�k�U�|R�����h�+���hPī<�NF���<�Q{�"8�l��Є%42܆C��Ik�E���=��1ڑ-ܣ�A�Bdy�@8�L>N�Y[E��|�-�a �f ��,O��8���j����d��[��% yc����UI�r̾Kf����.�1�7/�(T�R�c�U�UԺ���H~2����F#��T��Hm�l4��=�?��CWЈ�*&���p\��CL���H	�MZB#ӡ��ܒ�Ti.-������/��6ɾ�O�Av��D]�	 ^��cf���zW����p�ȷz�4�u�5h��($XhDʛ�Q���M�W��`���}/�F��y2m[e�v��=hF3�K��FC��8<�(�j��ڈ��A3�a�]�6�"/M:xX%	��P���t4���0А0��=9�6UW�������hFw�W0�����,|.ޞYP˸(/n�IM�W��)^a"�B��9"yt��h���&^a���#'C
���F�+��(^a"�x:q��g���D�5~��W0"30�M�����>��^�D�)��x�y~h�y8s'�!�� �cTQ 4C 36��a]���p�7�c��6�Q1g��p�����.�
N�B�&9F����(���=�&D7���l�"��I��{�g�w?���Q+��?�LZ���l����
,��xn橫P� ���Z�?	����ɧM��Q�A!��)k�a�j��ԛ/��	�Yh��<�9�n�IzǼ�"P��j��9�]�e[�R�.�6��1(����
���R�9l�R�=z�J�	�_�c
����i��eR�=JGyJL�b{Ex��`�Jߨ�f���e]���8|cs<BP0ߥo�O�U=K?�C �S�z�#=�Q^!�f��/.�$�X�7�+�S��S���i���e�1��^�$������/�m�Z���MȾ���oѡJ�+��i��vD&�P�JJ&6!T�D�۵ٺz��G�'�c���{���T��
e>[	�(AZ,�&�B$�.O8%���	3H�)Ȩp�!*G�!a�+�"�r����'��Nϊ��&8~�~����?�?2g�      u   �  x����n[�ǯ���}������έ�"F4���"7�DX2l1��"�W���:shI<�C!�Y�Ih�w�cf��߱.������������_�w�O�-�]�߯�����_�֋7����f������v���Q	^��f��_ /3�8��a&������Ż�������&�)+�1���&u�-q�hc��f�j$8�A��U�+���,΃HЌ�����TJ-�΁ӕP���47���	�f���8�(O\���*z�
)���-�J�F��Zr���Nq\�g"b�m���*��Nɨ4	ϑU�V�ɯ%JsvR���כn4�+�Ӥ��1���^�|!v���ԂP�4���8,c"-dl�W��7d�*�O_oc�5�_5��Hn�a����˘����7�y�g��D����Oٓ�<,<`2���r�
k"����oaL7b�����þ��0��eŔ��_�E���XZ�XZ�q��d��p��3qҪ�xr�=ҳ�<��V�6������ߛ��ۻ��?y�T�p-:^4+�'r|�%e�fw�XA=�+��kJ����'r�_�$⿷�c5�4C-�\���'�0
YU4n@|�n���J+ր�	�A%jF.���KX'��
r��Q�?���+{ǔ#)XiA}�U�z1&0lA}�U`%���b��+�p�S˕P߀u�Tr��B�$}�Hĵn�r��X;{"g�SUrm@}�U,�1)������[s��m��� ��3�|pF�_J�j�'���t��(�_)��@K,�FN��Yz����}�Ӥ�����'�@�X��"��uh�h%Zdʥ�ra�����/1{5��&�i��)�\�[��!&h�ҋ[{n"��Ƒ %C�vm�������L����p@+!܁j�&�ʌ?�?/�
�E� �mF.9F�%���(��r�o;dhh�+Po�IZG�����j���QR�@�I
<�P�A���rP��R������.{װ9�%��H���j`�7^@�ъ}��� �p�=-JiV�����A���J�zʌL�����\�B#�f�1�h�e�i��kO�͵?&�Oi�L�l�\�:!�7�?��v��luBx��t[�#�ĥ����E���rN$H��(gi]�����.X��9ŋ:��O^6��Q�K6K=8��n��������u��=�V��A��:dԪ�;�7$7��������t��8ӦtD'�\��GO@���*��d	5�3��*�QLM��:�
S4�.ٲBC��.3�ӑ���0g�f;�����R�E�m�w4+��j3`S��k�*cG�񆄊͋�M�ȯ��?�L��qc�A�c	l� ��'�������������?,���}���������˿��^~��#UE'ɘDayP�S���Ԙ"���3�ўc�E�]�dy[��$�1����7�j�����|2O����u0f��:oz4�����9{jѵ�b$����9��R�ԋ+���
�eٿf��q��>�ķ�q�6�1J��v$���?fR���������*�����/�p��Z @�%#'�q�)RY���r9��y���<�`�'�*vye�E��Dk�}5X�͙�y�'�����}^��}���0�0[��g���0�Q2
ܜ��gxXR���a��͚�y�G��.��z�`M�o�:7��s�^8��(S��3�\|��U˺���l�k�f�o
���9s���e�-�,�e��E�7gR�9^I��S"�mǛ�8?�s)����~��Y�&I*%�B����r�����9U跱�H�����ˏۻ�K>c�2�BB�
�q�O�ը�!�\���J��	��Q�޴��y�;�L�t��Ǩ�{9z�킃hI=q���8�ý����j;g���?�����%+�jM��8x�����p�jXB����{��#��̻a��Wk!����|}��s��ӽ����摧�*#�U�i���!�`$��A�qr�c.цR%	�����·���!�g0�ڮrRm�GJpu�1�~ 'G�nB�J���J ���D�JY��^�#q?9�]�|��<N�0}�Z�4�9�S�������~s�����k�,�&�e��}� a�����e�n����#ć���p^���h���IؗD��i�����4JJQ��}I�Tb�_��Z�t$QL�Q�hF=�=�H�x�v�ƚ�~��~I�h���      w   �   x�e��m1D�3���+9�D�W������8�?|̨p��x�q�(f���Ӿ y>���֬��X���PQD-�f[u�T�t���o���\�eƏ2�`��vM��K�|�q*�^�f�#vkJ�C��G�z��
I��xOcsU`�R�~+cu/g�S�R
I�yE-E1���J�~�<�Yj�l��Ş�8�o�O      y   �   x�u�͑� F�PE�;��C[AΩ���b�M��'��'AIKz������(�7�����Q��1=~3} t�8h8��nlD`����| |�0h�"<��X�䓘H!U��O�By�4떲K,=mr��!,T���BL�4V������NJ��Ҝ"�����!����J��0�c8u�qh�T�Ń�(�:��Z��uڹ�ɠo뛰�H� 2#������Kw4      {   �  x���?o�0�g�Sp/,yG�Ԗ�P i���\-�!b[)%���$�꟥��:B$zz�U/%��A��2�{ꇤ�~d������ϻ̞K�����\�5�,X\�M�k��G�~ V���$����q��6�?�Ǌ��I�BCT{���<:��CИX_ř�^xH��l�5*�Ŝ��8�Q�׈��1�|E�&�'*=�;�*B C!�q�>m�fϻt�m�Rɜ{=���c�%�:ݲ�Ox�,xD��O���q`}�exߣ�̥���T:����Sw�+�O%�8�]7�%K"��Xa����Sq<��w�#a@���-�{^��@���s;�Y�#�"��Em�v�����-.�q�WD�.	4F}��N�F?Ri�M���5��x/n���!���WF_o�Y��<�}:��3^=?����� �5��,���Z�V� 
�TT      }   m  x����r�8E��Wp?E�~���~� ٖ-��f��R��i�!��g!K�2:@_�� 2K�9��C���ۡ��Ӝ���������|_�!��m�6Y��C�Ȣ C��R�gv0��o}׿�!Gb���2�p���+��iv9wI"��������v�(��<9Px������ȣY9jѶhP��~ƴ/��-�b�ϴ���\��d�S
�BH$�P��O��7\�׻8n�d�n̆	�CzD
)wbNU
��4"!�Dx�h[������L̏5m�ܹ<�����9JaK�8I��YJ�D�(,Tfb�T]�a�/����
�q�#���h��eQ>6:�h��~y��M��Ou ���xe�wd�ͤٿP��L~h�h,�jNQ�T�r8r����h�CU�S���giP�j^��\B�3d�������Si�io+ѕ6lJ��A���!��V��z7�b:�CD���L�򜋜��`���޸q�V��V���k�lcj�%��b�-�W+9�-n�X�J]�\m��4�|C�g��^�C�H5n���n�l<7Ό����t���(��L��$WX����_K�*d�[:*�6�����=�׏J�!��`�պ��w�n�M)"�{'�ا{^����XY��O`ނ����
gp5�������{��r}}=���gl|;�%����.��*����W��j$��w]����J�1�Tc��ؠY���x;_.ӈ.����0��.p��ň�Kf����Bf��x��x�A�{du����g�Bt�L�d^��X�z����rz	*��hj�k���ޯhkːآ���_�����ߍ���Dۜ:n����R�w��q���
��            x��]͒�Fn>�<E�m1?�	��޳7|�Q��4+�F��1!��|��o�3��"�$�,r:�}аX� ��LH?$�!��-%��������Ï��7�/}��O߾}z�����_���O�����/��ޠ�o ����?�~>��� ������I�boZr-�Q���Ro,q-�kH
�kk�7��z�r�4�R����a���J�� ���lPp�0_^�%{�oHC�Hi�1@�bN���Fp�:@����c�a��ۗ�_�و"7��3�Sf��1��-�!+$؀�
����?�_�o�Y�[�!{!!��|5�s)������_��~���?����O�F�XnL7�! �#.���F<�+.��#β����ɾf���@B�?�]0�� %�ekv0��糽rI\Y1�R2p�[1C�3�E}�7M;LY����K��U��5 �ސb�1ԴU$�, �S���Jb]p���{�ۏڶ1	�*�7��>�Yq�����!�xzi����xѭ31V6�/���Ͽ�� �R	l�}������n���E�X�`�㩹�\S�0��L020g� ��ZC��gR���z���I����� L�*֖W=�a$mt�T��g��т�������iE3�ٵ�DK�Mp��)��(pCqOU��l��^ଲu d�P��e������o�n	n���������&V��91-Dc�2�j��9�hdS���e�m�����i�*���I �Ԁ� c�Kʅ��8�=M�[=+IQ\i�?5+h1�����
B
�T�pcg�tAo�Y;L�V�U��m��!�I.o��G-�C�h�e��2v����J�����b-�k�(��E���4�e�()%���޹\�TF�1��Qx�b;~n�& 3�Ud;�@'7��1��d2q_#QUxɌ��X2AZ{&Sl{��Z�r��Ԝ2mC�9Fދ��O���Z(n� �uy{	1Nؗȴ�Y�r�zJ"s���z���ix%�Qt��Pu�X�8��{i�;F7`&���V�F��oEZ��Y��
��9KL//�Sր���&4ed^А�F��@�q� ϥ����,�O@�h�=0F�4@�#��"޽��m��J3�5�n���-[�CB�]7l��
�zץe�i������<3�y翌ǟ��'���~�������ڱ,�_Ee0)4g�L�D�/-�.�����ق4^6�H��%��ц_������"4���C��y�:J��^�������*���j(O�;2u땴j|�Ū��B���w]P>f>dy�E�\tk9����<Fe[T�a&]�v!��{�VA
��^}���)���ԗK���0>��T�T�T:+�Ut�-���w��^w▋�����L�y�����2#S�,>��P�r���^܋b�S�L�g!�%�"WT����o��������m���Eq� �}�6�P8��R�}~P�7�6:��kL)��
Z�s,V1t�XR�!KE}P���~�٨��8��=�x���Jꕲ��[�9�Ӊ�r�P�wȐ��~,�B��!�ȂG��ZD�!Љ�	T�6v�T3���$�br%�5	�}�3��b K��Y��JtaE��Ű�_�T�jolB�w�l�P�I]6����	i�C�"�0PdQ)��f�h@W�'�����s��;x�a��!'�e�jDd�S�jaќeŚ����Q��%D^�%�&��R��l���mm�x�Mʊ�ؼl�0������l�;J��c��&nߑ�(V�.t��R�r�0[ Uݝ$��i]���#�b��!�IZ�(ULA�ve����^1t��h[�v$z#1��ԌkI����Ե@7�>�/�P0v]�x;��4���p�\�-�I�(�ܟ� ܫ߫
�×��_b��O���>�1�9��VX���oV� �7�%o
Kr �_@�ʐ�/.�!�K��; �O5O��Q�$�B�S�:Y�J�o�*�++y�`��,A�X�cX�}�x�h�DR�K͠f�Sk2Y��6���p��to7��2뭁�|��Ϋ!��q��B�j:��MxAi8��
̕��`>X�9�jiU
z���]��l5�MH@YW|���Q�t�!!gehD�"}�����!��t�V�M\4�)Xߏ�d�]6�+[�u�2C�5[��6&��rF+JP$&]�z�l�_>����tW7t�z;��G�vR��O?}����N�h�l��qn�fE�"���[���솆�wF���w�jh�-bC���z u�`�h��Z٪v���݃��|m�,��YB�s��$��&I�Ri����Ȭ�� Q�A%�3a�؞�!S]%1���^� n������,)k �I�I�&֗凯·(�J���6O�7��^�]����³w��D#p����&�LT%�Ɔ]���t@f�X���@S�\��*^Z�7}t��%J�L*:�|=�9oV���1 
���		|����q�!����ł����]6���5RC�!ҹ]z �Zs2�ʝ���.M@j��6�2�:�bcz��XW*��{��H�Y��3�jh��!�i�=�4e���Q���4.��qh�z]7iΩ�1�Su�C�yU��y:hIĹ�N(^'+%RgL���9�b߇�u���w!��H�~�����L��.Gw|����clɛ�������m��P)�w��%��c�%����bV�[�!!�SŜ2�t��,Q�h�4ZV���ϡ�/�`&�
��e}���+:�B�D������0
q@�z�Q�R�`_<�)�XM�5:4��@���r�d�ǚ��������u�i�o���6Z^�y#\s���/������~��BC�N*O�]N�,vژ0�aK�)�4�_M���U��h�/�L��Z�� ��˵+�/�X8|�t[��^����E��S�1#]��~�L���Ǭ�ROց�lGB۹��Y���}=X&{ d��F�5��<Y�y��Rla��Z����/ц8����K�٪m��H�:������Z��恼ü渏���~�s��$�:�#LR-����K
| � 4c	J���!�k9� e���>J�!�9�| �	3�Q�Ā�++y������uYBX�zE4)�#��)�L�i����e��А�Sl�P���	H�����z�cq(�m�g���j���,	�V��q}N�ֺ	/X��,�)���!u��3��L��!+��sP01Nu�'�DC�,���S3䙽���(���C'�<���A�̀�K}	��NC��b�(!�9�x 1z�]4�z t���yÖ�-�%�C����S�Lj����D�PK���ʽ�`�B?��o->�&l���.M�z�'s�����4p�0�Qy���L�Q�`����ەV������N2b��e�k݉I~�L'#SRCJ^$z$K2��vv��o����o߾���~��$�:U=�1�@վ7-�vuU<}��%�c���XU�!�p'�w��%p�e���-~`K������+�^���G��"��}�A�K<Ք���PƠ5=UD�c�1}?�u�R8���2XTNfe&�h����nV��м)�<�������="T{/�J�zN�&P*[Tr�h����O�Z�4k�g?��`��0�[	4׉��>����L``�q�@��Ĳ�y~b�`^�P3.�k��s���f���M��W�h��B��<��'��^��~��^m����1I�C@�����2%�!A�	x�L}��G����B������e���I���'���+3�	�?sc��=�@=z��H�����o5�m1��J ��Y��{�(�"��-��[��X�����Ҏ��֠3��'^�d����"���u��L-)SO�֧�&�4!�}�rH�����,�;W��D2?��>�v���;�ѿ�D!I'�a"�U2��█����y><��1�}M���B]��&caa�ŕ$�,O��p��y�]�3)�<�-���ǜ���%˃u���)�v�%�=�sj�&@���m���0#h��̏�ʾ�4P|7Ώ�U��. c  �ݟB��>��A��`��������ZҗN�O4L�'�|�
/.�Yޞ�1��g���4o,��{V�,�E5��w>,-��hu��I��-ϧ���tNG��(##��&��X0ҩxy�|k,k[����ym�5\�i�͞9�4���8��L���D9�{���yEY��PU%|�E�����~���޵�O{���vL���>6;9��|c��'����!=��D�_g�IB�|7��'�qzSW&|2>����r-���n^ü�� W�R��N� ,�\��\b�2{U��������^�����Sq��D�=��>iH�Q|�>Є>��2�.�i4a뽙�c~bތ���'�L�TK-�{��p�W�91cp�=��#X��ج�@��}geY��䃲vi��#�=�Z��vj���b��ca~ӣ��cP��P��){��o�٫j#��+[����*b�9�����6&8Ȑ�=YoF���>�~��D?C��z> ��G�0%����4͞N��w<U�ۤ�GU~��*�Lԇ� {$�k&M�C�Ks�m����O�K�K��e>��V�>�f�r������O��w�!����<~U�������KlY���oJ�~��I�_��9n���y��<��-�w-ċE���ަ�,S��RQO��GP?x��:;҇]���P���*�����������t!>�aI�N���F���`ע�;�<��k�]�������ǫ-5,1)��%�������P���f^�YN�vu��,��{��ε阮����G��;�k�+�e_�hq�U��?���S�r0�m�|�q�jV<yt��r>�E�w��<+�;3F����RkB��Y>�[0PAO����gf��a)D=W�A����B�Úe���\�K���vC� W����v�h��>��_��o�������;s��2T17.1)�@�jW ��7�@��n;~)W����{�^$�˛X��kU�"]S���t5�A�8f���3�L������o;T��Q����uzm�b����Δ9�A��+�^�ئ?YԌ���9-�I�ݶ�-}�/ZM����4�PZ+`9ݽ�	����u1�5���uA��xR��{׆�ڋi<�g�X+���Tx�y�O�����s�y���d�c����ғB�}�M<l��y�*I6�P�?5�Ʌg�YhD�=�)z|f�P�'�T���%gN��|������Ɏ��<��,k�A��5�"����m.m�0�_���?���Q�C�>�k2G\�3=	4ܸ�Q�c���,!~B���*���;A�%���a��D�S��ʳ��HH�� �n5��"m{k�?�6�Rv�zF�b/�t� U�"?���A��ZE�2�"�w����Ǐ���H�      �      x������ � �      �     x��Q�j�0�W_�>��V�jCڐ8������$7������Rl1�Y��C¾P.a��@�&���0�<Q*�@Wb�k�N���}������~˾~Fu�"U��)]��Ae߄��'CXi�!����3���D�{���/P|.�\ʚl�w��)��_�p(���Lyf:�skp0�e
V_���Y��VI%Ƨ6tc��.��Ʋ>_R���cȔ�G�2HQ%~*��f��Q�Q9��h��۰�z�����G}���c��S��      �   o  x�u�=n1���S�L�/9d�6���
rlؾPΒ�e���!�dU���{�p�D�hR]p�����=�Q��TR�U,X�g%g�>A�e4A����3c�r*���Ƞ��X!��蠓g�6�$R���Ag�ќ�ʔA�L�@��Ԩ��l��g8C��[tlf�&��5�0�A� ���/�
�J���2�ȅo(uJJ�(5�e,`(�t��!4�T��ʁ�������e��3��ĳ2��	����o���u-q-�Ho�(ə���ŒuKl��AK� Z��&$�|>��������/+�F?�$�Ǔ2�^��D`S����J~=���<T��LjM�/��~:~����t�J��,*$l����3Q|i|�����2a�nü?�&2H��r�A>���u�Ds�՝8����ztJ���h�>o�C�����tǄޒ~o>_�=�q�z�_O�����X���)ef�aϧ ��}>�:>�V�m��[j3�=�D���A�[B?g� �J{�$Z����9'��sΉ�*������)�?�F�	�V��m��y�h�1�.rנ��ԩ�y��樑#÷Z�P_.>���<_�rb¨a�y����R��4�?�u]�~�x1      �   �  x��YK�\�\W���F?�?�:�,��lI6��=0|%/�s1����c�
腀�VF�'"�ŗB�^����/��r����_^��������/��ۏ������?~���ǅ6�x�Sxu����G.B��d�bO\n�7�-]M�oD�h��E9��_4.��e��'K.&����ϟ/�����˗�__������״����߸nBY(>@!�O�7���F⚵��K�\�xQ����eyC��"-�ԛ��n���`��V�7|W=� �p���@`�J��V*�A��V����!�Y>�"�o��Q�rC��
]��.$U�Sb�s1s�D�&�I�!��j�T��<�P݂��bZ2�1���S�1G�tj�\"pT(%���-���!7�Mk/���R�$�G� 3�/�H�8�#����a��;��C\�Yd>fA�Y�W��`ٔ��!�C��e��}md��ZH�f���4/6iZg{bD����D���f�C̘�I�0�Ѡ��ZV��M%�4<čU���س E-��`�	���;n�bs7im�J��+r��WA��9��(���?�8����;sʊ$AԤ3q�%�kQ���xEq J�i�du9��8��d,�9��1�Ł+��&�T��!�*���9��Q̒!�<� ��p"��{�*��rj��4�r L��@7���X�m�n�JGq�1�Z� M(����ZV�7��Qmx�s���"78�8�f4G��Vs�TA{4�[�Ѧ(w ���K�w�&�P	�USJs���h��N� T�o�=y���d9G�QY��r�<!�ؒO��̞rcnk�p�GW1�	�_3�{�%}@a��gE���fc�#�Ȟ=��*1���bOB0�:a�̝�ҏ��>TbD���i���!��܍��Ro�XT��
CmU
�
��<G��VV�Ͼ}\5�L�r�C3z�����S��:�pQ"g]W�'	� ]L���0I�UOQ��d�&�U
9���յX��T`2�:i�)�Q�M��>��#+=9�Ŗ˸�O1g�^Qp�:��}m'�TԂ(�q�%�0��f��I�ԏi�"z�zвőg�
�o6���i�99�HS;si���bBp�w��r�z�Mj�ef{k{�N���}�ꖠ��;��s�8S�1����o��yB�oN�ڟh{�JW�׹,g0�)�F�O0�>Q���{�/` j[�R�Y�??�j�W��0B��?IgF��l����`�n�}w�F'Q`.`(�\ ��6C���ɘ�B0:�y*$���Ǌ���kE�>�@漦s4p���]DLν�rR�����I5>�d<�rta�L�\��(
��/����|�m�ː��zT��
\�m��GP��T��t��| ؐ-?=���9<�%.���d�1���O����t�����vU��M�ݽJ�A��p��Bc������z�����6��?��v��QwӐ�q;X}T&�;ؙǴh^�G�T�u�O�	��IP���r�]P�K5&�i��q�6��ڣ2�f燫�C��	4�.�rLZ
x�C�Zh�bV����^) 3p�L�>�7�f^��F���S�Y��c駃��>O�� O\���Q�`
�O��c�)5E'�)����-�楔��Pga����=b�X�	�\���ǔ�AA���+7u�����$���9���6j�%v��ۭ��ڡW~V��	�[���ߧ��܊�)�A�,�A����g�&(!K7�+%vi�ۻ'>�/0�܈@��1
u���������/pK��[q�(�q{Y�j�j�/t�P�r�Pv�'Y]}*���8l�sO<Fʵ=��]�*�X���wk�9o�.��C����S4nwū|�m��q���랕Z��Wq��}���n�����x�	      �      x���9�eˑ$H�|	��M>��ʒ��J� ����V�+h�בk3�q�q;j��@F��3����M���������O����_��?��w��X���/��L���/��֜��Z��?�w��/~¸�-dL�0)`�Ŭ2��?������������o��_�MΗ���7̞��&�[_�nX��\LK��gS�Y{�um����*�������'J~5�ʲ�I��n��ko�刞�Y��Z'x2Jܚ�K����������-ı�FkM��I��P����|1�V �Ռ������/����ۿ���
z����������L����P��hh�c����J��:u��o����׿ŵ?K��w�v>���;��.[��q����E�"�ڎf��FO�s]2��[a%��v����͗������y�:�~�zu	@���@�D[�soM�j�[���j�8=��'P�yhN�����W����
�/�v|Wip��2��:�� 7\�<1��s�5|�뼮���_�������~�<[ľ��
��Ox��O��%��A���d�W@}��{��2���=ǘ��$�w=�̿��h.9�n���9�]�on�B;}���<<�=�=������@$��^S���(��jm�a�7D��k�i������m*�v
D�8�<���0�����4x����xR��ގoj@��F�=�o���ow�6+��m�
���tn��Wk���L��� ��t�fp�y�_�l������� v��8�p��s��~�A��k�@O�ߴ�s���/�-iI�Bm����5����V�o��Ws&�	�����_h��Q��7yM�b�-�3�o���g���~�A�!'�:XK<��i��t��T�[-�{h���~����>tg�_�����}�k����[iF4�u��o�^��7�9��K~c-}w�7<`c�v��d	ߏ�[� N��i�"�p܎U^v�v$�'�m��w�'P����st�@��j��v���Nv#��zx���8�p��@�t�s`l�!��k��l�F�~ݧh�s�Vz�p�!�~5r�ȏ��N2�&ـ�} ����`~M؀�G�w��������c��O����Ծ&�D0�vٜD_�r�f��@�5�5�J�"?N�%5�5x�g��>߂�kk8���-�~͟X������z���?�&��F�Ƽ\�_�'ް{�N���6��I�k�Dkډc�/�����8��G�)}�J�kq�@
�M�o�L�_d/�yk(ܾg�@�r:l��[[Ͷk�?k��kݼ�����c�_�Z��_�'�\���k�qX��Ođ8��^�`Z����E��
��u�ɛ ��ԭD�����7�S?`��]2�;���܍�_��h���"_D?�����˭)���i	8���K�s�Ok���N8K��&ݑ?힎[6�딗�ȟV��]7.OI�#a ��1���9�#�@%37�X_Ǯ6G��g�d�����);�gBk�^~M�^�:�g�����~��B�X?Ӏ�a�����o�_��L��C�=�h�?��v>`n�*=t��f������{��*8��'ݚk�f���rm*��[�x�(�5Ӧ{�����j��k��S�i4�OP���gJ�:w������G�#�i)î��?��6�ߒ���?oF�h���������0?&ح�~�`�; *��?����y���ϼ1�ci�˹,}�u�b5"��F}��\9����{��EX������9���>���J5"��-c�Y�A�����O��B%���~z�L͙ ?0�7�-�ډ&�䜸��kϝ�A�ڡ:
�� �����R����4]���)��?�Z�D�������<�S��c���z
�$`Y��@�c�~��3=���|"ݚq;0�����G_	������W����6��D:�9/kg�S!x?联���F�r*l,��ȵ��Ҭ�a`U�����h�
}�V��f�.�i�醉[��MW�2?lK�F�F?{�4߷Q�d00F�{���~ؖ�H��|��6Q߸��)�=�J�M�S��tC���7Q��z�ݷ|��|
$�N��-�u���*�=�E���}�G��#|J��˧���'[ ��nj\2���'���z�6��59�jԏkү�!��}������Ġ��j��2Ļs��� ��M��n�]�[w�@�HS����ݹ�bm��ODi�?+�;��O�PA8�g]W��p�<H���":�ù��4"GX��I��� �|�'
��%|��m�JfN���q���a2.e8���r?��Z��6�A�g�@�%&|�c�4~f�#�"�L������%r�[��Y��tuM���+�8�{4�@&���3��<�gC�Z���p�dP���z�&�}��0��w�����Fќt��?�Ӂ�V��5������
��%r��Ʉ�I�d�^�P������O*u ��N�l���؄8��m�f59�{B�z�����		��Nx?�W�(�T�V �?w�N
�T��@����pj��<�#�4(���̑B~�X?�����\*��p�ZtR���$| ��Lo������ަu��&*֫��������:�d�
Ef뜒n(�

Yh����!�fM���iH�)-�f��Da_̙3�5`ьm��tU�Jk@���F�]�����F�陷�s�i��fˆ�H�Q�j�t�mJΩn@����ۘ[O)I��г J⎳��gV%j�!�#ԏ7��|��\"��b79�8�F"�R��/i�a��b~#�:�m�r��%>"�Ҋ-i��5�U�K\Z�p�y�8��QA%�>|9���f \��Z�yn��!��K��,�j'�1�@Tp�W��K�D���|��n�ęL[`v{����o�ab*�nv�+�0����.�8�R&3r�����ϊ\b-�#⿖Rt1Alu�����bԢ�{����%(��G]n��3�Q�&���1w�ύ���k^t�������%)���M3�D��,I��p��S���Rp�$�+�L�b�I
2�I�Q�E2	��b��:״Ћ�k2�N\�~;��d � ����ތzvh� ��{�	E6	���Zw����l`�[�};<_� ��D�;��J{Z�w�@��5]J�~�L
dr��E�b��Y�L
d����4KEH&-����Ȑ3��Q������R�KZpI#�`���Q�&-������v�JZP�"A��h�(g�v����͜��\2�R,�05_�d�%�Ū�w��ZT� �v�E�ZzM�%.q�˧7�sèg����(l�����.B#[c�)�2*ڡ�4b�K4Y�(i����������%.q����t�Xb�%މ��%a�C�h$��!�o(r�\r�����e�r��!���pG];�\���NߙҧA.u���׍�����M�$�:�x�ׄ�6u���q���$��m��%����}2�0���$�Cq����ԋ�"���#1���M@�7tJ�fQߦd���n���i �"�˭M��4�L[����δdF��FA���6<�XF�;d]���1܆>��2w�ݱN�'��!�"��xzB�j�|{qO�s�_<�FA�mCs����v��������.BC���0j�42����}o:�H�Y�i}��F��M� S�yv�q�ׄr7͂L� �3��w�,�d�Ϲ(��bb6͂L�����"�f�&�Rf��5o��&�^��>�޴�M��8Z�A՛�I�0���Mؤ�,ۨ%uoZ�����;i�s�G��I���%Y/�|�6黬�m�Ӓ@��I�ZC%̨}�6i��&f���Mؤ�7�l�U�M�`�W$�'s �on�"�K[�o�[�&wg�?A�M�
6Ez��F|r3��l�(���Y�Q��V�I"h��Z*�6q+��g��<KQ �V�)�~�[n	�ŏ�`�����H�a,�m���q',����l�"ղ�Pdl�ݟ�ۤ�"��`��£��"��`���    ��Yύ
8�i�-K��� �d�Us�!y@	ki	�d��#$|�
�
8�i��v����p& ��5G)GP g.Y��ؾ�6"�8pɶ��]�
���m�����n�(�.ٶ�H��3	
������ݒ�t��%T�m����ϊdB�v6y[|�pF�"��?���E�Q ��eI閂�7���#7�5]���%�{$!�a�85�@.� �w6���>
���.hl��'��x��7�$�
��x���tw�N� �(��ܾ&6�Q�8� �#8���s#E�Q �+/S�i
��x��Y�+]لx��+xB�M(�G����5N7]P g��	�;�-5�T��]l2̭ߓ���3*�F2�-Joل
x�S��j"�@� �>~8)�APgT���[�pF|�<-%=3�%pF	|ĉ3��U
J����j������h?��x�蹏��ل�s+z�E�8�>����&l�adj�c�/I�{A�QAD�g(�M���p{}C�t��GP�an�֓*��3j�3�-���8�>wE�o�Y��#����"{r�����*�W�����bb7�
�ˀܲdK7�lB|�̶��	
���*��EGSR��
Ψ������H�Ms��g�K�
Ψ��,*w��t{UpF|��7W[�/Z��
>w�Kw�%(�	U�ő�q�aT�U�vޢ�=��	J�3�<�t�t��&�Wz��4WڀN�M�G�
�28���^n(PO�	�2���h�� �@(����;W��28m�댾'*�dp�I��-71C�AC���9�up�]}RKWE6���#�(J��U�M�������3� ��3��u�'oup�թyGD�ACg3I���:8�m-f�up����up<�3"tr�ق:8���j{6�C6���������*6E@�I|Rup���)�
��:��:7Ko�:x�)�J�r<up�d�6��tp�']뺒e�:8����ޔ��d�7r�'�Qg���a�p�Pg���P�s%�
ep|W�Fs��C��d�7TBm:�2����N��#(��ഭn����d�7�M�e��d�7t�H
��. �Ԣ�;���2�������2�����:�E\@C��{�a`�������)(��2�.f� )l�(���o�[!��gE6�N�0md���&���Pn��%Q���P�aI�I1\@���[j��:��������E\@C}��s[S��p�F�rK"=+�	��7t���(��o�"#A�M ���e�o����. ������gE6�No7g,�醑M ����g��YQ��o���(��o(7���Z4,���a�:-**�J��TR���.��T}����PQ	P���>�����L���vAݫ՞��J��n���_�J��а��PzMH&P��P������.�����f~M��(ᴫ��{D�xE%\@	���ART��p�N>�U�v5ln"��kc����#�@	wh���I�h1�dS@��&N�_�J���(�w�%}d(���Q:�P	P�:|��T����(�1]���Q�"�@	�C��3�p!<�+�ȹ�E�L ���
���YQ�:^���t��. �;��kj����%��u����;��hX
\���/'���~�K��GӵV����%���_�V�jE\@�zs�/ueG\@��v�8��*��2���n!��ep\w�b�H�n�2���;F���[?��2x@C���=��*���4f_�@\@h4�P�/�*��N#&ʤ��%P����QP�3��J�%��*���E���Cl�-���{�$f(��*�n�)�9����
.���[��e�x�*��
��u]̙.���v6z�r醑M���ݺ���*��w��O(�	T�w[Gw��`�D�@�Q�w�g1\@��C#:9�Pܙ@w(E�����A\@�]��,�lEp\w�w#_t'���� ������)�r����\_-5HТ/7��+���q�^�	Dpݕ�!�%SEp<��GZ���P�u���15]Ep<�xՙ5�D��.?�h�y�"���Pۣf�0��"x@��W�<3�Ep���s�F6�n�J|L�CDP���p�Ҫ(����m��H�	�"x@#ڳٿpH ���G��� �
.����w�i�捊*��
n�-ek*�UT�T���<rI"��*x4Ym/�P�qU#�Rn�Wj��~*ن���n�w��9�u��v?0[2Oi�P�Q�m]|�Yjb(�(�6ƿ�\�J��m�A�	�s}&��P�Q�mE�Yx7�md��J}%��0�md��F�}SNPX�
�M4uj/����5�:W�m�E�:Ih�Fb1�g˸O�R�c1
����>�=m��Q���7�./���b1�Q�:I(�bb1�׸�x��2�P�B(&��E31��y7Sf߄{��P��nP<��:Fb"1�neki:�a F!c�����KC�0���]�O�u[�"� �(��Z���@�C�"���b1�k�9*�#� ����<�1
��ZTX?-&�@�B �v��y����@����ȿm�A2A &�ua���l�@L@G46�<�������M�F6A �v�t�������2^ڄ� ����qdR��p�����P����z�%(F\A �~uN	Ii�
�
x@#���)���+�1���#%@ �]ljI)5��w�<��G'���O��m��v�+�߶kl���\��v�윒G��� �.vu?��݃��m���}�S4���oGR��yD�o�;��\ro�o��v��%�E*��m��"�$����F��0"�����HhDX!m�K�m�9򧆨�����e�n>�#�I�^v:�zI�P��8�Rj�����!=mި~�C��@#h��`���.Z��<�#�o�̟9��kc�ȟ���!)�ȕ�1�#o2|{���qp��aVs�Om�72z�}����*n�����,�ʶ>B�����Ωr��l��=����}���m=ct�	����m=ch�Ό3�a�߭g���w[���*�z�:.�F���j����g��Nw?��򑡲�g����c~$&��m=�4f�РtU<��`�]��4�I�m=�(�67�Äʶv`��bħ�b8cR;��B���]3���l��[+�G6��y�Pm����vH�� b�7�#eVـl�s�=���D��zg;�[�_�m��O�đ��F�Y�����q�˲X~|��_��Y�ˏ�1�Hk�r(�Í�dY��P-�5���6۟����������󮱌�K�_~pN��F���z<biiP�������6�b_�7�iJ�6nO���O�i*����O���y�2�#iu�~�w?e��^�%5�1Ը���}�{0�c�A���:���NZ�骰I�S��@�w����Rj����.h��2E����}��{�Ϗ����O��j4Os�5�~�|t���8��g�q��;}C�����N6�������'���"��D;-f:�U�Ml��7��R�"�ش�<
&����.���o3jfң�F���b���*wo0�k&S����lP�{+�������1����{���Ⱦ�zn&�ʣ{��r�V��o�$&��tq;�r�3/�3>g�T���8�����:B�ԚC�5乚�va��\r[�o,�m��+=3Z+��{Kӷ�NK"�������9U��p�i߳�$!��AO߹�H�����Ģ�<�*׻����*H�g�����I��
A��4��e�K#9���y=/�-u�zv�rO�g^�w�nV=�\BM>Jb[{�i�R2I�R��z�niA��N�!�����"z_��Ou��|gW��_�4~@���وOw��g��+�@�8���H/�5��ׯ�qǊ�h����;V�Z	u[p��Z�    �UG����v�j/�nz7n�5���G��J��a!���lm��R��y,��c�摶C;��jO;����y��U[q�56��nv��i����n[�S��ۿ�"z�W���n�V����7T����W�����d����oN��X��9N����w�O�n$��8�[�,z<p�WfO�Y=p	wW��L���������b�[g0�!����6�D�yo��n�)�w]'�W�~3�K�N����?�;������8ީ�VƮ8&[�'W����.��}�߅}�w�����~u��'{8���ENnҠ��m=�c����r���W���N�wG���N���;<�.� �3���qe�W��>�R����q��'4tNM�&w��7>���G��w�x?}o���ܕ�� B�Fz�'��q�0�\�n�� Bl�m��i1�}e���)��C>o$#�rz��G�ˡ?�s��=c_��r�/h�>Q��2R:;zOoSU��,�������K?p�Y����@����f�ɧJ������DK���N�+�,���P�G��g�\����s�����R�xu���7���Ky��q��S+��Hg�����%riO�qcG����x1��mp�YB5e]�j�/\�8Ŷ�&��(�u}�nN�ʛX�嫛�藛�����Ww�ߦ%ݭF�w�K����{OG���[J��;�|�r��=>z��bp1��+n�r{��(��QOok����o��I���jh��=�:���Ⴎ���� ��Y�0>��bdQ��(e�~V2|�QS`����2���+w=|�N�jd^U���k�I�$��$?��Qp_����+\�0'm&g��>�Ñ�Lo�7�Rqj�ӱ>��U@G����c}@�j!h,�5Ҧ���*�8�}�D,�W)�	��]fi�by@���]=�z����'�S�>�"t2�	�:�/�|�����E��y��"t2G]/2w����=�L['o�G�a$�2������A2- �NMU��%���lڹ��_�Y7��,`�;9�Z?#L��,`S�J Il*B'��NN����z:Y��Ԟ�%���*��~ʞ���ȦU�)<�Am�7�lZ��;�l|��U�)��:啃�٣��!�v�:e�рM���W�K�\g6����рM�nq,��w`f�h��P�c��:7Ӂ�٣��}��9�8A��m���34���j����рM���8�[B���8�n������؀L�nS,S��dڣ�V˽���=N�A���8�t^S�d���-mS�d��[��	�G�P�V�g��ci���H�:����Ӡ��*n���q|>�M�u��D�w#}�̃�ݻt��hf����w���a��00�{P���r����L�T��9rs���S*t�(�&����t�]ԭ�O��Q��kp+�Qed���q&�����Bz�X�5�h�,���>nx�b��i���!p�k�����	�C��WĦ�I�2D`�Țk�<��vx��9n�2�U홄VCu�g��HD��.W�$�GvN?�CC�û���ͪ����5���v�]o��U�X��P�6,��Vx�Cf�x��;���=�[fD��ȣ9ORLu�Qt�^��9*`�>?�}M�b��j��hQ��]-o�Z��"��Z@ǋ��N����H�]�͖�������=��hf��>
h���ҚE�w�����,u���ξ
�p���TB���ў�H u��S�ρ�^�����'����@&�q~�vJ��� 2��o�<(1g} ��è�����2��]���Lo�4�M��Q���0�i �����*y����� 6�{�ͳwt�әشuu1�'���ςQ[km�6�ys���)Η�q;D�,BM�e�/Z*�10�.��׏[��b����3�8���og)��3���լ�:g�^��k��{:�;��kl�6=3����	+A��8|-�
����Fʞ��hr7I%2��6UAmw�U����c�t�h����J�����krh��������Kk(ǀa�;�-�~_�u@#����>��Pئ*h�+]��(s�ġߗw���Z��։��Pئ�g� �K=ws�k��[Aݰ&�wR>�:�����M��agʺ�@�~��wbgʺ%4�;|��7�lBYw�Q`#�%�(��9K�9�{��7W	���Se��Y#�fR�{��/�i����-�;�Q�(�G��ï$q��rP��ߴy6$~è��
�/X���<��j�y�������}'Z��C��}b���������Ue���ĮFաH�C�>�=�W��(p�Um�~�2�yad~UT8P�]��zL�$3�GJ��b?�?Q����nak��U��D�c������L&�D����n��y�*dáh�r���j���<(��
	I�Ƽ��thA�����R�mϋdO�F��M���=1�gB�o�E�$�wwZ0s{�!��P�B��}�/��)�R΍��qzJ�X�j\`C&M�ĉ
R�\�@�R &*H�=�/�Wǐ��YMl��ړ��{uD�잞�ړ��{u��%Ol��ړK՘㙊b'�HX�I������H��jO.92zo����j�=���r��Y�5�O¢��(��s`��E��wa��u�^3B�8�u��y�1գE@�w4ŗ詏Oԏ�v4��R��9��9���u0��m�F���o�od�E�i!��{��2��g��i V�M��\���T�Dc3A��4�����DUj�Bh��]���1Q�Z�ڵ]<R�DQj1�s��1�(J-�'t��q3�]��e)����)�t�2�g�"<�܅,�(L-�E��M�w��o�\�(L-Bq蹝-M��(L-B����g_z�H(B�nR�e���E�ߓ���N����3�H;]J��yl��c7\r������˷m7>0ޫ*f2\�!ur(��/y^��|�y�~Ml�$/�]�8�}��ݣ^���w]u�-X�I�}�%iK���h���n2���]�疌�!��b���1n��!��=jhD�b��	ŭKz���-I&f".O���j�>,
UKf��uQ	�[����p視�D�jiC���m��Lq�P���ĀF���z�P��S���xE��t���k
N ��u����AL@\*Tw�ɩ�N����g��}u����.�̏���(U-*��E���sO���Tt��/:�X�D�jiA��#�\v��ˀOk�<5?���>1�u*�����c�D�M�Q�Z,\�)�X��@�jpišBnF����K��RT�J$L�SΞ(T-{r)���?�O.a��'���q3#��Ol9�'�|�n��]��w�E�ׄЯ�I�˞}wZ�n�� Ye���'Im�gkt�Oo7={�QQ*~��Qω����!�K����ظ�����|-ON�&6��di@�ײ���՟4h4v�m+=��d8+�C˽��������k�bJ)�n`�a��ޝc�,kt[V�+d����"ÈQ���G�+���W�m_��<M��k�̝[���|����v��a�ͯ�G��~�H7˺��|���Z�!�>-�|M�t��&B�5�L�>��~i_s�:������������Ǧ�����d9sV8 �c�m�M";��K��
����S�[�zv��
�v,fؼ���:s.�nx+�涰��:s>P�D�5Oka��u�*\�h���ԷP�_g���}�F��j���U�@%J�Z�p�P�_g������~_�ѯ3W�����5d�"v�fA(��1�!/��5B��O{���P�նfA��å�r[C�x�e� ��ZK�0C� �M(�G��T��o��_�h��i.�B��9����Ŏ�:"��_��8��:"�7�_R4�NWE:�yI�삅9������mv~�B�?"y7�M|�t�֫��p�� �G�*�#0vC� #N(�M�D� �Ó����K�-M�vOGu�2і�t��ثP���v+;w.�E�K���9F<NE.-�ł�p���Bq    �Z+�%�D-m��;��S4:TgA�.�ɱ�b��9���'��r,:I��9&�:�`��;2?��Վ��JqHi��SG��j�c�S���Kݼ��R��n��@�B=>f���=gڢP�w,�j���H'J��x�!���+���"���8l�3?u�(�X��bd�J�1UԱ��ݤX�_U��W�ڣfxh�!P�wl���OHg��WT�Jc���:����c^�f7�zzނWT�ʏ>���t]n;��Ux>Q�y�
;(G�'V�e��:;.l�Z��f�-M�X8б�+���Tm�:�	}����*t�~�	9H)��i��P� �)��`����)[����_�`3#M�}7wSO��I�~�Y�>~����);����P�w�B����E%l�.ivF���9�P�w,!6���$y�r�u�f��v�+T�+vň���صD����@�XgW��ɣ��>������#�"�o��񅒼cG���Ƒ��Y(��m��Ls�j�V���~
'l�*V�n�B&g}�BUޱ��ȅ�b��LJ� u,��vIjs%]�`��v���S�Baޱ�|wQ#Q����6l�(�<�������軝v+T���Z��~����҂W I���y��v5xĉ�'�Z:5^���N��!������ ј�\G��;x�s�X���-xe�������+�t��v��;��Vd���X��N_cJ�PMw,�j�/t��(a^���%�һ|݂W��u�~�~���DpA�(7�H�O��Y�`V��jg"�v\P+f~��@��n��[�_��|Z:�	����4tR��/\���v}��s.��"ص+�|9̳m�v�^۲��r��vi��بO�|;�`�v ��h�Č��`m�v������QPew0Pt��j+�.�!�PtW��؄4������V휉)����Z�g4K�����.(��"����z�����>��o���b;����u���"��gt�|�b;�����#�0̍w�,���nwg�7�`�!��`�#�8����xj���#bl68�����IL��a���F�47
|L{7���;h�};��^�Q{���fA0���d��nT�\Lci�v�\l�^��Q�wl����EyD-�����%��]�Om�v����B;~�Q�g�$~a���m�)?2tm�+/#�6P[��݄k����vnp0P�vw_�3�/���`���k1�6�������#���8DH����|�D��Jxc�i0�v��<�VP%�2ښ����Z�c���o�����{,A�C�{��J=`��d���R=� ح�h����B�'��{wo�A�v�lޡ����,�z�^�c>�����l�1��W�ד�'���2�u�΅`O�
p�ݠԂp{ ��n����YH�ԁa�z�a˾F��S���ۥ)Gs;���yqn�lN�=u`�����4��"�����J=�v�����蜀���pO��n�����>�â���tׅrO� ��B�ӧ
��>O�m�id��x�G�N�F����	���;)T��T-Gv�ѝ!�>e/g�� Ov��e�$�e��� pe��i�@ᆃ�+���r&i!�� ��r5��3�'��O>�.X�-�8qe@* фϽ�������&������=�`������������o��[p� �`���|��mYe*�|9_�����H�w!�����N����/��u�G��ʅ�/��u�gV$0LN�Ǡ�n��-�|9=����ɷ]���X����z�7?P��@iYvki_fŴ��hδ�
m_fŴ(0�4�p�s���=3��/�"Z��B�_� ڪ���Gz�BݗU�L"��f:0y_Vų�kdɞV��˪xm�}e&����c�� ���
�_V�/y�Dv��\��TS���ʲ�B'QVE�j[����][��c��$$�5tp��,
h(�qF������q1�.���%n��:��_�3����2�������Q��۫>�,{<3���Q���|��``���ϭ�3!������N��M($٢���|��8�5����E_������>˜<+���1h�nm�c�l���>�;��)��cV�|G� �k�v�`0��w]��&3}.t�(�q���ܕ�+���`)�!#�Խ���,��[;�km0���%x����l�R���?�Vc��W��_��<�t�1f�8�3��)� M4�ŕMJ��j=}j<�x�<��t͘����3��8r4��)��x������H<�d�2�y|w�8���܆����}=Np�w�Z��X�ڸ���?7l���� G�S?�Z��Z�º��e]5�x��:�~CɌ����"+�+:#��� �v�Q���?�(�����pRLs�3���:)~�qR�X����{)~��as�f	������B#\Tߡ����I0��K�G���UE�I���]��CFh��o�h���l�Jv[�[V�����I��¨�K�O�x5_Yɳ��.��3�TR����<��b���}i��"��i�xaZ����9�(X��w=�	^/�/�6�!�`��K)���K�p�Vsn&�A0��wEr�Uͷ]�0+^��v=(��¶�K�3���]x����=��A�T������)��������r�[����7����ٲ�#�{�]�y�u�#I`�8�ŕl��X�H�(���(�%�W.^ب^X������>*|;�`�¦��P/lV/�M��r�5X��Op��y�V�۞��s���݂�&��3::����=9M|���h=�����wE_�fi��.����F�hN��|��epo=5F�"����X�'�r�Vq�8�F�������-1YGd�����P��u 78:&�#�o��T� p��˰�3�b���]1w�5�ֲ�&�H;���V�$AE�! \�H#�~�i�GE����`������$����;����������=��=i�Kw�}5Gw��]+&�	�[�~��c�;g�^1i����W�l.+�9����r>�bΚ��D�43����w�5��R2�s�l8r�eB#�x�'x��f7�£����Q�#)<��F�c'b�;7q0s�"U� �kE��������!����\V�Y^��=�l�Cf���- X(�n���C�Dx�vF�Xn"���`�]���Hv��g#��`�Po3��;� �*��$��\N���WA0�G"�Y���]C��K�![\� �Y����ևd��/�
�żY7>5_y>5�
�s��:��lU��7?)ڃ�~r��ߚ�7���;n�<���+�ѝ��L��:�����FOv�bښ�a�Ȼ����5��EvC�1QUo�2i�@��i���3�^&�Έ�_M��b���!���#ֵ{
�:Pt(�8�y�Ѐb����n�a�q��SR��)P���l���}wɫ]Y�C�����NsB��[u��
h�٢9ԉ�ڪ��{���B��U`Y_s�f�I.ڪذE5q�aC�0�E�
����Wu�rb"�y����{|v��DTT���B��.Fkf0���C��'J�&���{�g�l��`-ǅ1�@�.
8bH���\D��6
0��N"�Os��q:��@Eq���>�APSc����.��FR�`�>P���kz�3RQ��T,�k���/js�
�E�}��;_� ���g��9J�|E�מ�TA0.�E�������;��Ly�T��(���&߂z
FSQ���=´�IZEm�2L�Q֒�EEm�2lO��)#�uA0����,��e ��.�@0�U�J�������5�9��`�m��_vA0)��Z�+�9*��6p6��(�Q)^��)�MEq�JA��GԲ#M��l��%����v?`�Ic��,.&�0�3<�# ��օ������v>�[ɬ�u�9X�_����63�0�    � �Z'H����s�*���ޞ~iMό���; m��;�
 _}X�[�9Ѧ֖�(�Uv��1r���a]��
����ڃ(Ee�j��K1����,ӂ�:w�@Jj��2G��h�ڒ�OEe�j�ј<7ti43�h7�_8�ݷ�̱â���h�j[�tG8).TT��a���p��Ȧ~Q�c�Is�cҥe����;L�9�6R?�]0��U����S2�9v�4��}k�%�ݷ�̱ä��殬[�iG(*s�0inp�O
<��av�48f5^���ä���5Vd���2���,q�W�*zj��!�������Oh#kƄqU��zT[,vK)}�^��`{�����2� ���{$���.&�4&ҳe��c���`QP�����4)�}��|~��*�l�Y�Î`�.�i��)iq401�2����c*�qL�!c�,�rʴ��2�� X2v��hp��^�K�S�N�
k7}�`������7����0��2vF���Y8(
sL�s�X�����Z+�m���8��y�.b�g'%���{�e��oC?[)��/d��r��tAc�똨����n�o&�m����lٳ����lc>�"v6S����c3�r>�)����ʺA�?�)]`�}�S.9�"��S��1��q�N����P�ks�s�JG]�?;*���9?��|�T����InxCEn��Q��F�u��)r�ώJ7xF{��(���䳣�o�;o?��rhA��zg�G���g?��֣vI�:Z2㳡��з�3�VY��gS���S��e�[�-�϶H8�gb
]��r<7P��AԔRT��>��k�x�͕61nT&	�?0}iNG_ͷ�$��;�����a��l�t�cV�\p��>�ݜnl��#ٯ��>�ݜ.���5���g7��Gd�Q�糛�^QM�Rn���g7�l{(�|���ۑU��S�A�%B�
�pB,��N��F4O4Cq�p�0%.0j�܎|�]����	3j�܎|��{�
ep���
ptg��;-K���D�����`ؑIt�-������D�ⅵ4�(�]*�ۑNt��F�,M��(��#���K�P�O0
��&Ptw�X*�*v�(hH�;d�������m��6֛��n\T�	,�2|�yC����6�i�K�o(�K�~n�`��k'Q� `T����in�,7{r-'C�+�U0m[7nk'��׎B-s��բ��#�p�ԊZ�xc��ǥqaS+j�w�&�\$����uY���%xM]��AY��� ��p[�~Hp��m����U��9����<���DpÜr⢜��M�8���'~V�G�����E-&?+��_�QNY�b��`q�a�+�>c�Kp���.
9���%����+�3�,�[�B��:��N����W
dL�J��5S�����V��ʭ9�1&����$pA0���_W޻����`�����	�LR�^�	�\f\�K�Ts7��H^)c�&�f���)�}癤"�{x�%��x>j�
p����F�I*��@e�_�2va��6&��0��
��7�����:��\�s���ɚBe�I+��=!�s��Zqd�a�4/�Y cҊ's'k$�$2�+����J�����%����+��=�6�\(U1����n��Jh%*���,ұ���U�J+��c��/���D�E�1� �dpQ�Ҋ"�s 1H�J�jE�3E��+G0�/rQXڳf�A{�)ם=����~��N��4��_�,����p�r���'?UHǬ��F~E�,;�'O�Bld�"*̖��8:����*)��O��b)�Z )<��O������k)<��O���ع�.
��YO��s����ËS�]�|�d���F���sU����[M��beJQm�>^��΅΅S���Uv�H�Y�^E��p�+��ek�_���W��ʝ��xIUn/in��b�����S��(�`
/�޶�	�2�P47ZZ�����Y%��?�=�=�һgC)�&E���U끈���E�h���za�=��f��I��|�1-��U�=��.�٪��������ì`XT��HEM��YU��J5����O�=d�Qo~�Vx����G9|�m�g.<�{n��~OPJ�����6�vzf�T�{�rG�._�XT�j��sMz�F���e�M��h�aÏjx?pr�lᔮQ���t�}:W�ƨʳ�+�+�FR�wkV/�G;���]xhkV��ϰ�ܓc@��o���M����Q*���Z�>F���G��z�!��<%��V���f�����I)b�kU�|E
C��oV_�x�Q����7V�֢��͜&�IZ+��-d�!)yB�/��VT����ۣX�B[����sD=pT���}n�E?�.��	��gxw��\�#�T��=����ȷ]T�T�ϝ{1m�>i�#�T��m�ǜ�T1�@��FP�>w�Rr��l�A|���d���Ah�j�gd��9�/� �Q���d����B�AG�t������q��(��M<�R���W���
A=� x�12��u�N���q��(��7���	��-?O+w"���4�･r3Q�m�^/M��l#����Vn��pd��ʧ�1��[��s�M�2��;�UM-�TL��L��C2o������X�n˦�c�B�0~����ѹ��p!xk�-��ܱ.����{���$�(Zf"E���s}�6�@�C���� +�q7��7�P�;w�Ѳ���\
y���crc�)څ"��{G�5$���}�E
yg8�n�Z[,�p&��i�ڶ��
�>��Bx!�=E���Y	���P�gE�`}?���*�n�Y���a�'x���[G�%�)��C�r͠b�BD��Q�/�d*�ܸ���裐��t�b�����=�(�(J�e �C�6�1f�pt'�i�
I,�6�",�ml��|�e
,��M.���a6o��<^+j4Q�x��Lskeh����W`��J�0%pA4-��k���06�тh!_�4�I���Q�����l��^�&#%"g���x�i�t��S���c6��-�FJD�ޑ��D�l\a�D�T���=ts��-9�Z4���V�3��ieͼ��.���l�R:-�y�ٵ��!�Q��XR4�k��Hz�ͼ��.�
o�ўj��pĀee�1h*�S{EX�S\�s7�{k��$,�]6C��K���!j���㍯bi�L��������I��»�N%���L��޵t.�>[Τ�»�.%�,����Y��4&�$pA�n�G!s�j��+�{	�zZZ�9�"}�s�)	W�9�"}�`�����F�W	vC4�ײVN
��KFD��p	�֨XAv�M�,�����V�4K���"�b�{[fY�2��q�S^��[&Y�������U/���\-I��y�"���ǲ�,���ego���yb��	�l���F'�hԗ_vA�Sɾ���:��,V�&��)����Yҕ�ބr��p��6���6vvE����>Ri��	���?�=��dZћPfA�=��-����	e�����w~a�&Lüp;=[�V4'�	ӝ�3�p�hN(�{L�܍֊�2�a+r���B��9�,`�Ɗ��т܊愲�a��۫��4V4'��-R"=#?sќP0l�Hi+���`��ix:��rηa���+t��شCd��F�{�0J-�
�E�g�ՙ��V���<��I���EV��=9��$}�퐻��	^1��%Q�0>.ڀa�^d#���a�y��-R��g.�j�Y��Ϲ�)�6`�� �k*��'�6 ��{���'�6 ��m�[#���l�S\4R%�a~�h��)�,�lS4���lO��3�BX�>+�v�߅(s�h��T,|p���	k��R� X�H�Hl
�4�F3��&{�zE�঻�SZ���MaD�৻�}F�����[v���I�7L�% �n�!�y��J��oQ��L�4+�~% h�݃;��V(�J@о#��rz�J�n�?�Y�;��9]�
�_7�S���J�	���p��� Y  J,Ò��M���$�-c�ʯ��p��c�l97ɰ$A�pn�o1<a�^��`=Ƙ�$�^��l�ƪVh�z�	7��x�
�_7�G)�[����_gA�(����&S���u��i��� �,�[�jnyi�Ư� ��j���Z����qGi9��4��+:�����y�-�}��1l���,9��؝]yP��├� �׌��i]�
�xESm͇���0�s!�}7A4)�6�+��b�e�C�(,+�}]R�c�i]�2�]t<��?w3R���)��� ��a�ot��x���,�2G��g�į� ����7�,�M���lWA�o���.��
�������?��t�y�O��g!��sa~�γZ���V��\�t�y�m�|�?���|O[!��sm]`��b|cڌ
���k���Ai�.�u��}��a�F
pZ�ż�~��78:��M%��s�\�Gs w4����k�h0�Xy+���*��=���^(�}����hX����~����[h�Z�/�Sc��E�����B�]�ep�����h*��m#�F~��Q�i+��G��v{���Dz+��D�q��W����7�рe;�4�V%_��8XF�(�h#m���/L��z��R��{� ���͔���/�7h'��@؄Fy�b���h��Z!�V���A9s�]/��ъ-(W������V,����x�0��F������#�^6��C��A�^=��C�O}~L�h37��}a-�G#����B߯�#�G枊����!\����37�q�7X_n{����}���#e"�G��?��k4����;�ܣ[K�^���.��	�,c˾02�D��V0���B�G��vx$ǲ�` �>/'�#�>t!�����|���``�N�2�\`�}00l��xT�u�M�������~���M��������f��``��W�X�	�X �n�3�ȍt�<�x#�/��ѰE��-�w<���h{�{t�����~=��7�}�9�/����k.3�~����<G)ԍ�P~>�?�BW|����Q������?���8���w�*1�ޤ��M�e�i��R�r/Cy�[��Qk��T�N�e(��n��.��e(���IZ�E�d\��	�a�Y�$Ջ�ɸ���Keҋ�ɸ��F��g�����P>���L�(�^�N�E��[g*m�E�d^��	��#Y-�0�@�e$���Vv��f:��'ꅡ��"t2�#������^L���1�3�a�WF���wE����S�f���?��"d�B5�k�tK�NX��l@�]d��@�]�E��}RA���#�ҁ�[�����[��W���F&ۓ��f~c|�}����V�B����ܨ�_������vsy�&5�XQ�'�ak��I�8޳�z$}&pA3�ű��I�����I�8d���]~c�6F�8d���>�b#X�FJY�E�dұ<f�����;@Y��E�drCp̅-7��E�d2`�^e�m�"z2�pt��g���L�␇�֋��d-�3w� q���L�)�=O��E�dr�e7��P���]�O&�fI�s{Q1y"8
���i������dX�}l#�h�EuĔ'���.�rk�^TGLy2LvB����� +�c�)���>,�`����O�9X"J6G���EiĔ'ä��=���tlv��}��\I���u��֘Q������֘�r�>$�g���W$Iee�(���;�d�r�<8�(���,�,L%�
�Mk�����ڲP`�.�X�姴��+�y*0e�G�IMYYYXM8���#�B-Q��L�춵�EΖ��>�𱷳�m�����
{7�z�E�d�v���{|L��.1���iw_`�~�<�Ji>Y����>�-oݣ����쾰1v����������D͑&0nc봻?�h=T-�q[��}�{t~m��ȯu��l�_����Q�N�ir_Xu�U�K8���uZ�x��t&��QTE,*��6�Ξ'���*bQA/�J��]��:�5���Us����l~��1n��Ĳ�}�d�k���(���_����#�h6��5���#B2�H��w1�l�Q�9�g�vٿ.�iո�&�s�X���CpN�tH�O׮G�?7���kW��'������]���p#�c�x�4�
��++.���,�2ޭ�Fn�8����b��H=���
)b'��]v�6W{+$z����r��q�B�f��㈝��^"%{�ѰE�+v�������4��������Zn�Y�r�������P�Op;Y��}�%�g��t�"v���[^�M�F<Y��}�ùk�YRO�a{_`�.�.(v��78���U�QG��|��Q54)�5Cj�lI��|�so�QO'�M`��w�L����a2zt�pw�"���d�}�����j ��:Lw�C�._�9Sg���;x��[��&3t�\�;���p���>�ѯ���5�š[�g�$7�o
w_���=��l��}��|�-��D�nޞ`zw��U������xt�I�:����'bj��C�G����qb�����4��V>
�����3N�����:�����|�Q(�KWv�'v���
����y�c�M���W.�6��/�ĳ�V
��n�y������.\�'��<��/J&�i��Dz,�d�n0z�W�E]�[,J&��8EOwY��.J&��v��З�sQ2qw'=�1(ڷ������e��݀e����Q��wk�,1�|��`X��,�� ��������f0Jf��Y��À[u��T��Wh��2���Y�c�?�������!�?}�8P3�;���0�܈�`Li_H�[�G�x�M�Dᭂ[�͡�c�������U���7�m������#[������w!?��B���X�9�+g��Q�h>7���CNj�ʇf��n"�.;sV��;���`ߌ�����Q����bW���m���|�f7xG�8�M����E��aYBB�_��np�`�����C5��Q��{�l�|�f6J��1�r`ń���U���Y,zP>T�!��P��`��Ck&�� ���Q8�dB�
~ŬR�zR1���	e*�X~l�}K&�	����f��ecɄ2��ΛU?���B�_��_{t����iM�=��H�c��5�|*��$�G�K�Xx)�r�:�l�o�!��%R�N�7`�>��e?s�Jq��4&_�l�y������7Ѿr���gz�	�d���:(-����2��N�ʒE7Q�B�'��� e��/���# .V���1�$������=����g��-�"�3�)�I ΋#Rw�:jo�g����{�^C��̸r�[p,���%	�f�|����ow����'~�8�U֝����[�ÿ��wߕ���f/�EN��V���Ԏ����Ղ����Md�ػgqxb���� �b�LZ$X~�`-�����!>������=�]�l������b�N���±�����f~_ũ+� ;ϣ]�96Wr�*��aZ5) (kCp>�q�Q�V�{�8�� �S���	q�Z,Q��Te31����"QJ����e-y�Q���� X�����#S ���^��eS �v:T�;�E���@�݁F��IY��^F��v�E�
F��v�(��/LM��v�қ"��4Q��%MM�a}EN����xd��i�6v�=��i���kc�αٳ=;����amX��G6��H@�`ml�GcT�2	(����H��.�1+���`��E�4v�w�y
+��.fυ��J���ϯ������{�      �   4  x����n�F���S�^x��3C����P�5!�qְ����з)�(y�rVk��:V[y}����ߐI�&���|5�n�>�ǻ/����������y�q���o�����������I���CŁ���%�H8�Nj���� _��vhRMU2���o��6��Ӈ���������txu��|���6���B�R+U�����z�0�c1�'U4̵υT�.�_<�����]�wDr���9"Z-
v����o���˟7�����*�[���:G�I�$5�RE&����`u��D#U�h���\��	L���L����I���i������E]��'))g�E�O+�R��ΓS������@�j�����T;8;O���ђ���j��HM���㕉jB������ӈJ���uNs3"��� ֨�(a�8>Z��	j���J�	��Om���|���Y�`i��]�������<��߁��%���)yF��Q���K:��4\q��,Go��&XkkZ_|�d�hK�����Ps�{ǐ�=A܏z���J(�T?	�����~��a���y�\���vj<S3���VAb�ߊpl��Gp�3���i'�s9=%�b�Ӣ���;R?o�w���M��@ck^ޙ-	�R`��
��p8�O���7^�G��١4kA��K��pm D� ;%��� :Y�k�꽛��$a6��t%N�`��f���%1�c���J���%�XѠyI��\1�:�p�L"�v�+]���+qm�p�l�@�����V��a���4�L7� 1V��ĖЊ�i#�~^�*O�V�@���!+�����|¡e���8��xKH^�1˻/[d��bK���#���j!�<��x���c+�<��UGjm��'
�Ԣ�13ި�yM�-:Q��q�noBq�V�8���-�hm�q�V�#'�D�k,�5^8ދ=Q�7�^k�:�����6h89���Ov�K*R���yb��k�fF��G���lb_G����V
ś��J�"�C~6���^��[�3q�������W�'�����n|���]HgYza�v�З5KJ����z�+�|ݢ�/�6]\\�e�|�      �     x��ջn�0��~
텉s�U�-�t�B�J"#� ���������/V�0� )�����Ql�4�f�c�?m�����u�>]?�bڋ�qwax9��5�A�*h���ik��x�_���ԉ�0��O8'5(���B��K�P�<�����j����yzI��S��@ޙ�gz�c���"����gpߧ��$8e]�xzo��<~�&آ�&:i����X2���b�Xr��S�Õ��N�TTi�&0q�T� ���#�T�>��+f̯�>�����3H�;_	45�R FI޳O��T�����q~oW�j`�Ƴ��q����渾�C�D0':�*��5�ց(���&("q<mO�A��-��ߣ6����~<ԋ@�;@Pe�g�b��7h\�L�H+�s�p���Y����6H6-"��t�r��@��{Mv�iC��5��M����5���Qq�6O����ž���<M��4=�C�1�Z�i�[��'Y�����&�Q3k�]��eŕsN%�Q�V�՛�n      �   ;  x���K�#E���Sx�&����ڂ@b��f;��4n5m�a�mG���g��v��.#y�*}��#�J>�2pd��C�u���QJ*������?�n�߿�6����o��ޑ|�2J%�D%z�$�I���s�'I�H!昲I*�O�����%$!�9��Qr�ި]c�90W";��Hq4p�Ȭ��5��B�K��9��Hv���{T�����~�������a������3�l��g��Y:V���M,� f�mav'ef3T#�BAՉJ���X����蛷�N,j���&�C��d��|k���KM�,�}4��&�ܲ�5p�r93�T̟OΩ'���A͍J�1�R��Pc���)�ʨ�L�ʫ�`��1�����3��Ȫ*��ᑈ���\�(����ow���Dh
����5��`E���;��E3�dm媢�^Kk��>z_저��i�2j�ʥM���̾l7O����^6;���g�B� �1�P��d�,ڶ�X3�G����ݯ7����3�6j4�Ae�TC�̔s��5QxN*��M���}�o��~Ŭ�*Q����)��P�lS<�_�m� mcK!&�Ԉ/�O��e�ul����?~}~ؿ�7��v�gx��-5���mG��@��]#��e������\BA����2Ss�{��W�ţ�d/.��ne?�.Rٓ���" ���R�2��{c�k9[��h#�SZ��`����`��]��$���ٗٮGv���شZ�,g�����=Go]$zo�[���ǂ͖�qT����XNy�+�S٭�ܨ�U�������u��u�=��$yi�*�t�U�β�F����5�!_d'��<��^U�Ђ���/kL��4a���X㲘�1n���Y�� .5�T��ԡQ�R29�j��f�Z���Kr��t�xo�ZW'��9���l�ȩ��Z�g�ʘ��t��rG{k��r,�o��M��b9���0�l�qck������<��i�������±泅�Hq�N4O�}�I���tG:��ҬR���q������C�/�����T�X�)��C�YW��p�2�.���Oa�Z�C�d!      �     x�͚�nE���S�������5� �	�JP��'�F8mĝ�gɋQ=��ko,��C�d�ʮ����������|��\o��w��gWכ�o��������fz�zs���	<�\^o��o|�ۿ�n6�~z3��w7���������4l/���."_ #��2qįb���b���|����[��O��͵��|���Ûi�y��?|���~����aڿ����O����ӗ������O��y���~���o_�z��ȣ�sM� C�O�?������4r�8D�F�`�Dv��~4G��1ճ��4"�i>Ф�40�b��Ү4�!��q=�ܕF$��h�#���&f���������t��K�ը�`G��EjCG5vD��J9U��r�#C@Mh-uz��P���PqA���1�ɨH;�+f��ι7���Ԁ�3c�)&�9��7�����3�[0��5`�]y�-$w�ZmRg �!g�X5�����2��8T��Y�u��#<S�Zy��q�'��3r�>تT�.D����14��Y:����]�Z��4���[U����-��4��� ���"��T/�H�M�	����D��d��+�R3�f�h�i�[ׇ����Q[���;1T$���R�R3 {�Y�BS���1z	s���o�8G�~����O�����f��n��J�5`�L�	JF-��E���H�\$���<�6��2������z��I�3X	X	�b6�acX��2���L�1���Pk�� P&ޞ�bA	!�X�z��zbV��G�	� fΰE��b� �O"�J��%^��pA.�Y[Nf�VHju9rpل��JLv�X"��yY	�OAd�y��ZQ�/��
nj֢���\\8�X5�I-��������Ơ2�"OQ��q�|�eV��@>;�֊��r �q�=쎛B"���YBsе�s�,�^N���,2�:yJ�O9���t\��A>V�/v"2燺O�P��*�8���B_9ﺚ�ډ~H�S���O�qk{D;q��2�\]�,:� kq�	R�@ƌM��0�]CN��10�!&r��ڤ��C�Ƥ@h�IBʩji�}�-�~��A�&h����X"M�c��:ݞ�tD�Q����['>�S�T�=>� ���J���nb�!����98��#����j���p����	�q؝�J���7�(�*tZ��9'���|��sY���-��2���)j4��j�~�f4�~�$%�<��R4���!��O�� ݇�u��s�䘂i�R˙V���g�Pv)�&[f�����b�݈�m�ʙ�aS�rj^^뒮ې���1b�gFR�kz�f����Y�z��|hs��]K�j�b�V<�����J���2�-c�̩�N���ʃ� ��yoh��T7����f���,�Yڲ6�E1�Ѱ<����\�wF�yT�`�[P�Az�P�|��E���06�����1H�eŦ��=M�S�HQ��!�7��d{�dyżGr	!�����$���T��Ѡe�G�X�2<}��2h]      �      x����n[W�����e����������H�AOO3@#@��P�a�=������\�ݼA^l�W��,�:��(�cK�H�j�Ϫ�U�/~7���^�x���f�ߎ���W�|�z���^/~���>���tA��%$�[�s.>�C��<�Pj.�O-�"?Wb�O�RC)�8�A����>��mބ��P�J�zG=K�+i��O��.z>��o�n��u��pօ��-�p��k��Z�?u�~䙏���7���Y���L_�0'�>��J>I&I�.}1�%g�8d�j���1oC��>� %E=K�ץ˭�g�X���m�qS�d�c�%g��mF��'}@ИΓ_E=r�;9�Q�4{�>$�G|��F:�&���d�s�C-�d�l��:����y�u����^�uvjE�1��S���l���W���|9�+�(C�� h�4ͳ��:5V��mRN����_������9���b$��6Zӿ�s��1�(Cv�9έL��Pe!?FP_V:�r�;9�Q�2+g��;}�ƇO:6}�$c�Yf�g�̓�,�!�3�|�2��ʸu�r��w���빼�.������p���r�nU�K�mw�֣�uV�]qD;��H4J�1%�1qG���I��3�����M�q���[@��<�;���S��<�"��)|��)�wy�����ݝ��(h�t�?&�H�@4|[*rT�m*��d[�qT���J����%�a(&=[�p���p{�"����B�!�w�R�_�9)3� �Sx����u�D��u�U��K��%����P�w�Byt̲�<���@2��י��">0Jk�v��w��������(������[}(��)%���pI?*�f�MB�<"� �%	7cR��h:�Q����2,���'��*3yy��1��&88hw����~NP9W%5FN��<6�;�W:� g��Ɂ;���d�ξ�!�H�:ԑO����X�qFE ҌT(Q��Shj`��2���� �1�AH�;��J�ǐR"_�R*��>�R�P��Q�z��Ry^V�l�)�ne�A��^��w
�y-5�K'E*G�N�,�H����H���λ�r
]�K�G���Z��3
���Uc$��Q%���G{/���Q���۔�N:_i=,�G5Q�H�QPN�"�`c��׏0f/)�J`%TO�u˹K+��ٳ��A���<��J-�OY�C������W�����G�[i���
��a]�aЙ}a�	h����0��,��yR�ʸ�I����R0��������Ї _T8��1���&Y0R�'<*7��^��x��� TG٠P/�D=G7�m�B*��:�RzDv��yWW
��
���KÎg��A�#��G�_�=�c�$�/�A���E L..���� �_��L=K	=n.����VW���3`m��
��G(�畜̵S. �U'�ǳ;(v���s�3����Ig��V�K_�t��3,�Ee�<;�K�	�)B��+�.{E'�ڒ֔�0�Ў?_���2�R��@X�N��,���a�#����De�,�I�
~�[I3����=����^�-B�Kܓ���iH\�B�Nq�Yp�G8L���p��|SX9�߭���O������bTI�:24EnNOg,�����mD}ЦR��|I��&$P��&���>u�҅�K'|�7V�V�R/R�|D���{�p�SQ�Q{�US��s�L���6P$��T���R]AI�txBd��A��);(4
�)��^eU_��^"T��7
���AAU�O���c
/'�.\�|���ĭT�:��sGl�f��\�b�r%3$��+�QB˱	cM@Aa�X�`/��
q���bB[e�HE??��{��6�&a�ܷU�������=+����;7�<��.��<��*9"��e�:��S�3d���"�t��H��B�P��+dj�����1:P��1�xH>�:+�M�N���4���Tr	� �#�)�Q�-�;�E�51D�D���J��e�=C��Q�k'��b*>�H��L�% �U}�Ν��ҵ\Lw��a���E���00X�v��� %(F�#t�V( G�R� f=���Ez�|�iS(d
򬠆rCG<c>F��\S�>�QA[E�j�\��#2r�ЈƋ�ˁ�5g62v�r�F�Y�x+3��*�����}ʔV����Ȥ`AkUJ�6#�cx8�R6����Q϶N!�tp׏sǾ���;V:+2i\"+�v���o����f�����Z�X)�D�B!%O�ql"}�*��&g=��UH1�wm�u�-�ԁ�F0�pp�� �Y�(��q��t�:G'���
AI��F [k=�,<g�4H�0 �'L t�@��Z)�FC ����z;R�	��[	��)5�;����b� ̣�-�ˬ)����5�րJy��B��Z�Dr�����/0j��@�:)�ȲB�?�妩��<��yH+Ya5xBM�vͪ�g�#�#Ht�(Q�X�/�v	����N���K�JD�_jQ�F����Ⅽ��m�!�/��I�k��t�?_	 ���b�\�H$�g!��,z��2�������N@|U�4ò�9t�h�m
���� �:��sʑ�p=^���!��m.���L�/g���P�����]�=ݲ����f��z��n���x;�.��ٍ�?�O��lHfǌU�JTOM#���H�	tʃ=�A��(!@H&���$��8M��3 'f%��j�/��r���??������߻��.v�$�[��0�����⇫�r�����Ս��n�3�3/�/�ٽ~�����R$p�Ȩ�a
���+idw=�嫝�����$I1i����@*P:�D6q����
(�↳�EFkT�T`�JH�R��E3I���,c��x��}/��M=��oN�H<�ڲ��u՗���}�ӜȊrCAd���uЉ���Ԁ^��dV���l%�����7��M@�/L�(`-pE��:�!\��"��XVL��a��~��~����w	t�C�Ñ��+�eE?����F��ۡ	+���7丩0�Z��x�e��N�}���Mz�b�M����/2���B��B�����_��ǫ�o7�)��K���~�b\&\vݹ�+e���	�}[��/��*<#3�w+�'+!�l�<��x F\3�N�F4˽r(�*&z+L>k���$)� W��  ؤ����ɶ�]�h\fʹ'la�J�0�J�����i,(
�4�qEj�d�sٶBf`�OB^�5*�5�
4�)����*K������*v]ʇyB��43ϼ�L{z���Z��;�dұZu�iB�@�0T��+9TkE� � ���[�B>Ck�B�ZT���f�y�+}|��ØNif������'���2P��J��D9@�[ߜ�p�V�����R%OC}y��G!����j����R
,���|J3��&�I�AIaK/%3B%v�l����l���bZ�/�*ƽ҈�d���Gڍ��j�+�m���H3$���<���5υV%�����:W�x=[g��y\Ř0�
���+#	Y6#]�Sȁ$�Z[;Y�J�0����B�$����E8V��)c����(�0L��R����.M��������^(��3�W��ؙ��~��eq�A���och��:��G�����_˯�kf�G-�&;S�M��SzSFV�ш����2���3؈�*�*�PcL���8���~T���[F?���S)&Y��w]w�ԝR��H�^�'���2�H�&Fq�X��W�t�Lc6��K1�J��([�N�R`e�ϔ���ΖN��[*������t�I�^f���H+xݦY�^�4{lc)#��<2���U���T����l�QU=+��G�^E�alz!'Ձ�>C�;��cnI���<T�Y쥁>ѓtvU�t�-1s˜�HT��WE��B�V�JS��.��O�p���x��0��rS����	�R�)��;أ>��c1&�OV�UmV��p���UX&�HG�3K&�dS�n�%~*���[���a�)=D�    t��yW�A-9�-���w�������o��Rx2��*XMr�Ӽ��y9�4�V�lP��Ou��j1���b��Z9��W?�\�4λ�E�("�x���y(���9�̏����$�@��Ĵ�T���������B&fd���ܲ-���� V���b�R>�O��D��*K�z�O����Lq�i�&.�Sƣ[t�2/�d�c]�1��G��H�h��<H$3�B��y ��>�	H�T�)�cV�8��]�dT����r�G�wс8�+[��L�&�q�s����Ӄ��7��ݑC3L9$M�ߔ�e�oS��>J?Cl�S � w=)�,*�����2D �j�2�^o�~3%S&�R/�֔�:o6����^�◦�t?
��&ڰ\�|����rWXS��t�s�6��k�e
������1�1ʮ��?�.`B�᫞����,��#m�5�`h�H����-�TU�$��;G�iQGxȲ����G�κU� J4$GQ�����
F� �F�����F���1��A��
��&�8��b?Q�<�~<��N��З2�7����7�g�q���"�cZ���!�Tƙ��+��t�-��{&^An�#f�)��ԓU:6@�n���j��?=�j2��h��j������������K�_��f7����.o/�x*�(k=4"zC�M�B��ZY;1y"$Uz�-3���h��;"By�{�0����>LV��3��|O_�󟮰SÕ�� n��v4��x����������rqq1�0�b�#h�֖�N�aueIżv��Y��J�Y��P���h�̈m ���X�*,Le�kkfZ��W��>���ƔV���.k>���g�9lG"3�a��h3:�L��7���6K (�V��JuL�B�V$��C���%����/���d6��5+�|���٪ ��͙l]G�T�I��u����Y����)�b%�6JXb�0�62�E�*�f�J��z{h���r�g������d�#ͯK��fO�4�
A5��Q�m��
ٙ����f�զ�:bMTĶREP�����D%i����Q�f��/�@y\���諜�c����uw�2�Gqr���l\f�F��f*���(if�%����)���t6P�6&��2�ç�����}��j2]�xp�r�����~�A�T���Q ���
/�2�1�cc�EZ5zTbG��&�X3�e��=�iV?Z~Hh�c��x~������� f��DKS�$��TuY�`(�B���)����m�)�}�1�,�=C�3�+Ni,f#�*WȐ�2��d��R��Mw\-� ^�}�V�1�
�Pmu�u*�B�Jw�<!��$M�1H��
9/��-> "6�Y��ą�
�Ă"����j��|"�-Ķj�꣯���2��\�:��+e���@d�'����Tb�)�8M��'D&�J�z~���h!��Q������U�����30ί�8�z����H�)��2>Jf�d����zF`��NW��X���ea�/��\Ж�#�jL��U���62n��B�9�2J�U��Tůl>z(e�����/���0��,�!B#�y�|�(��oV��.`8OC�iZVlB�Qy�$�(��JPev_h�0/������K:���?>��OVR��.G�*��.������������n<
�T�ėO1^3��N�P�j�]����L�^E	{�e.x$`�&"��/r�r�O����gD��e�^1��%��Η*���w2!��̇��	��`�~��<��Â�ǬeZ
�I�Fp��@��N��FӞ����
����1���x�xn��*�a�1�*w��;���Y[(.�O;��3C^>��=?|1��m�;�H�����~�4�d�=��bo;�$�`��q$p&�&��X����=�骑��?]>E�2�8�*��w���g�k+��lq�Y��i&-�ٿ������;M��e�D����";Fx��e�e �f��-��Z�_̪�=�^~�`���(��X �Űv�°������f������ۍa���K�}�YZR����w��o�n��^�������l" .
������΀w�� 0[�����q�X~q����bky�}�0�Xɖa؋g�8��h��z����v���p���?�JG�CZ|?n.��7��UX���b\��c�{v�p�bW�V��eZ������<Q�����t�h�LP{��Ƚel9�l	����.i�	���#����"���0;��L���P"~�~���������>��݋��>Rq%?�#\��p�F3΃S��ߏ�&���c����&~�|�h���ۊ��;�3�2v�~��3����c�g�@ciЖaM��b�rI��8�����*UUO��ڞM�������
���p�_P������>�]���F�e.��IPli0%ۍ� MTc���EbO�T#7����_��l�:tJ,��l�/����� @��՗!�*Ų�]ؔ�Ð�?�޾Y.�=�hVEv#��䳝S�A�
�U�3�����zP��6A�l�>� �]Ov��Q��
��X�"�v�۾�T��0<���=���_�^�^�������8.�ݽ���O����;�mkd ���N��F�����`�4�u=�[p_��J�1B��׬zF�#�C���~x�Y�ڙ�*OP�����w;������{�����n���_���7W�7��j�RU������i�%�'�P�k�آK�[�{>���v�f�V6H��K�,���nFH�����L�5*xe��xس�ʊ��D+>���lg�3D8M��I%���(��7o� #��7���忽�Qt�ߜVg�:j����QS�<fӑdT���Ԭ��|<��y,��(���GsM���Ϩ*N��1�n�c3�Q�E�c�v���'�1������AM�ǔ�[��g�UN�G9�-���������{ý�׳fEr�9Bq�j�Hx�!#����j#:l�f��۝-����ZqIO#�B��.���X�/�FM��;��o�'�z�oe���v����]���������d<;��L���Κޝ_5�'e)~����^mv�o��~�z�$�[(�PH@�0G��L�S��tU�\ �>l�on��h͏H�N��; �~r�����]�jŸt� y����P-��vi�,_�o)�����l��$(�r�HĠĜӕf��7g	M�;��,fol,k[Ç9Y��sm#h�*�o���fE���=ຏ���j3�I?!rͅg����k~�q��_�0n�6����z��W�Wח��鱏�.�K��P�]oI�\p�b+���Q��D��l-E��	�ڭtΊ��%\_%mu2;xO�z����I�<hW��q)�i�?����F0},�c�C
�ӵ�n���[�7]\�6��b����}����N�Qɡ��������L�
l�Zz (Do˾�n|�!�n�a�պ[�������P2x�) y�ƟO
�u��_�*�"���?S�!�LI�cPX=�Bl�B�!$���S�5�z�����϶ыj�Tp¸A�g�	n܁��l$ձ�p�j*�k�s�,��#W�ؕ�ْ�ҡ�kĮv�`=P��]�3�C8�=�"��b��1��J���@�.����j�c�a5��b.Km��3�a��:]����Y��f�	�d�t��6my�-q���׷��e�,�+$n�#~I0�*ek�á3�!Pr��ӌX��uj�S.Q�S�A̶����1�*����g��/Y�_?EUW�d� m�ջtV/�oo�z�vm���,Z�5C7��ƍF�'�m�s����yJq�x�
b�[�䥅[��|yk7��EqGo�AF6>�t���(���Y��������ڪKW�B�n�o�~{fz��eW�5g�>kuߞ�q��x������v�-�l��HlBO���i�n�zoK�C����~}ez̈́:��.�Cw�QUE�!�gm�r�t�
mO��ZFs��Ak�9�����;_Γ���	��|.�d� p  yn~�{�s��e�aX� �ٵo����m�0GgC�@E�����t�pXV\ur�G!�;M�f�%�ʝYd�t��J��Yy��n��vOx��d���̅�Jn��@����i!$���h�D�2���ܳN�=������T�b����E�f�1����n�~�9)��m�d'���d�"��7�]Z�s���ÑtގD�>-���]��v�n%���w.���je�z�k+��ΚS0,��//������U�-�ťC�܌
�5,Ό���\�qw,a���f������~�^^���x��ʛm����z��ח��q�� ��i�ڻ�U�"v;���r�I-
��uv��O�gϞ�?T�?      �   `   x�U���0�3UE�r�T$�
���ğ9�3�3ȶ

.ʅ�R&<mԎѺ�U�R0�^�~g�$SY�#ڟq����>��l�w���/��1      �   �  x���Kn�:�q���"���"����J�Ʀ
�(΁l�b��������h�N�a�����_� �`~�|�%�Tn�G��$��Gh�D)�(G�
�Wud�<��&�`yy����`UU�]��Aإ�`���(�mB��:���/�/��x�>hTY'à�seѺ�I<�\�\Z����R�MaL鰞��qa4�0QTf�2w)9B���/�]�ʬ��Yb�<I�J��6I]�
�Dz��-�Rh ��5(;T����6�2�9�v6��.u%(�+
g�T�iP�e�PIѡ[?h�'Hm�.H�O�3{�TRd���s޹'H}�O�Y�'h�fn��,��Q�}�:���,��P��&�����������
�yV�?Ko�n�i�񌕌]RI������� ��1�j���0w�:@	�ԼJR�������-@��<G]��|��%׃ZS��=K�RV�u$��D��v*>��?�vQot����3_�]�^�Egq�A�wF��\焠��}��
�"}B��mJ��%��6j��=	�R�k4�j�F�S_��NcۖF1"\��� [}�FE��+Շ�U�Io9���Z$��/�j�z����f��W�y��Ҿ/P�����d�`kM�vg�c`���q�BSs0���2|P�P'����6tJ�'k_p�*5��v��N��M�gz{a�4�ō�[|՝���jD�n�'�=���PI�^      �   F  x��\Mo[�]'��;/^=��px�ݿUަ(�` m��	P��#�NI}V=Dj�1��b�s8�r�����o�o��r���߼�/o�m��77�?\\^�ݾ��y�~��q�����7��=�oo��RE���]�_��g�^?*����
��в������^��߰�($���oo?n^���ͦ�����7�����6�J��?�߼ۭ����ug�:^���旟>�����+�h���(�Z�����/�������*�]��t��­��X}�y6.�>��Ni@w����N��N�E��U\�I����@q�{6NyLB	���Pm k�m�]�\�6gݻğ�K}t�)����)߽�K�<���g�G����^�1~Md��e���n9�����p��t��e��e`]~n@�԰����ջ�/��_ݟ��!ޭ���n�x�$�w7�/�y:^�ͪɊ�SН�g�;F�z|E�
�gm��^�_/P�ϟ���j^���8�;���BQ
V��<���qfEV����"��c�=K��Y�4w�=W�"�2���s*���1����)2�d�&]InpH;_��T�y�ސj:^��yt��G��??�9H6���+��4�$��r=cg��ÝU��HT��ow��k���W��eI�4���[>^-AG�Ҵx6lBr^�����؝���9���J�1H�������X�Hk�x���מ
^�͓�o�k�5�ܲ�Y�Z�v^��&��+PK�z�P�\]V�L���#�wo3t��xC���Hy�̜Ĭ�b�|�V�teV�y�,���R����z:^��*"��M�Wsx	#�br�U^(������� �P��2DR��r$QM�i��z�2��b�T��5DV�I��N��r���ĩBp��KSD�$���kD]����-V�1s�����*����{�H�S8j2^��Zf��k9�4�<�ס
���^.�Bh�o��ƕՐ�h���cU��Ƣ0o7Tj,Wy�OE���_�6��z�v~���G�J������(�F=:}~ϓ��$�hr���E�(w����r�1��	���ʄ�_�Hv��wk��Dح�WN˅o/�<�U�\��*Ae���r�1x'�7�;X�ᵢ&m�+I��|CB��T��3������T��󕘅���2� W���Mk���I4�l�\�0��a�$�y>�(�����}�i��Y>���|E������gMj_^����4��o����x�ld���I����(�9���?�u0Hm���
m�I�+G͍ΐ�Uu��=�Y��n֘�r����7��ȝ�$�)慍q�cд��,^�����B�qA� �+޼����u��5�]���2Dc���t��k��y��2�(�!����Pa���M�
%k��X��
}葎�0�`k��I����؄��˴p-erЫ�F�f���F2}�x�(�`X�5M�O��jW��+���&��櫚F��	�9�[=�������U�P]G<'ݾ��KՅ5;���S"�d�ɚ&�'���=�6�o+�l0|"�#�7�$ǳ@�W��m�sR�yz<h\�&%��m;'2x��ݓ��=�ƫ[~���>�vCo@g����徑��2jڴ{Nq�q2܎�K��#]Y�4E(��F@?��/#¹�+m�!��y5Ta�j�$v5���j�Z��OS�xV���^EN������#Gx9ޝ�VCE`|S���m���5��dvs�!������ֽ
�L��l�>bWQ}!�m�	@"Xվ���9���eW#�~Q@5���Խ�en]�fv�:����;�'G<籫)��*V���{�j�����eu�"���<8\��H>x�ف�8uX�7��1|9�9�{5�W�F|$��~�J�p\�hiwۧ�9��aw^��. �-,�C��'r�� �$��n�*�zTY��mywU&�2�PWytöw�j���8d�^�4z5���?(J��X�7�YKH}���������� 穣/���+��&ѫ��~�����Wx��Z�Z��ū���w��
|�z��F�f�Y������R8>�Miiͫ�ah����W������=ޟ�˗/��p|     