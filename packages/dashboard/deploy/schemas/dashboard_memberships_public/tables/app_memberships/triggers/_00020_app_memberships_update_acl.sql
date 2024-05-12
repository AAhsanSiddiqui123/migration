-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/triggers/_00020_app_memberships_update_acl to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/app_memberships_update_acl_tg

BEGIN;
CREATE TRIGGER _00020_app_memberships_update_acl 
 AFTER UPDATE ON "dashboard_memberships_public".app_memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".app_memberships_update_acl_tg ( );
COMMIT;
