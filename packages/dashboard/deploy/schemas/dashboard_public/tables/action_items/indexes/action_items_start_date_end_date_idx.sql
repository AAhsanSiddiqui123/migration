-- Deploy: schemas/dashboard_public/tables/action_items/indexes/action_items_start_date_end_date_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/end_date/column
-- requires: schemas/dashboard_public/tables/action_items/columns/start_date/column

BEGIN;
CREATE INDEX action_items_start_date_end_date_idx ON "dashboard_public".action_items (start_date, end_date);
COMMIT;
