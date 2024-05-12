-- Revert: schemas/dashboard_limits_public/tables/membership_limits/columns/max/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits DROP COLUMN max;
COMMIT;  

