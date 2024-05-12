-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN id;
COMMIT;  

