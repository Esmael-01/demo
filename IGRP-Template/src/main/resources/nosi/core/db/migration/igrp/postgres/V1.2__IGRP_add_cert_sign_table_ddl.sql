-- Table: public.tbl_cert_signs

-- DROP TABLE IF EXISTS public.tbl_cert_signs;

CREATE TABLE IF NOT EXISTS public.tbl_cert_signs
(
    uuid uuid NOT NULL,
    certificate text ,
    created_at timestamp without time zone,
    file_id text ,
    data text ,
    data_hash text ,
    status text ,
    updated_at timestamp without time zone,
    cert_sn character varying(255) ,
    env_id character varying(255) ,
    mime_type character varying(255) ,
    name character varying(255) ,
    user_context character varying(255) ,
    user_id character varying(255) ,
    user_ip character varying(255) ,
    CONSTRAINT tbl_cert_signs_pkey PRIMARY KEY (uuid)
);