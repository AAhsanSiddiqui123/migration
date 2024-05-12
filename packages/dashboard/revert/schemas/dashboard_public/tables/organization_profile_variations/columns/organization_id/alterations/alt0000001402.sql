-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_id/alterations/alt0000001402 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations 
    ALTER COLUMN organization_id DROP DEFAULT;

COMMIT;  

