-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/alterations/alt0000000899 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications
    DISABLE ROW LEVEL SECURITY;
COMMIT;
