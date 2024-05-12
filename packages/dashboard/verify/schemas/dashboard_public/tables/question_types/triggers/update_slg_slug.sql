-- Verify: schemas/dashboard_public/tables/question_types/triggers/update_slg_slug on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_slg_slug');
COMMIT;  

