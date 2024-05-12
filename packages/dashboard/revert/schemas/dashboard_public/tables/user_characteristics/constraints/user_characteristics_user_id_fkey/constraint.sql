-- Revert: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics 
    DROP CONSTRAINT user_characteristics_user_id_fkey;

COMMIT;  

