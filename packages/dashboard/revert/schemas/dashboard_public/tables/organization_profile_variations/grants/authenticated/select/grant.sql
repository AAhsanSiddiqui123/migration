-- Revert: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".organization_profile_variations FROM authenticated;
COMMIT;  

