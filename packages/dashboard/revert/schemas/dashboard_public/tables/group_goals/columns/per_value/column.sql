-- Revert: schemas/dashboard_public/tables/group_goals/columns/per_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN per_value;
COMMIT;  

