-- Verify: schemas/dashboard_public/tables/impacts/indexes/impacts_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impacts', 'impacts_owner_id_idx');
COMMIT;  

