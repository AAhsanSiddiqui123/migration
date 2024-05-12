-- Verify: schemas/dashboard_public/tables/form_types/triggers/insert_slg_slug on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_slg_slug');
COMMIT;  

