-- Revert: schemas/dashboard_private/trigger_fns/post_comments_denorm_post_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".post_comments_denorm_post_id;
COMMIT;  

