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
