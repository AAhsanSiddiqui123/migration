-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_00020_memberships_insert_acl to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/memberships_insert_acl_tg

BEGIN;
CREATE TRIGGER _00020_memberships_insert_acl 
 AFTER INSERT ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".memberships_insert_acl_tg ( );
COMMIT;
