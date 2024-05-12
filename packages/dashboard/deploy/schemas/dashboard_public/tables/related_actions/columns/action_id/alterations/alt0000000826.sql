-- Deploy: schemas/dashboard_public/tables/related_actions/columns/action_id/alterations/alt0000000826 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_public/tables/related_actions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;
