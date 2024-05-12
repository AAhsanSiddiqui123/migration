-- Revert: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".organization_profile_variations FROM authenticated;
COMMIT;  

