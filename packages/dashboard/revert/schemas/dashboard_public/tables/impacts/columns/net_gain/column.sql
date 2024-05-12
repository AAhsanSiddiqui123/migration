-- Revert: schemas/dashboard_public/tables/impacts/columns/net_gain/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN net_gain;
COMMIT;  

