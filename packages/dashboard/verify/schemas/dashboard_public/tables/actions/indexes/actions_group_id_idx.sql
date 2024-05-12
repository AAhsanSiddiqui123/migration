-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_group_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_group_id_idx');
COMMIT;  

