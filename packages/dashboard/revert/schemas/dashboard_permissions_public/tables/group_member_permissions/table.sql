-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".group_member_permissions;
COMMIT;  

