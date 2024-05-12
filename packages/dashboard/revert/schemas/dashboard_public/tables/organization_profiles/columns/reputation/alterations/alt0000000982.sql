-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/reputation/alterations/alt0000000982 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN reputation DROP DEFAULT;

COMMIT;  

