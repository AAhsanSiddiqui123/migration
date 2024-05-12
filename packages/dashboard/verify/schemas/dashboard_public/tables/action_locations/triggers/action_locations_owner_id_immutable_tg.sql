-- Verify: schemas/dashboard_public/tables/action_locations/triggers/action_locations_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_locations_owner_id_immutable_tg');
COMMIT;  

