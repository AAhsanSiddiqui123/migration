-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/indexes/group_memberships_is_admin_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.group_memberships', 'group_memberships_is_admin_idx');
COMMIT;  

