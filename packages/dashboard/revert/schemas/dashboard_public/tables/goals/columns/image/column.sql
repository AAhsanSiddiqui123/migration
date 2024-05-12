-- Revert: schemas/dashboard_public/tables/goals/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN image;
COMMIT;  

