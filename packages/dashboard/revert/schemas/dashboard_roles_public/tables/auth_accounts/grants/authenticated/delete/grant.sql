-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_roles_public".auth_accounts FROM authenticated;
COMMIT;  

