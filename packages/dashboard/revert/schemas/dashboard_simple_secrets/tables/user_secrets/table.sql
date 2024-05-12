-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/table from pg

BEGIN;
DROP TABLE "dashboard_simple_secrets".user_secrets;
COMMIT;  

