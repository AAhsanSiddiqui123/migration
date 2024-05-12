-- Revert: schemas/dashboard_memberships_private/tables/memberships_acl/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_private".memberships_acl;
COMMIT;  

