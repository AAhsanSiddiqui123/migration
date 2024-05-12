-- Revert: schemas/dashboard_public/tables/rewards/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN created_by;
ALTER TABLE "dashboard_public".rewards DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".rewards;


COMMIT;  

