-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_start_date_end_date_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_start_date_end_date_idx');
COMMIT;  

