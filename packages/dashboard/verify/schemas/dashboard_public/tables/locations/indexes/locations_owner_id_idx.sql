-- Verify: schemas/dashboard_public/tables/locations/indexes/locations_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.locations', 'locations_owner_id_idx');
COMMIT;  

