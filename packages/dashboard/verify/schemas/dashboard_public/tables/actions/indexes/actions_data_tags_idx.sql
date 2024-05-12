-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_data_tags_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_data_tags_idx');
COMMIT;  

