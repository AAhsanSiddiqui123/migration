-- Revert: schemas/dashboard_public/tables/track_actions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".track_actions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".track_actions;


COMMIT;  

