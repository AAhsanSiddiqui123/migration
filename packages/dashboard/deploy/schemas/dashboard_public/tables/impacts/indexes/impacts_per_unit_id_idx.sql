-- Deploy: schemas/dashboard_public/tables/impacts/indexes/impacts_per_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/per_unit_id/column

BEGIN;
CREATE INDEX impacts_per_unit_id_idx ON "dashboard_public".impacts (per_unit_id);
COMMIT;
