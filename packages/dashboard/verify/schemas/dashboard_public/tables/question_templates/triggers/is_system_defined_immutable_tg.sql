-- Verify schemas/dashboard_public/tables/question_templates/triggers/is_system_defined_immutable_tg  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_is_system_defined_immutable_tg'); 
SELECT verify_trigger ('dashboard_public.is_system_defined_immutable_tg');

ROLLBACK;
