-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/website/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN website;
COMMIT;  

