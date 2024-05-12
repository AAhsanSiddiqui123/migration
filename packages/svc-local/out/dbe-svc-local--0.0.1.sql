BEGIN;

UPDATE meta_public.domains SET domain = 'localhost' WHERE domain = 'dbe.la';

COMMIT;