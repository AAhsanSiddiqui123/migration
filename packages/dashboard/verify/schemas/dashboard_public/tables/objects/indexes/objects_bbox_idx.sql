-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_bbox_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_bbox_idx');
COMMIT;  

