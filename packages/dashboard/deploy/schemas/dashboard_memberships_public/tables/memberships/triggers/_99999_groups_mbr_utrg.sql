-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_99999_groups_mbr_utrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/create_groups_add_mbrs

BEGIN;
CREATE TRIGGER _99999_groups_mbr_utrg 
 BEFORE UPDATE ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 WHEN (OLD.is_admin IS DISTINCT FROM NEW.is_admin OR OLD.is_owner IS DISTINCT FROM NEW.is_owner) 
 EXECUTE PROCEDURE "dashboard_memberships_private".create_groups_add_mbrs ( );
COMMIT;
