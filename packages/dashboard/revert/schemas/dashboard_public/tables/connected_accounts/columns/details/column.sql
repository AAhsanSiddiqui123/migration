-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/details/column from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN details;
COMMIT;  

