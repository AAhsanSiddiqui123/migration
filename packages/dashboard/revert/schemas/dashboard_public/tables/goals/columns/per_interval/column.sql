-- Revert: schemas/dashboard_public/tables/goals/columns/per_interval/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN per_interval;
COMMIT;  

