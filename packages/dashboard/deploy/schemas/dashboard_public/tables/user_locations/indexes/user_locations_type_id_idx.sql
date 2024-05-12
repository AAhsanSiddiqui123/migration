-- Deploy: schemas/dashboard_public/tables/user_locations/indexes/user_locations_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/type_id/column

BEGIN;
CREATE INDEX user_locations_type_id_idx ON "dashboard_public".user_locations (type_id);
COMMIT;
