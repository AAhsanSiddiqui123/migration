-- Revert: schemas/dashboard_public/tables/user_profiles/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_profiles DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_profiles;


COMMIT;  

