-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/is_verified/alterations/alt0000000429 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

