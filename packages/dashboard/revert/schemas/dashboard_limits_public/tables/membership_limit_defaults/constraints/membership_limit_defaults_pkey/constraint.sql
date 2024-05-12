-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/constraints/membership_limit_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limit_defaults 
    DROP CONSTRAINT membership_limit_defaults_pkey;

COMMIT;  

