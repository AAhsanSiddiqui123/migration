-- Revert: schemas/dashboard_public/tables/reward_payments/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".reward_payments FROM authenticated;
COMMIT;  

