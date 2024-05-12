-- Deploy: schemas/dashboard_public/tables/user_action_verifications/columns/user_id/alterations/alt0000000868 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_verifications/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
