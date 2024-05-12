-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permission_defaults DROP COLUMN id;
COMMIT;  

