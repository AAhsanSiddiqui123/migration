-- Deploy: schemas/dashboard_public/tables/impacts/indexes/impacts_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/unit_id/column

BEGIN;
CREATE INDEX impacts_unit_id_idx ON "dashboard_public".impacts (unit_id);
COMMIT;
