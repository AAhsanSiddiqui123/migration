-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/action_id/alterations/alt0000000872 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

