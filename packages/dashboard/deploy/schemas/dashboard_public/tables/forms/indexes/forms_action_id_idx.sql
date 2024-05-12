-- Deploy: schemas/dashboard_public/tables/forms/indexes/forms_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/action_id/column

BEGIN;
CREATE INDEX forms_action_id_idx ON "dashboard_public".forms (action_id);
COMMIT;
