-- Revert: schemas/dashboard_public/tables/actions/columns/completion_rich_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN completion_rich_text;
COMMIT;  

