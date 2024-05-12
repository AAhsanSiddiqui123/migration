-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( service, identifier, details, owner_id ) ON TABLE "dashboard_roles_public".auth_accounts FROM authenticated;
COMMIT;  

