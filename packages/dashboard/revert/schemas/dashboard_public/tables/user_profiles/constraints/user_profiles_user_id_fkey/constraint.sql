-- Revert: schemas/dashboard_public/tables/user_profiles/constraints/user_profiles_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles 
    DROP CONSTRAINT user_profiles_user_id_fkey;

COMMIT;  

