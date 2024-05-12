-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_type_id_idx;
COMMIT;  

