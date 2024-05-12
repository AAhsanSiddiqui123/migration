-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_location_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_location_idx');
COMMIT;  

