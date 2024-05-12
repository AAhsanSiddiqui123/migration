-- Revert: schemas/dashboard_public/tables/rewards/triggers/rewards_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER rewards_owner_id_immutable_tg ON "dashboard_public".rewards;
COMMIT;  

