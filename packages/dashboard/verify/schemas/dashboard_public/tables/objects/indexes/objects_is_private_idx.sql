-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_is_private_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_is_private_idx');
COMMIT;  

