-- Revert: schemas/dashboard_public/tables/action_items/columns/embed_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN embed_code;
COMMIT;  

