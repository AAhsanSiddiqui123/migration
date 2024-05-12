-- Deploy: schemas/dashboard_public/tables/users/triggers/users_insert_status_achievement_profile_picture_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_status_private/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_status_private/trigger_fns/tg_achv_tgl

BEGIN;
CREATE TRIGGER users_insert_status_achievement_profile_picture_tg 
 BEFORE INSERT ON "dashboard_public".users 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_status_private".tg_achv_tgl ( 'profile_picture', 'upload_profile_picture' );
COMMIT;
