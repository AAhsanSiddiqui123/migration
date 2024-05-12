-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/columns/bitstr/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permissions DROP COLUMN bitstr;
COMMIT;  

