-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/triggers/group_grants_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table
-- requires: schemas/dashboard_memberships_private/trigger_fns/group_grants_apply_tg

BEGIN;
CREATE TRIGGER group_grants_insert_trg 
 BEFORE INSERT ON "dashboard_memberships_public".group_grants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_memberships_private".group_grants_apply_tg ( );
COMMIT;
