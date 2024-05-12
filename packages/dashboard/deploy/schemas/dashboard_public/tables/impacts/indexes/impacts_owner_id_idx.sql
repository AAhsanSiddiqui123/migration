-- Deploy: schemas/dashboard_public/tables/impacts/indexes/impacts_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/owner_id/column

BEGIN;
CREATE INDEX impacts_owner_id_idx ON "dashboard_public".impacts (owner_id);
COMMIT;
