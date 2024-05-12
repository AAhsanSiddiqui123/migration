-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_location_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_location_idx');
COMMIT;  

