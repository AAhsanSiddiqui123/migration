-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/constraints/auth_accounts_service_identifier_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts 
    DROP CONSTRAINT auth_accounts_service_identifier_key;

COMMIT;  

