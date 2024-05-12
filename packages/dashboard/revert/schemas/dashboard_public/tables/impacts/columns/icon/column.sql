-- Revert: schemas/dashboard_public/tables/impacts/columns/icon/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN icon;
COMMIT;  

