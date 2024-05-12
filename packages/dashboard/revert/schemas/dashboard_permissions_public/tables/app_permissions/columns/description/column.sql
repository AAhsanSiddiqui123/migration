-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permissions DROP COLUMN description;
COMMIT;  

