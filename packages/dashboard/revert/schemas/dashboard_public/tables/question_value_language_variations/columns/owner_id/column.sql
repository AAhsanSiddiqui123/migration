-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN owner_id;
COMMIT;  

