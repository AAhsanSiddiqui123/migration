-- Revert: schemas/dashboard_public/tables/user_action_verifications/alterations/alt0000000859 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

