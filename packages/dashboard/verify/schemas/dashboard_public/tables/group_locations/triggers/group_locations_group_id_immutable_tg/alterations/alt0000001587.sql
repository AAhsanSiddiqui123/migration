-- Verify: schemas/dashboard_public/tables/group_locations/triggers/group_locations_group_id_immutable_tg/alterations/alt0000001587 on pg

BEGIN;
SELECT verify_trigger('dashboard_public.group_locations_group_id_immutable_tg');
COMMIT;  

