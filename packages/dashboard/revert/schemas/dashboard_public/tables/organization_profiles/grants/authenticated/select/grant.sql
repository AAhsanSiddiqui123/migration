-- Revert: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".organization_profiles FROM authenticated;
COMMIT;  

