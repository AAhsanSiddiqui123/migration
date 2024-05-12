-- Revert: schemas/dashboard_public/tables/groups/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN image;
COMMIT;  

