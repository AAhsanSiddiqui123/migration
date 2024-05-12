-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/indexes/memberships_acls_is_owner_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_private".memberships_acls_is_owner_idx;
COMMIT;  

