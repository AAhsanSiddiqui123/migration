-- Revert: schemas/dashboard_public/tables/rewards/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN id;
COMMIT;  

