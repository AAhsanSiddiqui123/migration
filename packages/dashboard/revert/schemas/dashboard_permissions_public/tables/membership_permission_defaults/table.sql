-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_permissions_public".membership_permission_defaults;
COMMIT;  

