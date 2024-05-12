-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/service/alterations/alt0000000422 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN service DROP NOT NULL;


COMMIT;  

