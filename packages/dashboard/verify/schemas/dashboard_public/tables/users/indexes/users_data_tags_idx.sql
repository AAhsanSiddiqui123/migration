-- Verify: schemas/dashboard_public/tables/users/indexes/users_data_tags_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.users', 'users_data_tags_idx');
COMMIT;  

