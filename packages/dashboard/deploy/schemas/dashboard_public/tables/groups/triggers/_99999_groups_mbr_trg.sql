-- Deploy: schemas/dashboard_public/tables/groups/triggers/_99999_groups_mbr_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/create_group_add_mbrs

BEGIN;
CREATE TRIGGER _99999_groups_mbr_trg 
 AFTER INSERT ON "dashboard_public".groups 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".create_group_add_mbrs ( );
COMMIT;
