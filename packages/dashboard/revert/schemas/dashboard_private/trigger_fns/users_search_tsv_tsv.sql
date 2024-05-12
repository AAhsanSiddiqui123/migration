-- Revert: schemas/dashboard_private/trigger_fns/users_search_tsv_tsv from pg

BEGIN;
DROP FUNCTION "dashboard_private".users_search_tsv_tsv;
COMMIT;  

