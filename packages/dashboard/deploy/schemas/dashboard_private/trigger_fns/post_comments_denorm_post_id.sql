-- Deploy: schemas/dashboard_private/trigger_fns/post_comments_denorm_post_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".post_comments_denorm_post_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.poster_id FROM "dashboard_public".posts AS ref WHERE ref.id = new.post_id
  INTO new.poster_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
