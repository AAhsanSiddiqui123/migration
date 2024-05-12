-- Revert: schemas/dashboard_public/tables/goals/columns/search/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN search;
COMMIT;  

