SELECT DISTINCT p.name
FROM flight f1
JOIN flight f2 ON f1.person_id = f2.person_id
JOIN person p ON p.id = f1.person_id
WHERE f1.dest_city = 'Paris'
  AND f1.date < '2014-10-23'
  AND f2.start_city = 'Paris'
  AND f2.date > '2014-10-23'
  AND f1.person_id NOT IN (
      SELECT id
      FROM person
      WHERE residence = 'Paris'
  );