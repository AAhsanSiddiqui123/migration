-- Verify procedures/migrate  on pg

BEGIN;

SELECT verify_function ('public.migrate');

ROLLBACK;
