-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/alterations/alt0000000983 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN organization_id DROP NOT NULL;


COMMIT;  

