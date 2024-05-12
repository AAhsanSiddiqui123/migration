-- Verify procedures/add_plugins  on pg

BEGIN;

SELECT verify_function ('public.add_plugins');

ROLLBACK;
