-- Revert: schemas/dashboard_public/tables/user_viewed_actions/alterations/alt0000001010 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

