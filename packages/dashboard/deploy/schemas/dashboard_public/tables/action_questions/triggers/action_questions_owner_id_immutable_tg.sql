-- Deploy: schemas/dashboard_public/tables/action_questions/triggers/action_questions_owner_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;
CREATE TRIGGER action_questions_owner_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".action_questions 
 FOR EACH ROW 
 WHEN (OLD.owner_id IS DISTINCT FROM NEW.owner_id AND old.owner_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'owner_id' );
COMMIT;
