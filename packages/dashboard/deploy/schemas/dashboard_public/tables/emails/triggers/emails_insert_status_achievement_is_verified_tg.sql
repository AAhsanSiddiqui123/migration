-- Deploy: schemas/dashboard_public/tables/emails/triggers/emails_insert_status_achievement_is_verified_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_status_private/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_status_private/trigger_fns/tg_achv_bool

BEGIN;
CREATE TRIGGER emails_insert_status_achievement_is_verified_tg 
 BEFORE INSERT ON "dashboard_public".emails 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_status_private".tg_achv_bool ( 'is_verified', 'email_verified' );
COMMIT;
