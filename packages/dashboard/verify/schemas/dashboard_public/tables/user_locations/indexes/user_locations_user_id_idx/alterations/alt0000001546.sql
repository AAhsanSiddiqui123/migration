-- Verify: schemas/dashboard_public/tables/user_locations/indexes/user_locations_user_id_idx/alterations/alt0000001546 on pg

BEGIN;
SELECT verify_index('dashboard_public.user_locations', 'user_locations_user_id_idx');
COMMIT;  

