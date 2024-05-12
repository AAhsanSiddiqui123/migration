-- Verify: schemas/dashboard_public/tables/goals/triggers/goals_search_tsv_insert_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.goals_search_tsv_insert_tg');
COMMIT;  

