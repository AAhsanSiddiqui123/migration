-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/triggers/_000000000_ensure_update_organization_profile_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_private/trigger_fns/organization_profile_variations_denorm_organization_profile_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_organization_profile_id 
 BEFORE UPDATE ON "dashboard_public".organization_profile_variations 
 FOR EACH ROW 
 WHEN (OLD.organization_profile_id IS DISTINCT FROM NEW.organization_profile_id OR OLD.organization_id IS DISTINCT FROM NEW.organization_id) 
 EXECUTE PROCEDURE "dashboard_private".organization_profile_variations_denorm_organization_profile_id ( );
COMMIT;
