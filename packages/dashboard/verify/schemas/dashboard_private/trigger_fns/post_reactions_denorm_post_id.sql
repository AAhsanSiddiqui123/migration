-- Verify: schemas/dashboard_private/trigger_fns/post_reactions_denorm_post_id on pg

BEGIN;
SELECT verify_function('dashboard_private.post_reactions_denorm_post_id');
COMMIT;  

