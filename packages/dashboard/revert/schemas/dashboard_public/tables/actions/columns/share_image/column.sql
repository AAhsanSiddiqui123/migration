-- Revert: schemas/dashboard_public/tables/actions/columns/share_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN share_image;
COMMIT;  

