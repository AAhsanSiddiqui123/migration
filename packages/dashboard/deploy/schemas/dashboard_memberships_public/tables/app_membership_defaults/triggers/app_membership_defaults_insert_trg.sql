-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/triggers/app_membership_defaults_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table

BEGIN;
CREATE TRIGGER app_membership_defaults_insert_trg 
 BEFORE INSERT ON "dashboard_memberships_public".app_membership_defaults 
 FOR EACH ROW 
 EXECUTE PROCEDURE utils.ensure_singleton ( );
COMMIT;
