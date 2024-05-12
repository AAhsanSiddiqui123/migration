-- Deploy: schemas/dashboard_public/tables/related_actions/triggers/related_actions_owner_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;
CREATE TRIGGER related_actions_owner_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".related_actions 
 FOR EACH ROW 
 WHEN (OLD.owner_id IS DISTINCT FROM NEW.owner_id AND old.owner_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'owner_id' );
COMMIT;
