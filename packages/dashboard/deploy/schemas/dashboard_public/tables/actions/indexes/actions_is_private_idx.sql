-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_private/column

BEGIN;
CREATE INDEX actions_is_private_idx ON "dashboard_public".actions (is_private);
COMMIT;
