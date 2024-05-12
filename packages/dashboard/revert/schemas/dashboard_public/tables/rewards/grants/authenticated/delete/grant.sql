-- Revert: schemas/dashboard_public/tables/rewards/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".rewards FROM authenticated;
COMMIT;  

