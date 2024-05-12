-- Revert: schemas/dashboard_public/tables/goals/columns/tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN tags;
COMMIT;  

