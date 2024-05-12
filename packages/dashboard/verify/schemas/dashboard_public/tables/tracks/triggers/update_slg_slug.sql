-- Verify: schemas/dashboard_public/tables/tracks/triggers/update_slg_slug on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_slg_slug');
COMMIT;  

