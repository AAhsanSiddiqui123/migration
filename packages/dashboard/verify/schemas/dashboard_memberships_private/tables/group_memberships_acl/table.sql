-- Verify: schemas/dashboard_memberships_private/tables/group_memberships_acl/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_private.group_memberships_acl');
COMMIT;  

