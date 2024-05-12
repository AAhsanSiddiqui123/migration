-- Revert: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".organization_profiles FROM authenticated;
COMMIT;  

