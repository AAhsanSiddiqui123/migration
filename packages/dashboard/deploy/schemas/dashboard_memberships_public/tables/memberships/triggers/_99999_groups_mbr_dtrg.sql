-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_99999_groups_mbr_dtrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/delete_groups_remove_mbrs

BEGIN;
CREATE TRIGGER _99999_groups_mbr_dtrg 
 BEFORE DELETE ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".delete_groups_remove_mbrs ( );
COMMIT;
