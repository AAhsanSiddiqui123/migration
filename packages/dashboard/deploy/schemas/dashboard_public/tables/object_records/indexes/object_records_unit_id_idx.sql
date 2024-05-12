-- Deploy: schemas/dashboard_public/tables/object_records/indexes/object_records_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_public/tables/object_records/columns/unit_id/column

BEGIN;
CREATE INDEX object_records_unit_id_idx ON "dashboard_public".object_records (unit_id);
COMMIT;
