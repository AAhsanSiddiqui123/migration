-- Revert: schemas/dashboard_memberships_public/tables/membership_types/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".membership_types;
COMMIT;  

