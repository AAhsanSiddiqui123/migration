-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_99990_group_memberships_owners_chk to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/group_memberships_dtg

BEGIN;
CREATE TRIGGER _99990_group_memberships_owners_chk 
 BEFORE DELETE ON "dashboard_memberships_public".group_memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".group_memberships_dtg ( );
COMMIT;
