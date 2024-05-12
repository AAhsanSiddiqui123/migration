-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/id/alterations/alt0000000861 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

