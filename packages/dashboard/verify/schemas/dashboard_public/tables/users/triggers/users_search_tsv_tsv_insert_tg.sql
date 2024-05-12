-- Verify: schemas/dashboard_public/tables/users/triggers/users_search_tsv_tsv_insert_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.users_search_tsv_tsv_insert_tg');
COMMIT;  

