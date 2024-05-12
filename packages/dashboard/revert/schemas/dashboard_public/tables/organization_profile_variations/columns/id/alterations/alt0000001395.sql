-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/id/alterations/alt0000001395 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

