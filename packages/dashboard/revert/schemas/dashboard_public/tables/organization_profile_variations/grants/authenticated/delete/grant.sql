-- Revert: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".organization_profile_variations FROM authenticated;
COMMIT;  

