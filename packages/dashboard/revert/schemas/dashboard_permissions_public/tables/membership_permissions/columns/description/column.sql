-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions DROP COLUMN description;
COMMIT;  

