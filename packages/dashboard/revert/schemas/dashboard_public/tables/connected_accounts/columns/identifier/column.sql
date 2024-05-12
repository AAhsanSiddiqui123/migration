-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/identifier/column from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN identifier;
COMMIT;  

