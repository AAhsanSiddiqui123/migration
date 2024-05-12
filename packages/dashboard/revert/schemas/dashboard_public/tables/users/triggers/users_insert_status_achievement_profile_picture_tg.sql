-- Revert: schemas/dashboard_public/tables/users/triggers/users_insert_status_achievement_profile_picture_tg from pg

BEGIN;
DROP TRIGGER users_insert_status_achievement_profile_picture_tg ON "dashboard_public".users;
COMMIT;  

