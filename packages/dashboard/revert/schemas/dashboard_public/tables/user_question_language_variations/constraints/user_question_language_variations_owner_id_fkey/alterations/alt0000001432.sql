-- Revert: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_owner_id_fkey/alterations/alt0000001432 from pg

BEGIN;
COMMENT ON CONSTRAINT user_question_language_variations_owner_id_fkey ON "dashboard_public".user_question_language_variations IS NULL;
COMMIT;  

