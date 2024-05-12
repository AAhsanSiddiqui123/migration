-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_00010_memberships_utrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/memberships_utg

BEGIN;
CREATE TRIGGER _00010_memberships_utrg 
 BEFORE UPDATE ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".memberships_utg ( );
COMMIT;
