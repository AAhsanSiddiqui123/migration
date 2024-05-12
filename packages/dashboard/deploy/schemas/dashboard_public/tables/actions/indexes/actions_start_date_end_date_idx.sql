-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_start_date_end_date_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/end_date/column
-- requires: schemas/dashboard_public/tables/actions/columns/start_date/column

BEGIN;
CREATE INDEX actions_start_date_end_date_idx ON "dashboard_public".actions (start_date, end_date);
COMMIT;
