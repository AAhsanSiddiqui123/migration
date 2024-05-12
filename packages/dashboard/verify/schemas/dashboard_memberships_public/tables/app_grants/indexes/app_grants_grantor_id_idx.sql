-- Verify: schemas/dashboard_memberships_public/tables/app_grants/indexes/app_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.app_grants', 'app_grants_grantor_id_idx');
COMMIT;  

