-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts DROP COLUMN owner_id;
COMMIT;  

