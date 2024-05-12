-- Verify: schemas/dashboard_public/tables/impacts/indexes/impacts_per_unit_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impacts', 'impacts_per_unit_id_idx');
COMMIT;  

