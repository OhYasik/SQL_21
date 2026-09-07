CREATE INDEX idx_person_name ON person(UPPER(NAME));
SET enable_seqscan TO OFF;
EXPLAIN ANALYSE
  SELECT name FROM person
    WHERE UPPER(name) = 'Kate';