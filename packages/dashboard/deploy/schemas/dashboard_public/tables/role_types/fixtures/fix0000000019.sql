-- Deploy: schemas/dashboard_public/tables/role_types/fixtures/fix0000000019 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/role_types/table

BEGIN;
INSERT INTO "dashboard_public".role_types (id, name) VALUES (0, 'User'), (1, 'Organization');
COMMIT;
