-- Revert: schemas/dashboard_public/tables/impacts/columns/net_gain/alterations/alt0000000714 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts 
    ALTER COLUMN net_gain DROP DEFAULT;

COMMIT;  

