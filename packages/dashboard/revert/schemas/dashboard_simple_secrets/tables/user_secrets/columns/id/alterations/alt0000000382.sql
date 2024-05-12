-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/columns/id/alterations/alt0000000382 from pg

BEGIN;


ALTER TABLE "dashboard_simple_secrets".user_secrets 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

