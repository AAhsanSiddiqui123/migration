-- Revert: schemas/dashboard_public/tables/reward_payments/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".reward_payments FROM authenticated;
COMMIT;  

