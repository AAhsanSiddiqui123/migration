-- Revert: schemas/dashboard_public/tables/user_actions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_actions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_actions;


COMMIT;  

