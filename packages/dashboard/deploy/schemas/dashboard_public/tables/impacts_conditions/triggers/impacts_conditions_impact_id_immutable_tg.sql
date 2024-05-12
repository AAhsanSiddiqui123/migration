-- Deploy: schemas/dashboard_public/tables/impacts_conditions/triggers/impacts_conditions_impact_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;
CREATE TRIGGER impacts_conditions_impact_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".impacts_conditions 
 FOR EACH ROW 
 WHEN (OLD.impact_id IS DISTINCT FROM NEW.impact_id AND old.impact_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'impact_id' );
COMMIT;
