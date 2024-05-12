-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/table from pg

BEGIN;
DROP TABLE "dashboard_roles_public".auth_accounts;
COMMIT;  

