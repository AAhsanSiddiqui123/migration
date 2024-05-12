-- Revert: schemas/dashboard_public/tables/user_profiles/columns/user_id/alterations/alt0000000563 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

