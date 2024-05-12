-- Deploy: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/user_connections/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/user_connections/columns/requester_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_connections 
    ADD CONSTRAINT user_connections_requester_id_fkey 
    FOREIGN KEY (requester_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
