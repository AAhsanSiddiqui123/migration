-- Revert: schemas/dashboard_public/tables/impacts/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN type;
COMMIT;  

