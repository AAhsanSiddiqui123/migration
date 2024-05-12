-- Revert: schemas/dashboard_public/tables/actions/columns/title/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN title;
COMMIT;  

