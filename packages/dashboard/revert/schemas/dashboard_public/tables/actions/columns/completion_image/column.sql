-- Revert: schemas/dashboard_public/tables/actions/columns/completion_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN completion_image;
COMMIT;  

