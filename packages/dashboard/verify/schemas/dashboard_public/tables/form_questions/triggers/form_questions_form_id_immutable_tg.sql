-- Verify: schemas/dashboard_public/tables/form_questions/triggers/form_questions_form_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.form_questions_form_id_immutable_tg');
COMMIT;  

