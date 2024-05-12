-- Revert: schemas/dashboard_public/tables/actions/columns/time_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN time_required;
COMMIT;  

