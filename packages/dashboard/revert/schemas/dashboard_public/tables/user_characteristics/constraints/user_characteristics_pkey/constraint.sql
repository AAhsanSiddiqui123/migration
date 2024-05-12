-- Revert: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics 
    DROP CONSTRAINT user_characteristics_pkey;

COMMIT;  

