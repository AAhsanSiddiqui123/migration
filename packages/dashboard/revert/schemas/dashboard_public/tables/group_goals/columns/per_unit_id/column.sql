-- Revert: schemas/dashboard_public/tables/group_goals/columns/per_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN per_unit_id;
COMMIT;  

