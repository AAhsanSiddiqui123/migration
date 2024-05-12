-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/details/alterations/alt0000000426 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN details DROP NOT NULL;


COMMIT;  

