-- Verify: schemas/dashboard_public/tables/impacts/indexes/impacts_data_tags_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impacts', 'impacts_data_tags_idx');
COMMIT;  

