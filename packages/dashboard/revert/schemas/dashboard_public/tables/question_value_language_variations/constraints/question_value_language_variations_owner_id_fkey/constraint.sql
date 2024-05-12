-- Revert: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations 
    DROP CONSTRAINT question_value_language_variations_owner_id_fkey;

COMMIT;  

