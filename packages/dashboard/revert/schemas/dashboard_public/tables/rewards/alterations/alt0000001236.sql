-- Revert: schemas/dashboard_public/tables/rewards/alterations/alt0000001236 from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

