-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".owner_grants FROM authenticated;
COMMIT;  

