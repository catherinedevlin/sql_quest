  CREATE TABLE equipment (
    name TEXT,
    quantity INTEGER,
    weight_each NUMERIC(4,1),
    cost NUMERIC(6,2),
    magic TEXT,
    materials TEXT,
    notes TEXT,
    owner TEXT REFERENCES character (name)
  );
