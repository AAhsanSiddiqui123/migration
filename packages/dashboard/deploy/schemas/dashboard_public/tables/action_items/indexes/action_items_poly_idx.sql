-- Deploy: schemas/dashboard_public/tables/action_items/indexes/action_items_poly_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/poly/column

BEGIN;
CREATE INDEX action_items_poly_idx ON "dashboard_public".action_items USING GIST (poly);
COMMIT;
