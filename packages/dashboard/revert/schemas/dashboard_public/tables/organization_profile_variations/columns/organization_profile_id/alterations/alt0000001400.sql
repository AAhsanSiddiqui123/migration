-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_profile_id/alterations/alt0000001400 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations 
    ALTER COLUMN organization_profile_id DROP NOT NULL;


COMMIT;  

