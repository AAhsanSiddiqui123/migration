-- Revert: schemas/dashboard_public/tables/user_pass_actions/alterations/alt0000000986 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

