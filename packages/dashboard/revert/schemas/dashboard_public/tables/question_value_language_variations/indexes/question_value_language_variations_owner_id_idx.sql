-- Revert: schemas/dashboard_public/tables/question_value_language_variations/indexes/question_value_language_variations_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".question_value_language_variations_owner_id_idx;
COMMIT;  

