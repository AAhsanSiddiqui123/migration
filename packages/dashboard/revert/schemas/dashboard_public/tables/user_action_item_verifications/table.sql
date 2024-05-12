-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_action_item_verifications;
COMMIT;  

