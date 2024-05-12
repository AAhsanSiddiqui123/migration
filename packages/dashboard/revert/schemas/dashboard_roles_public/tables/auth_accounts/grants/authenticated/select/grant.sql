-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_roles_public".auth_accounts FROM authenticated;
COMMIT;  

