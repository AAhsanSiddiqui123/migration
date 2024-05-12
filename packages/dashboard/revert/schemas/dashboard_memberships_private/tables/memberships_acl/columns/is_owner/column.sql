-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/columns/is_owner/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".memberships_acl DROP COLUMN is_owner;
COMMIT;  

