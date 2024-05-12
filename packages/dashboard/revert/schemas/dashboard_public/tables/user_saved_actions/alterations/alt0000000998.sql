-- Revert: schemas/dashboard_public/tables/user_saved_actions/alterations/alt0000000998 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

