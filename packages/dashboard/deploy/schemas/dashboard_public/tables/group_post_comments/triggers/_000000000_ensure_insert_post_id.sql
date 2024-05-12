-- Deploy: schemas/dashboard_public/tables/group_post_comments/triggers/_000000000_ensure_insert_post_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_private/trigger_fns/group_post_comments_denorm_post_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_post_id 
 BEFORE INSERT ON "dashboard_public".group_post_comments 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".group_post_comments_denorm_post_id ( );
COMMIT;
