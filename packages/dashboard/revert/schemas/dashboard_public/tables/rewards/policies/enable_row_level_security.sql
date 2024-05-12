-- Revert: schemas/dashboard_public/tables/rewards/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

