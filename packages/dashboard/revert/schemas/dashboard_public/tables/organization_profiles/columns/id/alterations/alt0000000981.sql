-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/id/alterations/alt0000000981 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

