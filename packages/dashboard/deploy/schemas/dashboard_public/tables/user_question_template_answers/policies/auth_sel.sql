-- Deploy schemas/dashboard_public/tables/user_question_template_answers/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table
-- requires: schemas/dashboard_public/tables/user_question_template_answers/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.user_question_template_answers
  FOR SELECT
  TO authenticated
  USING (
    user_id = jwt_public.current_user_id()
  );




COMMIT;
