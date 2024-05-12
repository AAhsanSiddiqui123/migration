-- Revert: schemas/dashboard_public/tables/rewards/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".rewards FROM authenticated;
COMMIT;  

