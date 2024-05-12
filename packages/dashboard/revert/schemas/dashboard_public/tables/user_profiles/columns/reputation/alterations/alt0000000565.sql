-- Revert: schemas/dashboard_public/tables/user_profiles/columns/reputation/alterations/alt0000000565 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles 
    ALTER COLUMN reputation DROP DEFAULT;

COMMIT;  

