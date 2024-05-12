-- Deploy: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_action_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column
-- requires: schemas/dashboard_public/tables/action_language_variations/table
-- requires: schemas/dashboard_public/tables/action_language_variations/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations 
    ADD CONSTRAINT action_language_variations_action_id_fkey 
    FOREIGN KEY (action_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
