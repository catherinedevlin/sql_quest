DELETE FROM character;

\copy character FROM 'data/party.multisheet/stats-Table 1.csv' WITH csv HEADER;

INSERT INTO character (
  name, class, role, level,
  strength, intelligence, wisdom, dexterity,
  constitution, charisma)
SELECT
  'Wigmund', class, role, level,
  strength, intelligence, wisdom, dexterity,
  constitution, charisma
FROM character
WHERE name = 'Wigstan';
