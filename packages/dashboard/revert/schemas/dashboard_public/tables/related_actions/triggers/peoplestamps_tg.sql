-- Revert: schemas/dashboard_public/tables/related_actions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".related_actions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".related_actions;


COMMIT;  

