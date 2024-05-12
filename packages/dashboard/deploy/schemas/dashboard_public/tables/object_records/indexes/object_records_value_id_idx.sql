-- Deploy: schemas/dashboard_public/tables/object_records/indexes/object_records_value_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_public/tables/object_records/columns/value_id/column

BEGIN;
CREATE INDEX object_records_value_id_idx ON "dashboard_public".object_records (value_id);
COMMIT;
