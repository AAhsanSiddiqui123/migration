-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permission_defaults DROP COLUMN id;
COMMIT;  

