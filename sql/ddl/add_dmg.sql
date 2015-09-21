CREATE TABLE damage (
  name TEXT,
  damage TEXT,
  materials TEXT,
  belongs_to TEXT
);

\copy damage FROM 'party.multisheet/weapons-Table 1.csv' WITH csv HEADER

ALTER TABLE equipment ADD COLUMN damage TEXT;

UPDATE equipment e
SET    damage = d.damage
FROM   damage d
WHERE  d.name = e.name;
