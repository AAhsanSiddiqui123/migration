-- Revert schemas/dashboard_public/tables/user_question_template_answers/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.user_question_template_answers FROM authenticated;

COMMIT;
