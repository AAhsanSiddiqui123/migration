-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/verifier_id/alterations/alt0000000862 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN verifier_id DROP NOT NULL;


COMMIT;  

