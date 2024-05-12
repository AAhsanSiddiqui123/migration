-- Verify: schemas/dashboard_private/trigger_fns/users_search_tsv_tsv on pg

BEGIN;
SELECT verify_function('dashboard_private.users_search_tsv_tsv');
COMMIT;  

