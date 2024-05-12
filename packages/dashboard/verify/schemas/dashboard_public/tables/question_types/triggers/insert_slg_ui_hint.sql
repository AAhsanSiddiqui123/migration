-- Verify: schemas/dashboard_public/tables/question_types/triggers/insert_slg_ui_hint on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_slg_ui_hint');
COMMIT;  

