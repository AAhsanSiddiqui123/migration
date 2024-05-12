-- Verify: schemas/dashboard_public/tables/impacts_conditions/indexes/impacts_conditions_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impacts_conditions', 'impacts_conditions_owner_id_idx');
COMMIT;  

