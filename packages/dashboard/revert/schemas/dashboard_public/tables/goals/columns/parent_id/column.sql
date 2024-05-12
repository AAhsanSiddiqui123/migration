-- Revert: schemas/dashboard_public/tables/goals/columns/parent_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN parent_id;
COMMIT;  

