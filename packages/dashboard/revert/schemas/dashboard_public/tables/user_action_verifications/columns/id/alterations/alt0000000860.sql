-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/id/alterations/alt0000000860 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

