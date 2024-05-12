-- Revert schemas/dashboard_public/tables/question_templates/triggers/is_system_defined_immutable_tg from pg

BEGIN;

DROP TRIGGER is_system_defined_immutable_tg ON dashboard_public.question_templates;
DROP FUNCTION dashboard_private.tg_is_system_defined_immutable_tg; 

COMMIT;
