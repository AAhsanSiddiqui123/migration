-- Revert: schemas/dashboard_public/tables/actions/triggers/actions_search_tsv_insert_tg from pg

BEGIN;
DROP TRIGGER actions_search_tsv_insert_tg ON "dashboard_public".actions;
COMMIT;  

