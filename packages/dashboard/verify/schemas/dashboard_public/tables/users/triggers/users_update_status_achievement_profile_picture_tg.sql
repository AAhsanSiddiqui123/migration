-- Verify: schemas/dashboard_public/tables/users/triggers/users_update_status_achievement_profile_picture_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.users_update_status_achievement_profile_picture_tg');
COMMIT;  

