-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".group_member_permission_defaults;
COMMIT;  

