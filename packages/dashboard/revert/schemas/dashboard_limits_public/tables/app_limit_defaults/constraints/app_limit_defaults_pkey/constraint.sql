-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/constraints/app_limit_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults 
    DROP CONSTRAINT app_limit_defaults_pkey;

COMMIT;  

