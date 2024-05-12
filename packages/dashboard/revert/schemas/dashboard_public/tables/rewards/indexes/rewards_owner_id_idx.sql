-- Revert: schemas/dashboard_public/tables/rewards/indexes/rewards_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".rewards_owner_id_idx;
COMMIT;  

