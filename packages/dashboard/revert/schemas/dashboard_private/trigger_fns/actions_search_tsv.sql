-- Revert: schemas/dashboard_private/trigger_fns/actions_search_tsv from pg

BEGIN;
DROP FUNCTION "dashboard_private".actions_search_tsv;
COMMIT;  

