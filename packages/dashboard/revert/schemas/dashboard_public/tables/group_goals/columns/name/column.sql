-- Revert: schemas/dashboard_public/tables/group_goals/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN name;
COMMIT;  

