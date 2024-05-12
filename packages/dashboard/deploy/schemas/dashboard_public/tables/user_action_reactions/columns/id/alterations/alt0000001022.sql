-- Deploy: schemas/dashboard_public/tables/user_action_reactions/columns/id/alterations/alt0000001022 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
