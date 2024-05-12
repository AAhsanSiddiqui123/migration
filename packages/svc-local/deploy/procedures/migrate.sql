-- Deploy procedures/migrate to pg


BEGIN;

UPDATE meta_public.domains 
  SET domain = 'localhost'
WHERE domain = 'dbe.la';

COMMIT;
