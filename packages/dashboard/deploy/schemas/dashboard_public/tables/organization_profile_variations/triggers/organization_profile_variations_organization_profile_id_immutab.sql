-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/triggers/organization_profile_variations_organization_profile_id_immutab to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;
CREATE TRIGGER organization_profile_variations_organization_profile_id_immutab 
 BEFORE UPDATE ON "dashboard_public".organization_profile_variations 
 FOR EACH ROW 
 WHEN (OLD.organization_profile_id IS DISTINCT FROM NEW.organization_profile_id AND old.organization_profile_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'organization_profile_id' );
COMMIT;
