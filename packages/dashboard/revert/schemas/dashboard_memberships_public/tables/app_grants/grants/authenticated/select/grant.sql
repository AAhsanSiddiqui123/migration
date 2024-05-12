-- Revert: schemas/dashboard_memberships_public/tables/app_grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".app_grants FROM authenticated;
COMMIT;  

