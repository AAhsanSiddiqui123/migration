-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/alterations/alt0000000380 from pg

BEGIN;


ALTER TABLE "dashboard_simple_secrets".user_secrets
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

