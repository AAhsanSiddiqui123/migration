-- Revert: schemas/dashboard_public/tables/rewards/constraints/rewards_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards 
    DROP CONSTRAINT rewards_pkey;

COMMIT;  

