-- Revert procedures/add_plugins from pg

BEGIN;

DROP FUNCTION public.add_plugins;

COMMIT;
