-- Revert: schemas/dashboard_public/tables/rewards/constraints/rewards_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards 
    DROP CONSTRAINT rewards_owner_id_fkey;

COMMIT;  

