-- Revert: schemas/dashboard_public/tables/organization_profile_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".organization_profile_variations;
COMMIT;  

