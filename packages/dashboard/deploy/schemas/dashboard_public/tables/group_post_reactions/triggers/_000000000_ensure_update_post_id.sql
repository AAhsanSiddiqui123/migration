-- Deploy: schemas/dashboard_public/tables/group_post_reactions/triggers/_000000000_ensure_update_post_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table
-- requires: schemas/dashboard_private/trigger_fns/group_post_reactions_denorm_post_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_post_id 
 BEFORE UPDATE ON "dashboard_public".group_post_reactions 
 FOR EACH ROW 
 WHEN (OLD.post_id IS DISTINCT FROM NEW.post_id OR OLD.poster_id IS DISTINCT FROM NEW.poster_id OR OLD.group_id IS DISTINCT FROM NEW.group_id) 
 EXECUTE PROCEDURE "dashboard_private".group_post_reactions_denorm_post_id ( );
COMMIT;
