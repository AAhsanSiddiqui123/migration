-- Revert: schemas/dashboard_public/tables/emails/triggers/emails_insert_status_achievement_is_verified_tg from pg

BEGIN;
DROP TRIGGER emails_insert_status_achievement_is_verified_tg ON "dashboard_public".emails;
COMMIT;  

