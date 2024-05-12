-- Deploy: schemas/dashboard_public/tables/messages/constraints/messages_group_id_fkey/alterations/alt0000001059 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/constraints/messages_group_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT messages_group_id_fkey ON "dashboard_public".messages IS E'@omit manyToMany';
COMMIT;
