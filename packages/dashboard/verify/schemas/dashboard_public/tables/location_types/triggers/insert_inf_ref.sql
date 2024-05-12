-- Verify: schemas/dashboard_public/tables/location_types/triggers/insert_inf_ref on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_inf_ref');
COMMIT;  

