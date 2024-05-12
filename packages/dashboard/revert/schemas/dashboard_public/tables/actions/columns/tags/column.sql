-- Revert: schemas/dashboard_public/tables/actions/columns/tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN tags;
COMMIT;  

