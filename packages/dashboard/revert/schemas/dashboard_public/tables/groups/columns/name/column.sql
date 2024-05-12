-- Revert: schemas/dashboard_public/tables/groups/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN name;
COMMIT;  

