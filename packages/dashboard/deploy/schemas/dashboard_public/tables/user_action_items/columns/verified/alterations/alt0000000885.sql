-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/verified/alterations/alt0000000885 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/verified/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN verified SET DEFAULT false;
COMMIT;
