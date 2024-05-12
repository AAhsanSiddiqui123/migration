-- Revert: schemas/dashboard_public/tables/organization_profiles/alterations/alt0000001397 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".organization_profiles IS NULL;
COMMIT;  

