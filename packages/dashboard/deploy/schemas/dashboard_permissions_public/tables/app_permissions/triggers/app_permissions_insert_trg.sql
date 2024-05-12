-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/triggers/app_permissions_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_private/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table
-- requires: schemas/dashboard_permissions_private/trigger_fns/app_permissions_bitnum_tg

BEGIN;
CREATE TRIGGER app_permissions_insert_trg 
 BEFORE INSERT ON "dashboard_permissions_public".app_permissions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_permissions_private".app_permissions_bitnum_tg ( );
COMMIT;
