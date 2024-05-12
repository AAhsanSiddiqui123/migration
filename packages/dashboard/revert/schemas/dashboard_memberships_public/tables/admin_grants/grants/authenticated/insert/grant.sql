-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".admin_grants FROM authenticated;
COMMIT;  

