-- Revert: schemas/dashboard_limits_public/tables/membership_limits/constraints/membership_limits_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits 
    DROP CONSTRAINT membership_limits_pkey;

COMMIT;  

