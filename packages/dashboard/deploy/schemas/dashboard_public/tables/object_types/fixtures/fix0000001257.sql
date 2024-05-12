-- Deploy: schemas/dashboard_public/tables/object_types/fixtures/fix0000001257 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;
INSERT INTO "dashboard_public".object_types (id, name, quantity_id) VALUES ('3b71372f-777a-5d81-ac75-7ab1616c30d5', 'Tree', 'c40e4f89-6131-5f6b-9782-2f7ccfa62ba1'), ('183837e6-5ffa-5ac8-9d51-9f1b85d629c5', 'Car', 'c40e4f89-6131-5f6b-9782-2f7ccfa62ba1'), ('a0306812-62fa-5535-b34f-ed40770d2b1b', 'Water', 'e7132446-2c2d-5d6a-b931-64ed0bda8a32'), ('963b2e9b-f7e0-5a97-ab48-17ee22d4a1eb', 'Solar Panel', '949f4b12-723e-5e81-aaf6-ed6248d9fbaa'), ('50b89798-695e-555c-8193-c377ffaea766', 'Drop-A-Brick', 'c40e4f89-6131-5f6b-9782-2f7ccfa62ba1'), ('910b019b-85c0-561c-a208-69fbee5384ce', 'CO2', '772aa2a1-23b0-5f43-9510-d0b9f7fd26bb'), ('a50c7b50-0f9d-5cc3-afc1-96a0288637f6', 'Soil', '772aa2a1-23b0-5f43-9510-d0b9f7fd26bb'), ('634e09b2-2c30-53d3-94ad-f4c55e904077', 'Garden', '949f4b12-723e-5e81-aaf6-ed6248d9fbaa'), ('e0ab12ef-cb03-5f24-8090-ffaf9edbdf4e', 'Farm', '949f4b12-723e-5e81-aaf6-ed6248d9fbaa');
COMMIT;
