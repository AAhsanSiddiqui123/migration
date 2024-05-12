-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/service/alterations/alt0000000552 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_roles_public".auth_accounts.service IS NULL;
COMMIT;  

