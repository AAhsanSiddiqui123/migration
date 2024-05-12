-- Verify: schemas/dashboard_public/tables/posts/indexes/posts_poster_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.posts', 'posts_poster_id_idx');
COMMIT;  

