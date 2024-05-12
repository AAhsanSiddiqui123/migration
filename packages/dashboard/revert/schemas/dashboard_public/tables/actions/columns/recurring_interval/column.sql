-- Revert: schemas/dashboard_public/tables/actions/columns/recurring_interval/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN recurring_interval;
COMMIT;  

