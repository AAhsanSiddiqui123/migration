-- Deploy: schemas/dashboard_public/tables/forms/constraints/forms_action_item_id_fkey/alterations/alt0000001343 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/constraints/forms_action_item_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT forms_action_item_id_fkey ON "dashboard_public".forms IS E'@omit manyToMany';
COMMIT;
