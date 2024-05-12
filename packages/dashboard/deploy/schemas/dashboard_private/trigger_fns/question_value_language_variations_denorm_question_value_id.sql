-- Deploy: schemas/dashboard_private/trigger_fns/question_value_language_variations_denorm_question_value_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".question_value_language_variations_denorm_question_value_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.question_value_id IS NOT NULL) THEN
   SELECT ref.owner_id FROM "dashboard_public".question_values AS ref WHERE ref.id = new.question_value_id
   INTO new.owner_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
