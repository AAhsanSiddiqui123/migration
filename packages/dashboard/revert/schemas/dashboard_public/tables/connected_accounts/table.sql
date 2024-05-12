-- Revert: schemas/dashboard_public/tables/connected_accounts/table from pg

BEGIN;
DROP TABLE "dashboard_public".connected_accounts;
COMMIT;  

