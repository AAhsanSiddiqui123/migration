-- Verify: schemas/dashboard_public/tables/track_types/triggers/update_inf_ref on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_inf_ref');
COMMIT;  

