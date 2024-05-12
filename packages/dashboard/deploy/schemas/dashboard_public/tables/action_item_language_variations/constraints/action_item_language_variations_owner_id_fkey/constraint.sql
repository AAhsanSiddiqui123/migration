-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table
-- requires: schemas/dashboard_public/tables/action_item_language_variations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations 
    ADD CONSTRAINT action_item_language_variations_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
