-- Deploy: schemas/dashboard_public/tables/related_actions/columns/action_order/alterations/alt0000000823 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_public/tables/related_actions/columns/action_order/column

BEGIN;

ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN action_order SET DEFAULT 0;
COMMIT;
