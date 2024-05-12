-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_owner_id_idx/alterations/alt0000001516 from pg

BEGIN;
DROP INDEX "dashboard_public".locations_owner_id_idx;
COMMIT;  

