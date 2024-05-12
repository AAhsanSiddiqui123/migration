-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/id/alterations/alt0000000901 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

