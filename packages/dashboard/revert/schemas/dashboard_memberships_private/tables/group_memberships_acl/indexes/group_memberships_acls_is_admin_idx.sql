-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/indexes/group_memberships_acls_is_admin_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_private".group_memberships_acls_is_admin_idx;
COMMIT;  

