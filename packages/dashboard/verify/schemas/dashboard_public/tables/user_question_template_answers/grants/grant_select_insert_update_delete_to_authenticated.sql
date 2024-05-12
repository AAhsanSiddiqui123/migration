-- Verify schemas/dashboard_public/tables/user_question_template_answers/grants/grant_select_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_public.user_question_template_answers', 'SELECT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_question_template_answers', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_question_template_answers', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_public.user_question_template_answers', 'DELETE');
  
ROLLBACK;
