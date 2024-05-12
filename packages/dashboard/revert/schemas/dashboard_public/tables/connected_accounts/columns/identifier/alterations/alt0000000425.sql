-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/identifier/alterations/alt0000000425 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".connected_accounts.identifier IS NULL;
COMMIT;  

