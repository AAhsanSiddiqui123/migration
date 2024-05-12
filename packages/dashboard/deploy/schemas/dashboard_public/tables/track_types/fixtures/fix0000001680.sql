-- Deploy: schemas/dashboard_public/tables/track_types/fixtures/fix0000001680 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_types/table

BEGIN;
INSERT INTO "dashboard_public".track_types (name, ref, description) VALUES ('user', 'USER', 'user'), ('group', 'GROUP', 'group'), ('object', 'OBJECT', 'object');
COMMIT;
