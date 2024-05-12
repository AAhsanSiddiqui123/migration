-- Verify: schemas/dashboard_public/tables/emails/triggers/emails_insert_status_achievement_is_verified_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.emails_insert_status_achievement_is_verified_tg');
COMMIT;  

