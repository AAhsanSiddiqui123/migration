-- Deploy: schemas/dashboard_permissions_public/tables/app_permission_defaults/triggers/app_permission_defaults_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permission_defaults/table

BEGIN;
CREATE TRIGGER app_permission_defaults_insert_trg 
 BEFORE INSERT ON "dashboard_permissions_public".app_permission_defaults 
 FOR EACH ROW 
 EXECUTE PROCEDURE utils.ensure_singleton ( );
COMMIT;
