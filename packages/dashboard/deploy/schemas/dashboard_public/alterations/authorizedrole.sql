-- Deploy dashboard:schemas/dashboard_public/alterations/authorizedrole to pg

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_public" TO authorized;

COMMIT;
