-- Revert: schemas/dashboard_public/tables/impacts/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN image;
COMMIT;  

