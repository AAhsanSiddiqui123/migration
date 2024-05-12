-- Revert: schemas/dashboard_public/tables/actions/columns/title_object_template/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN title_object_template;
COMMIT;  

