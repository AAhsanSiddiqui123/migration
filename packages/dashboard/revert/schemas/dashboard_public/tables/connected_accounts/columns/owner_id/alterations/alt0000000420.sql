-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/owner_id/alterations/alt0000000420 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

