-- Deploy: schemas/dashboard_public/tables/user_connections/constraints/user_connections_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;

ALTER TABLE "dashboard_public".user_connections
    ADD CONSTRAINT user_connections_pkey PRIMARY KEY (id);
COMMIT;
