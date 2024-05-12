-- Verify: schemas/dashboard_memberships_public/tables/group_owner_grants/indexes/group_owner_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.group_owner_grants', 'group_owner_grants_grantor_id_idx');
COMMIT;  

