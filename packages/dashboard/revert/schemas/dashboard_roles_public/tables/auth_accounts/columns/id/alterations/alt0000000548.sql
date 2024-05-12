-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/id/alterations/alt0000000548 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

