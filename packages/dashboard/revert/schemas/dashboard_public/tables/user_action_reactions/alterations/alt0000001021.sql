-- Revert: schemas/dashboard_public/tables/user_action_reactions/alterations/alt0000001021 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

