-- Revert procedures/migrate from pg

BEGIN;

DROP FUNCTION public.migrate;

COMMIT;
