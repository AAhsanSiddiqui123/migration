-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".app_memberships FROM authenticated;
COMMIT;  

