-- Revert: schemas/dashboard_public/tables/rewards/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".rewards FROM authenticated;
COMMIT;  

