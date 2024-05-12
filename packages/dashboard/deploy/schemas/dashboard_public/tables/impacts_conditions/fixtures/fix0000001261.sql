-- Deploy: schemas/dashboard_public/tables/impacts_conditions/fixtures/fix0000001261 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;
INSERT INTO "dashboard_public".impacts_conditions (name, impact_id, attr_id, op, value) VALUES ('', '8fbb4beb-d57e-5802-b3fa-b52345e7a6ff', '41f9bdf8-74eb-5941-bc8f-e38ecdea2ac9', 0, 'Honda'), ('', '8fbb4beb-d57e-5802-b3fa-b52345e7a6ff', '01f55b9a-dd35-54ab-9b7f-e83b5b3f9e7a', 1, '1990');
COMMIT;
