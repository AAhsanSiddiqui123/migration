-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_search_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_search_idx');
COMMIT;  

