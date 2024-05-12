-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".admin_grants FROM authenticated;
COMMIT;  

