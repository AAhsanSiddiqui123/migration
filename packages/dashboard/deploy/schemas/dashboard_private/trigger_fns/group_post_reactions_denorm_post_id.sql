-- Deploy: schemas/dashboard_private/trigger_fns/group_post_reactions_denorm_post_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".group_post_reactions_denorm_post_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.poster_id,
ref.group_id FROM "dashboard_public".group_posts AS ref WHERE ref.id = new.post_id
  INTO new.poster_id,
new.group_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
