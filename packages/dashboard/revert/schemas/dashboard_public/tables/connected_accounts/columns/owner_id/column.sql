-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN owner_id;
COMMIT;  

