-- Revert: schemas/dashboard_public/tables/goals/triggers/goals_search_tsv_insert_tg from pg

BEGIN;
DROP TRIGGER goals_search_tsv_insert_tg ON "dashboard_public".goals;
COMMIT;  

