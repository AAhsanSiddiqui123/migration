-- Revert: schemas/dashboard_public/tables/rewards/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN owner_id;
COMMIT;  

