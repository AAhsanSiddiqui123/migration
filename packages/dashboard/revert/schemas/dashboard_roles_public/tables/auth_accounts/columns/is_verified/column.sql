-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts DROP COLUMN is_verified;
COMMIT;  

