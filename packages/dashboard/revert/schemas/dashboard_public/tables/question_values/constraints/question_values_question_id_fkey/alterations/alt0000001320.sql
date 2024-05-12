-- Revert: schemas/dashboard_public/tables/question_values/constraints/question_values_question_id_fkey/alterations/alt0000001320 from pg

BEGIN;
COMMENT ON CONSTRAINT question_values_question_id_fkey ON "dashboard_public".question_values IS NULL;
COMMIT;  

