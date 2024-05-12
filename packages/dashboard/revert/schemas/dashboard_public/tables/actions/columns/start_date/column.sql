-- Revert: schemas/dashboard_public/tables/actions/columns/start_date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN start_date;
COMMIT;  

