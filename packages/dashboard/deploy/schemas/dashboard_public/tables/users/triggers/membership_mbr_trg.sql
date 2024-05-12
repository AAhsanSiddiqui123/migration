-- Deploy: schemas/dashboard_public/tables/users/triggers/membership_mbr_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/trigger_fns/membership_mbr_create

BEGIN;
CREATE TRIGGER membership_mbr_trg 
 AFTER INSERT ON "dashboard_public".users 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".membership_mbr_create ( );
COMMIT;
