-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/columns/identifier/alterations/alt0000000553 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts 
    ALTER COLUMN identifier DROP NOT NULL;


COMMIT;  

