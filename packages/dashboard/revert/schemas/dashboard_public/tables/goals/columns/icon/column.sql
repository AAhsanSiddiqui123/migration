-- Revert: schemas/dashboard_public/tables/goals/columns/icon/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN icon;
COMMIT;  

