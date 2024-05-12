-- Deploy: schemas/dashboard_private/trigger_fns/group_locations_denorm_group_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".group_locations_denorm_group_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.owner_id FROM "dashboard_public".groups AS ref WHERE ref.id = new.group_id
  INTO new.owner_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
