-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/id/alterations/alt0000000418 from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

