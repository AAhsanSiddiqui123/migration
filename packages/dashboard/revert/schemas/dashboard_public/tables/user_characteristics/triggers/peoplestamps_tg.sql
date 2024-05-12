-- Revert: schemas/dashboard_public/tables/user_characteristics/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_characteristics;


COMMIT;  

