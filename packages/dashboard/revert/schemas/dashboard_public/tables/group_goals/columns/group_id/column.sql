-- Revert: schemas/dashboard_public/tables/group_goals/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN group_id;
COMMIT;  

