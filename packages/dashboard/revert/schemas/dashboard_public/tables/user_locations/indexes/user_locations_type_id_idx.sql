-- Revert: schemas/dashboard_public/tables/user_locations/indexes/user_locations_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_locations_type_id_idx;
COMMIT;  

