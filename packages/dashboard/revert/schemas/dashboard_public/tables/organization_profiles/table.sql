-- Revert: schemas/dashboard_public/tables/organization_profiles/table from pg

BEGIN;
DROP TABLE "dashboard_public".organization_profiles;
COMMIT;  

