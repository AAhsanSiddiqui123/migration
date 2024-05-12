-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/triggers/organization_profile_variations_organization_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;
CREATE TRIGGER organization_profile_variations_organization_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".organization_profile_variations 
 FOR EACH ROW 
 WHEN (OLD.organization_id IS DISTINCT FROM NEW.organization_id AND old.organization_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'organization_id' );
COMMIT;
