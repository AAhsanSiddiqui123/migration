-- Deploy: schemas/dashboard_memberships_public/tables/app_admin_grants/triggers/app_admin_grants_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/app_admin_grants_apply_tg

BEGIN;
CREATE TRIGGER app_admin_grants_insert_trg 
 BEFORE INSERT ON "dashboard_memberships_public".app_admin_grants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".app_admin_grants_apply_tg ( );
COMMIT;
