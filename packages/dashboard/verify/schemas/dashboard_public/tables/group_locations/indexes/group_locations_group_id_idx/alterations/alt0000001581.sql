-- Verify: schemas/dashboard_public/tables/group_locations/indexes/group_locations_group_id_idx/alterations/alt0000001581 on pg

BEGIN;
SELECT verify_index('dashboard_public.group_locations', 'group_locations_group_id_idx');
COMMIT;  

