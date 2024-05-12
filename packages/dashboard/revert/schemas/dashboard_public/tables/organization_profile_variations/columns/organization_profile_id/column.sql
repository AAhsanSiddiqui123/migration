-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_profile_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN organization_profile_id;
COMMIT;  

