-- Revert: schemas/dashboard_public/tables/impacts/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN rich_description;
COMMIT;  

