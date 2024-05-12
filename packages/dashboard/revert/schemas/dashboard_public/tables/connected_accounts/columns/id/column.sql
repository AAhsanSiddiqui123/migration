-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN id;
COMMIT;  

