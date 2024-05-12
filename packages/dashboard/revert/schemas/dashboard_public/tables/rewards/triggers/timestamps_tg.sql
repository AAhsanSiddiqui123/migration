-- Revert: schemas/dashboard_public/tables/rewards/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN created_at;
ALTER TABLE "dashboard_public".rewards DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".rewards;

COMMIT;  

