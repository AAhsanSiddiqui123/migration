-- Revert: schemas/dashboard_public/tables/group_goals/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN image;
COMMIT;  

