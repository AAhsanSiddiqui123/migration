-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/service/alterations/alt0000000423 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".connected_accounts.service IS NULL;
COMMIT;  

