-- Verify: schemas/dashboard_memberships_private/tables/app_memberships_acl/grants/public/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_private.app_memberships_acl', 'select', 'public');
COMMIT;  

