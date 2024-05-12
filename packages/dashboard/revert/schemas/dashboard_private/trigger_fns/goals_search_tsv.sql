-- Revert: schemas/dashboard_private/trigger_fns/goals_search_tsv from pg

BEGIN;
DROP FUNCTION "dashboard_private".goals_search_tsv;
COMMIT;  

