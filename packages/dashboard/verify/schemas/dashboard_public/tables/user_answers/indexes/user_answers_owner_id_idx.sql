-- Verify: schemas/dashboard_public/tables/user_answers/indexes/user_answers_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_answers', 'user_answers_owner_id_idx');
COMMIT;  

