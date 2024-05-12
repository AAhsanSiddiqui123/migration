-- Revert: schemas/dashboard_public/tables/user_actions/alterations/alt0000000843 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

