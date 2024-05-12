-- Revert: schemas/dashboard_public/tables/actions/columns/search/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN search;
COMMIT;  

