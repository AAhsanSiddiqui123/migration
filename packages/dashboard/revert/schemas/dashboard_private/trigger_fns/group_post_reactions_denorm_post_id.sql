-- Revert: schemas/dashboard_private/trigger_fns/group_post_reactions_denorm_post_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".group_post_reactions_denorm_post_id;
COMMIT;  

