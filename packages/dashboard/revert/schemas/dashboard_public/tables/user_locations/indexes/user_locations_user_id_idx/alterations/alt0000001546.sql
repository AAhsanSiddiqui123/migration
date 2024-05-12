-- Revert: schemas/dashboard_public/tables/user_locations/indexes/user_locations_user_id_idx/alterations/alt0000001546 from pg

BEGIN;
DROP INDEX "dashboard_public".user_locations_user_id_idx;
COMMIT;  

