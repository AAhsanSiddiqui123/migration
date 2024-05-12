-- Verify: schemas/dashboard_public/tables/user_characteristics/indexes/user_characteristics_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_characteristics', 'user_characteristics_user_id_idx');
COMMIT;  

