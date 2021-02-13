-- Table: demo_schema.names
CREATE SEQUENCE demo_schema.names_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE demo_schema.names_id_seq
  OWNER TO demo;

CREATE TABLE demo_schema.names
(
  id bigint NOT NULL DEFAULT nextval('demo_schema.names_id_seq'::regclass),
  forename text NOT NULL,
  CONSTRAINT pk_names PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
-- Ownership
ALTER TABLE demo_schema.names
  OWNER TO demo;

-- Index: demo_schema.idx_names_id
CREATE INDEX idx_names_id
  ON demo_schema.names
  USING btree
  (id);

-- Index: demo_schema.idx_names_name
CREATE UNIQUE INDEX idx_names_forename
  ON demo_schema.names
  USING btree
  (forename COLLATE pg_catalog."default");


