-- Revert: schemas/dashboard_public/tables/question_templates/indexes/question_templates_question_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".question_templates_question_type_id_idx;
COMMIT;  

