-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/columns/verified/alterations/alt0000000905 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/columns/verified/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN verified SET DEFAULT false;
COMMIT;
