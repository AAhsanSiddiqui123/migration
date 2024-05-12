-- Verify: schemas/dashboard_private/trigger_fns/group_post_comments_denorm_post_id on pg

BEGIN;
SELECT verify_function('dashboard_private.group_post_comments_denorm_post_id');
COMMIT;  

