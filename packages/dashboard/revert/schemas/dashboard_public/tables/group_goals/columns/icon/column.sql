-- Revert: schemas/dashboard_public/tables/group_goals/columns/icon/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN icon;
COMMIT;  

