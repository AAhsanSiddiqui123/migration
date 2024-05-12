-- Revert: schemas/dashboard_public/tables/goals/columns/sub_head/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN sub_head;
COMMIT;  

