-- Revert: schemas/dashboard_public/tables/message_groups/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups DROP COLUMN created_at;
ALTER TABLE "dashboard_public".message_groups DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".message_groups;

COMMIT;  

