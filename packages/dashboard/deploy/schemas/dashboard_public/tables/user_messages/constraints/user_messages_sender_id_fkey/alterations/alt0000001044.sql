-- Deploy: schemas/dashboard_public/tables/user_messages/constraints/user_messages_sender_id_fkey/alterations/alt0000001044 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/constraints/user_messages_sender_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_messages_sender_id_fkey ON "dashboard_public".user_messages IS E'@omit manyToMany';
COMMIT;
