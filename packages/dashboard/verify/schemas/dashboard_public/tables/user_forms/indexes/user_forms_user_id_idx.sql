-- Verify: schemas/dashboard_public/tables/user_forms/indexes/user_forms_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_forms', 'user_forms_user_id_idx');
COMMIT;  

