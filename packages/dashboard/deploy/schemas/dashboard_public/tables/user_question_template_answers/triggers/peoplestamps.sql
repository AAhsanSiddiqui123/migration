-- Deploy schemas/dashboard_public/tables/user_question_template_answers/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.user_question_template_answers ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_user_question_template_answers_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.user_question_template_answers
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
