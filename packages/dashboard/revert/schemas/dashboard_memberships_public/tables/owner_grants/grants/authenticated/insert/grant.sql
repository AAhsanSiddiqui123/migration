-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".owner_grants FROM authenticated;
COMMIT;  

