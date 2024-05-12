-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/identifier/alterations/alt0000000424 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN identifier DROP NOT NULL;


COMMIT;  

