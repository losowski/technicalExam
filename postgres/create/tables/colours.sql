-- Table: demo_schema.colours
CREATE SEQUENCE demo_schema.colours_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE demo_schema.colours_id_seq
  OWNER TO demo;

CREATE TABLE demo_schema.colours
(
  id bigint NOT NULL DEFAULT nextval('demo_schema.colours_id_seq'::regclass),
  animal_id bigint NOT NULL,
  name_id bigint NOT NULL,
  colour text NOT NULL,
  CONSTRAINT pk_colours PRIMARY KEY (id),
  CONSTRAINT fk_colours_animal FOREIGN KEY (animal_id)
      REFERENCES demo_schema.animals (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_colours_names FOREIGN KEY (name_id)
      REFERENCES demo_schema.names (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
-- Ownership
ALTER TABLE demo_schema.colours
  OWNER TO demo;

-- Index: demo_schema.idx_colours_id
CREATE INDEX idx_colours_id
  ON demo_schema.colours
  USING btree
  (id);

-- Index: demo_schema.idx_colours_animals_id
CREATE INDEX idx_colours_animals_id
  ON demo_schema.colours
  USING btree
  (animal_id);

-- Index: demo_schema.idx_colours_names_id
CREATE INDEX idx_colours_names_id
  ON demo_schema.colours
  USING btree
  (name_id);

