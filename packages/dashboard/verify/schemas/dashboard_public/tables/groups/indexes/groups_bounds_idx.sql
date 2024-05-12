-- Verify: schemas/dashboard_public/tables/groups/indexes/groups_bounds_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.groups', 'groups_bounds_idx');
COMMIT;  

