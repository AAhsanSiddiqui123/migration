-- Verify: schemas/dashboard_public/tables/group_posts/indexes/group_posts_group_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.group_posts', 'group_posts_group_id_idx');
COMMIT;  

