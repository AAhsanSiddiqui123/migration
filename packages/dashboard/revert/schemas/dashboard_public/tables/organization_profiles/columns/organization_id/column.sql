-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN organization_id;
COMMIT;  

