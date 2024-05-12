-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/triggers/group_member_permissions_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_private/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table
-- requires: schemas/dashboard_permissions_private/trigger_fns/group_member_permissions_bitnum_tg

BEGIN;
CREATE TRIGGER group_member_permissions_insert_trg 
 BEFORE INSERT ON "dashboard_permissions_public".group_member_permissions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_permissions_private".group_member_permissions_bitnum_tg ( );
COMMIT;
