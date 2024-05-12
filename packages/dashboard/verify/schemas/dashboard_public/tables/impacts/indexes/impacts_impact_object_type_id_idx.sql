-- Verify: schemas/dashboard_public/tables/impacts/indexes/impacts_impact_object_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impacts', 'impacts_impact_object_type_id_idx');
COMMIT;  

