-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/identifier/alterations/alt0000000554 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_roles_public".auth_accounts.identifier IS NULL;
COMMIT;  

