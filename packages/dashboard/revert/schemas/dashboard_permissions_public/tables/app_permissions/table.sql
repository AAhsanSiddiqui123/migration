-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".app_permissions;
COMMIT;  

