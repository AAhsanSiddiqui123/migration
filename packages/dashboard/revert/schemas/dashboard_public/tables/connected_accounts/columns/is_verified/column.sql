-- Revert: schemas/dashboard_public/tables/connected_accounts/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN is_verified;
COMMIT;  

