-- Deploy: schemas/dashboard_public/tables/messages/constraints/messages_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;

ALTER TABLE "dashboard_public".messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
COMMIT;
