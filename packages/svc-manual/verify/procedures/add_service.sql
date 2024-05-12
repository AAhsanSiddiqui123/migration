-- Verify procedures/add_service  on pg

BEGIN;

SELECT verify_function ('public.add_service');

ROLLBACK;
