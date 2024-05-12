-- Revert procedures/add_service from pg

BEGIN;

DROP FUNCTION public.add_service;

COMMIT;
