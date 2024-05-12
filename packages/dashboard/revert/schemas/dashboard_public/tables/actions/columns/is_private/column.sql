-- Revert: schemas/dashboard_public/tables/actions/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN is_private;
COMMIT;  

