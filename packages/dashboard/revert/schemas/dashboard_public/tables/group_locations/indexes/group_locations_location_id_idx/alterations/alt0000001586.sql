-- Revert: schemas/dashboard_public/tables/group_locations/indexes/group_locations_location_id_idx/alterations/alt0000001586 from pg

BEGIN;
DROP INDEX "dashboard_public".group_locations_location_id_idx;
COMMIT;  

