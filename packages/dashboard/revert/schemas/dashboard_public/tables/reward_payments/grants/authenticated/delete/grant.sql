-- Revert: schemas/dashboard_public/tables/reward_payments/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".reward_payments FROM authenticated;
COMMIT;  

