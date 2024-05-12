-- Verify: schemas/dashboard_private/trigger_fns/actions_search_tsv on pg

BEGIN;
SELECT verify_function('dashboard_private.actions_search_tsv');
COMMIT;  

