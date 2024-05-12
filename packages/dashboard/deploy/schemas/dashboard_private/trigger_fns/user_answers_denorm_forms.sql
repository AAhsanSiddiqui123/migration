-- Deploy: schemas/dashboard_private/trigger_fns/user_answers_denorm_forms to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_answers_denorm_forms ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.form_id FROM "dashboard_public".user_forms AS ref WHERE ref.id = new.user_form_id
  INTO new.form_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
