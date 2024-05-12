-- Verify: schemas/dashboard_public/tables/goals/triggers/goals_search_tsv_update_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.goals_search_tsv_update_tg');
COMMIT;  

