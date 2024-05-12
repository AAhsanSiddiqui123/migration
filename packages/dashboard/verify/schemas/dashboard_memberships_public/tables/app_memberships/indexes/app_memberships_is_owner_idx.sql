-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/indexes/app_memberships_is_owner_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.app_memberships', 'app_memberships_is_owner_idx');
COMMIT;  

