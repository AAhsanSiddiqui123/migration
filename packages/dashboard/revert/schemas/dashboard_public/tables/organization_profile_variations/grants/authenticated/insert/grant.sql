-- Revert: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".organization_profile_variations FROM authenticated;
COMMIT;  

