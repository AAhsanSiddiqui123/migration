-- Deploy: schemas/dashboard_public/tables/user_location_types/fixtures/fix0000001564 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table

BEGIN;
INSERT INTO "dashboard_public".user_location_types (name, ref, description) VALUES ('home', 'home', 'home'), ('work', 'work', 'work'), ('exercise', 'exercise', 'exercise'), ('neighborhood', 'neighborhood', 'neighborhood');
COMMIT;
