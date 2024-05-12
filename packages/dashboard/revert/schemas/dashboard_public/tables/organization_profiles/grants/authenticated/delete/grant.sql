-- Revert: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".organization_profiles FROM authenticated;
COMMIT;  

