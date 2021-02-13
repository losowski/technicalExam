-- Table: demo_schema.animals
CREATE SEQUENCE demo_schema.animals_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE demo_schema.animals_id_seq
  OWNER TO demo;

CREATE TABLE demo_schema.animals
(
  id bigint NOT NULL DEFAULT nextval('demo_schema.animals_id_seq'::regclass),
  name text NOT NULL,
  CONSTRAINT pk_animals PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
-- Ownership
ALTER TABLE demo_schema.animals
  OWNER TO demo;

-- Index: demo_schema.idx_animals_id
CREATE INDEX idx_animals_id
  ON demo_schema.animals
  USING btree
  (id);

-- Index: demo_schema.idx_animals_name
CREATE UNIQUE INDEX idx_animals_name
  ON demo_schema.animals
  USING btree
  (name COLLATE pg_catalog."default");


