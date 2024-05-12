-- Revert: schemas/dashboard_public/tables/reward_payments/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

