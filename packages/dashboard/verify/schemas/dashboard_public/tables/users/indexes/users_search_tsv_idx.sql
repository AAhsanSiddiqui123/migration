-- Verify: schemas/dashboard_public/tables/users/indexes/users_search_tsv_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.users', 'users_search_tsv_idx');
COMMIT;  

