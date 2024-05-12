-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/service/alterations/alt0000000551 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN service DROP NOT NULL;


COMMIT;  

