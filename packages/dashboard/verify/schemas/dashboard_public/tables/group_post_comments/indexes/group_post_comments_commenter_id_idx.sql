-- Verify: schemas/dashboard_public/tables/group_post_comments/indexes/group_post_comments_commenter_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.group_post_comments', 'group_post_comments_commenter_id_idx');
COMMIT;  

