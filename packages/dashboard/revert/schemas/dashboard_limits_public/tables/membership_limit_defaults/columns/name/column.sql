-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limit_defaults DROP COLUMN name;
COMMIT;  

