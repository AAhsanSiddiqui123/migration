-- Revert: schemas/dashboard_public/tables/form_questions/constraints/form_questions_form_id_fkey/alterations/alt0000001354 from pg

BEGIN;
COMMENT ON CONSTRAINT form_questions_form_id_fkey ON "dashboard_public".form_questions IS NULL;
COMMIT;  

