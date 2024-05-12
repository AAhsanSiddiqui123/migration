-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN name;
COMMIT;  

