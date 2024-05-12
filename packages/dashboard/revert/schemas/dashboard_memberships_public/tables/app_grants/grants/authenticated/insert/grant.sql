-- Revert: schemas/dashboard_memberships_public/tables/app_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".app_grants FROM authenticated;
COMMIT;  

