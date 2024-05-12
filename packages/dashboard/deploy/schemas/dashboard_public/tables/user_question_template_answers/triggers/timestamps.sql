-- Deploy schemas/dashboard_public/tables/user_question_template_answers/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_question_template_answers ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.user_question_template_answers ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_question_template_answers ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_user_question_template_answers_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.user_question_template_answers
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
