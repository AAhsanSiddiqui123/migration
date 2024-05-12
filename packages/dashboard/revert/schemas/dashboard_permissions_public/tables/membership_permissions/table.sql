-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".membership_permissions;
COMMIT;  

