-- Verify: schemas/dashboard_public/tables/units/indexes/units_quantity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.units', 'units_quantity_id_idx');
COMMIT;  

