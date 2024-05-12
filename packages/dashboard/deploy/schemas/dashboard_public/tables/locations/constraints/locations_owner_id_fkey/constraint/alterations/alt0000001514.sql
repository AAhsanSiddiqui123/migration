-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_owner_id_fkey/constraint/alterations/alt0000001514 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/locations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".locations 
    ADD CONSTRAINT locations_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
