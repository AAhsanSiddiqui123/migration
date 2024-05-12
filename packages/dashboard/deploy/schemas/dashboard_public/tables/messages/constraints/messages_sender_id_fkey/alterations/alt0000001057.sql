-- Deploy: schemas/dashboard_public/tables/messages/constraints/messages_sender_id_fkey/alterations/alt0000001057 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/constraints/messages_sender_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT messages_sender_id_fkey ON "dashboard_public".messages IS E'@omit manyToMany';
COMMIT;
