-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_00010_memberships_itrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/memberships_itg

BEGIN;
CREATE TRIGGER _00010_memberships_itrg 
 BEFORE INSERT ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".memberships_itg ( );
COMMIT;
