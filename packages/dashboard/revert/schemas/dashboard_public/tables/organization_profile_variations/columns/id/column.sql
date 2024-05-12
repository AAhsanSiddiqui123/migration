-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN id;
COMMIT;  

