CREATE TABLE flader
(
  fid serial NOT NULL,
  geom geometry(MultiPolygon,25832),
  klasse character varying(20),
  oprettet character varying(10) DEFAULT (('now'::text)::date)::character varying,
  CONSTRAINT pk_flader_fid PRIMARY KEY (fid)
);
CREATE INDEX idx_flader_geom ON flader USING gist (geom);

CREATE TABLE linier
(
  fid serial NOT NULL,
  geom geometry(MultiLineString,25832),
  klasse character varying(20),
  oprettet character varying(10) DEFAULT (('now'::text)::date)::character varying,
  CONSTRAINT pk_linier_fid PRIMARY KEY (fid)
);
CREATE INDEX idx_linier_geom ON linier USING gist (geom);

CREATE TABLE punkter
(
  fid serial NOT NULL,
  geom geometry(Point,25832),
  klasse character varying(20),
  oprettet character varying(10) DEFAULT (('now'::text)::date)::character varying,
  CONSTRAINT pk_punkter_fid PRIMARY KEY (fid)
);
CREATE INDEX idx_punkter_geom ON punkter USING gist (geom);
