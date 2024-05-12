-- Deploy: schemas/dashboard_public/tables/forms/indexes/forms_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/owner_id/column

BEGIN;
CREATE INDEX forms_owner_id_idx ON "dashboard_public".forms (owner_id);
COMMIT;
