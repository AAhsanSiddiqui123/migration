-- Deploy: schemas/dashboard_private/trigger_fns/user_answers_denorm_private to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_answers_denorm_private ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.is_private FROM "dashboard_public".user_questions AS ref WHERE ref.id = new.question_id
  INTO new.is_private;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
