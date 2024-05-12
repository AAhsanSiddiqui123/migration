-- Deploy: schemas/dashboard_public/tables/impacts_conditions/indexes/impacts_conditions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/owner_id/column

BEGIN;
CREATE INDEX impacts_conditions_owner_id_idx ON "dashboard_public".impacts_conditions (owner_id);
COMMIT;
