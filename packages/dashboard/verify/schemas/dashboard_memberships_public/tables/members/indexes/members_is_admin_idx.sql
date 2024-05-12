-- Verify: schemas/dashboard_memberships_public/tables/members/indexes/members_is_admin_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.members', 'members_is_admin_idx');
COMMIT;  

