-- Deploy: schemas/dashboard_private/trigger_fns/user_question_language_variations_denorm_user_question_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_question_language_variations_denorm_user_question_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.user_question_id IS NOT NULL) THEN
   SELECT ref.owner_id FROM "dashboard_public".user_questions AS ref WHERE ref.id = new.user_question_id
   INTO new.owner_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
