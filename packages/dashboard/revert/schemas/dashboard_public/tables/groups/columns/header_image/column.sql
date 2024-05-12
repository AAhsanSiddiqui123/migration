-- Revert: schemas/dashboard_public/tables/groups/columns/header_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN header_image;
COMMIT;  

