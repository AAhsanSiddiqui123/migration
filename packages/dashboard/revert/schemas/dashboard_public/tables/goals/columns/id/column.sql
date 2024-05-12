-- Revert: schemas/dashboard_public/tables/goals/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN id;
COMMIT;  

