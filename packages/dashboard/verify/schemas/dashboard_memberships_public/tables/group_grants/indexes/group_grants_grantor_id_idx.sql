-- Verify: schemas/dashboard_memberships_public/tables/group_grants/indexes/group_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.group_grants', 'group_grants_grantor_id_idx');
COMMIT;  

