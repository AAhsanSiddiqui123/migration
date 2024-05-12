-- Verify: schemas/dashboard_public/tables/actions/triggers/actions_search_tsv_insert_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.actions_search_tsv_insert_tg');
COMMIT;  

