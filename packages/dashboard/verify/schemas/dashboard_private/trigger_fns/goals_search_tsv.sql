-- Verify: schemas/dashboard_private/trigger_fns/goals_search_tsv on pg

BEGIN;
SELECT verify_function('dashboard_private.goals_search_tsv');
COMMIT;  

