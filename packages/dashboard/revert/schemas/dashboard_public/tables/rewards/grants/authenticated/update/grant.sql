-- Revert: schemas/dashboard_public/tables/rewards/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".rewards FROM authenticated;
COMMIT;  

