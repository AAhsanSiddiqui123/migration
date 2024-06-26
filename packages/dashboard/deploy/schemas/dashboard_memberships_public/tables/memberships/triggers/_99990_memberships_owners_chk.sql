-- Deploy: schemas/dashboard_memberships_public/tables/memberships/triggers/_99990_memberships_owners_chk to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/memberships_dtg

BEGIN;
CREATE TRIGGER _99990_memberships_owners_chk 
 BEFORE DELETE ON "dashboard_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".memberships_dtg ( );
COMMIT;
