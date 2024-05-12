-- Deploy: schemas/dashboard_public/tables/user_action_verifications/columns/rejected/alterations/alt0000000867 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_verifications/columns/rejected/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN rejected SET DEFAULT FALSE;
COMMIT;
