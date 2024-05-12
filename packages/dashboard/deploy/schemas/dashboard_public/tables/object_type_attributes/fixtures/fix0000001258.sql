-- Deploy: schemas/dashboard_public/tables/object_type_attributes/fixtures/fix0000001258 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;
INSERT INTO "dashboard_public".object_type_attributes (id, object_type_id, name, type, label, attr_order, is_required, min, unit_id, quantity_id) VALUES ('393ff77f-40d3-55de-93db-0a53969b400b', '3b71372f-777a-5d81-ac75-7ab1616c30d5', 'Species', 'text', 'Species', 1, FALSE, NULL, NULL, NULL), ('b50b96e3-90c0-5fe7-91d5-ae7cc759a8d3', 'e0ab12ef-cb03-5f24-8090-ffaf9edbdf4e', 'Area', 'numeric', 'Area', 1, FALSE, NULL, '59724f76-1ada-58b6-bd1b-8b4312b61c48', '949f4b12-723e-5e81-aaf6-ed6248d9fbaa'), ('41f9bdf8-74eb-5941-bc8f-e38ecdea2ac9', '183837e6-5ffa-5ac8-9d51-9f1b85d629c5', 'Make', 'text', 'Make', 1, FALSE, NULL, NULL, NULL), ('01f55b9a-dd35-54ab-9b7f-e83b5b3f9e7a', '183837e6-5ffa-5ac8-9d51-9f1b85d629c5', 'Year', 'numeric', 'Year', 1, FALSE, NULL, 'a9ad1d74-abcf-5d29-90dd-5d4583cfe886', '04579afd-6a5a-57e7-b2dd-26d838a0342a');
COMMIT;
