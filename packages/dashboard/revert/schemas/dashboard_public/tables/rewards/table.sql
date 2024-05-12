-- Revert: schemas/dashboard_public/tables/rewards/table from pg

BEGIN;
DROP TABLE "dashboard_public".rewards;
COMMIT;  

