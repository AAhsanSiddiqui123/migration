-- Revert: schemas/dashboard_public/tables/group_goals/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN created_by;
ALTER TABLE "dashboard_public".group_goals DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".group_goals;


COMMIT;  

