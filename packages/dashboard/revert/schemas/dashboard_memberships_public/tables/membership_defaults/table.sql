-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".membership_defaults;
COMMIT;  

