-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/details/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts DROP COLUMN details;
COMMIT;  

