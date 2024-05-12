-- Revert: schemas/dashboard_public/tables/rewards/columns/reputation_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN reputation_amount;
COMMIT;  

