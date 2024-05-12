-- Verify: schemas/dashboard_memberships_private/tables/app_memberships_acl/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_private.app_memberships_acl');
COMMIT;  

