-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_is_private_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_is_private_idx');
COMMIT;  

