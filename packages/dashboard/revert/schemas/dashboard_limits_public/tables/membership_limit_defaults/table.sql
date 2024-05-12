-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".membership_limit_defaults;
COMMIT;  

