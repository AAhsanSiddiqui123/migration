-- Verify: schemas/dashboard_public/tables/post_comments/indexes/post_comments_parent_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.post_comments', 'post_comments_parent_id_idx');
COMMIT;  

