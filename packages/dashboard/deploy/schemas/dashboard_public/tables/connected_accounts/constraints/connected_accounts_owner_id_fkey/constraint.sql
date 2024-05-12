-- Deploy: schemas/dashboard_public/tables/connected_accounts/constraints/connected_accounts_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/connected_accounts/table
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts 
    ADD CONSTRAINT connected_accounts_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
