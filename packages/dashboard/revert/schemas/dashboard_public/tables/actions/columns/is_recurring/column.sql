-- Revert: schemas/dashboard_public/tables/actions/columns/is_recurring/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN is_recurring;
COMMIT;  

