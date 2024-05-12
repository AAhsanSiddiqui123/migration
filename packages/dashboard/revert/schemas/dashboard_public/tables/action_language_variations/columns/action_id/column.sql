-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN action_id;
COMMIT;  

