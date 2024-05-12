-- Revert: schemas/dashboard_public/tables/user_contacts/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_contacts DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_contacts;


COMMIT;  

