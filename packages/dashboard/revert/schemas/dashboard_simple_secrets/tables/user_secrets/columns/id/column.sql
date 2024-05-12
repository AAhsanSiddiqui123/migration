-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_simple_secrets".user_secrets DROP COLUMN id;
COMMIT;  

