-- Verify: schemas/dashboard_memberships_private/tables/memberships_acl/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_private.memberships_acl');
COMMIT;  

