-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".app_permission_defaults;
COMMIT;  

