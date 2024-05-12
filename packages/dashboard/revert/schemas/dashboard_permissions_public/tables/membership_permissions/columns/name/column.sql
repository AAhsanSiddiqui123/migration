-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions DROP COLUMN name;
COMMIT;  

