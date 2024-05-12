-- Revert: schemas/dashboard_memberships_public/tables/grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".grants FROM authenticated;
COMMIT;  

