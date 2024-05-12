-- Revert: schemas/dashboard_limits_public/tables/membership_limits/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".membership_limits;
COMMIT;  

