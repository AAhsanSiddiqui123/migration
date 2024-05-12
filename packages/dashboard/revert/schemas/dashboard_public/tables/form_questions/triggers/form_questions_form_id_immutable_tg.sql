-- Revert: schemas/dashboard_public/tables/form_questions/triggers/form_questions_form_id_immutable_tg from pg

BEGIN;
DROP TRIGGER form_questions_form_id_immutable_tg ON "dashboard_public".form_questions;
COMMIT;  

