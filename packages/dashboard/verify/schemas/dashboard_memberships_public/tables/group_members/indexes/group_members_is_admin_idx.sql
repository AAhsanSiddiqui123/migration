-- Verify: schemas/dashboard_memberships_public/tables/group_members/indexes/group_members_is_admin_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.group_members', 'group_members_is_admin_idx');
COMMIT;  

