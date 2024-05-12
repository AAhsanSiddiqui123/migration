-- Revert: schemas/dashboard_memberships_public/tables/grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".grants FROM authenticated;
COMMIT;  

