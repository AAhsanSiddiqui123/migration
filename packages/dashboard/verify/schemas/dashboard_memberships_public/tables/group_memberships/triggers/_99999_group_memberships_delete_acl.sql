-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_99999_group_memberships_delete_acl on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._99999_group_memberships_delete_acl');
COMMIT;  

