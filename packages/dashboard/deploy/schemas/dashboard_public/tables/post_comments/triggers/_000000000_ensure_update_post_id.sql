-- Deploy: schemas/dashboard_public/tables/post_comments/triggers/_000000000_ensure_update_post_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_private/trigger_fns/post_comments_denorm_post_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_post_id 
 BEFORE UPDATE ON "dashboard_public".post_comments 
 FOR EACH ROW 
 WHEN (OLD.post_id IS DISTINCT FROM NEW.post_id OR OLD.poster_id IS DISTINCT FROM NEW.poster_id) 
 EXECUTE PROCEDURE "dashboard_private".post_comments_denorm_post_id ( );
COMMIT;
