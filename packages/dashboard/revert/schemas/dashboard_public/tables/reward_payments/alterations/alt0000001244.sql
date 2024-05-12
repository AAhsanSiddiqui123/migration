-- Revert: schemas/dashboard_public/tables/reward_payments/alterations/alt0000001244 from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

