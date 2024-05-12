-- Deploy: schemas/dashboard_public/tables/related_actions/columns/id/alterations/alt0000000821 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_public/tables/related_actions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
