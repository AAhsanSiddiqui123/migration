-- Revert: schemas/dashboard_public/tables/rewards/constraints/rewards_owner_id_fkey/alterations/alt0000001240 from pg

BEGIN;
COMMENT ON CONSTRAINT rewards_owner_id_fkey ON "dashboard_public".rewards IS NULL;
COMMIT;  

