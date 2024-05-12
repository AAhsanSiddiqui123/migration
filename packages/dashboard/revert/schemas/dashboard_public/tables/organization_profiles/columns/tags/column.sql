-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN tags;
COMMIT;  

