-- Verify: schemas/dashboard_public/tables/group_locations/indexes/group_locations_location_id_idx/alterations/alt0000001586 on pg

BEGIN;
SELECT verify_index('dashboard_public.group_locations', 'group_locations_location_id_idx');
COMMIT;  

