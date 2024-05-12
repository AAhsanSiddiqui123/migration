-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( service, identifier, details, owner_id ) ON TABLE "dashboard_roles_public".auth_accounts FROM authenticated;
COMMIT;  

