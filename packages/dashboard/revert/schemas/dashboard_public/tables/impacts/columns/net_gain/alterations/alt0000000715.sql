-- Revert: schemas/dashboard_public/tables/impacts/columns/net_gain/alterations/alt0000000715 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.net_gain IS NULL;
COMMIT;  

