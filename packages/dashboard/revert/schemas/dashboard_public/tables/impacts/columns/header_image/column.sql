-- Revert: schemas/dashboard_public/tables/impacts/columns/header_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN header_image;
COMMIT;  

