-- Deploy: schemas/dashboard_private/trigger_fns/object_records_denorm_object_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".object_records_denorm_object_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.is_private,
ref.owner_id FROM "dashboard_public".objects AS ref WHERE ref.id = new.object_id
  INTO new.is_private,
new.owner_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
