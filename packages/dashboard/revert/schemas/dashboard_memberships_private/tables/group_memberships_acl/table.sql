-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_private".group_memberships_acl;
COMMIT;  

