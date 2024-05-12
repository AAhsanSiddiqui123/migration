-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/details/alterations/alt0000000427 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".connected_accounts.details IS NULL;
COMMIT;  

