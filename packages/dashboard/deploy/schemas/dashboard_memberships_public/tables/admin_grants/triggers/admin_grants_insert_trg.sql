-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/triggers/admin_grants_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/admin_grants_apply_tg

BEGIN;
CREATE TRIGGER admin_grants_insert_trg 
 BEFORE INSERT ON "dashboard_memberships_public".admin_grants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".admin_grants_apply_tg ( );
COMMIT;
