-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_owner_id_idx');
COMMIT;  

