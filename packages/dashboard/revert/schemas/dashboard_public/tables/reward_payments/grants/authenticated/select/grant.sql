-- Revert: schemas/dashboard_public/tables/reward_payments/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".reward_payments FROM authenticated;
COMMIT;  

