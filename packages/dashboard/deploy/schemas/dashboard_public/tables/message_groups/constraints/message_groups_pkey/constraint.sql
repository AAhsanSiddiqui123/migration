-- Deploy: schemas/dashboard_public/tables/message_groups/constraints/message_groups_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;

ALTER TABLE "dashboard_public".message_groups
    ADD CONSTRAINT message_groups_pkey PRIMARY KEY (id);
COMMIT;
