-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".group_admin_grants FROM authenticated;
COMMIT;  

