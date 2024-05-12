-- Deploy: schemas/dashboard_private/trigger_fns/user_forms_denorm_form_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_forms_denorm_form_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.owner_id FROM "dashboard_public".forms AS ref WHERE ref.id = new.form_id
  INTO new.owner_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
