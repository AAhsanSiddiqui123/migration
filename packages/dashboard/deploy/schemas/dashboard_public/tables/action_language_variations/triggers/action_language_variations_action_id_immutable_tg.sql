-- Deploy: schemas/dashboard_public/tables/action_language_variations/triggers/action_language_variations_action_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;
CREATE TRIGGER action_language_variations_action_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".action_language_variations 
 FOR EACH ROW 
 WHEN (OLD.action_id IS DISTINCT FROM NEW.action_id AND old.action_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'action_id' );
COMMIT;
