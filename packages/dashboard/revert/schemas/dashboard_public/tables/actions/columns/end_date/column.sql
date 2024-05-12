-- Revert: schemas/dashboard_public/tables/actions/columns/end_date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN end_date;
COMMIT;  

