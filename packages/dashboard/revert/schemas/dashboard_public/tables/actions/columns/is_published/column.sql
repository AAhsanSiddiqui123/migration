-- Revert: schemas/dashboard_public/tables/actions/columns/is_published/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN is_published;
COMMIT;  

