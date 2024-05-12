
-- Deploy schemas/dashboard_public/tables/goals/fixtures/add_goals to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/faker/tables/dictionary/fixtures/add_sustainability_tags

BEGIN;

INSERT INTO dashboard_public.goals ( id, name, slug, short_name, sub_head ) VALUES ('668328e3-0746-59df-88ab-4a7e62eaa0f2', 'WATER CAPTURE', inflection.slugify('WATER CAPTURE'), 'CAPTURING LA''S WATER', 'Secure a safe and abundant local water supply'), ('df875ca1-04ba-52b4-93ef-92a8c318cc9c', 'REGENERATE LAND', inflection.slugify('REGENERATE LAND'), 'CARE FOR LAND', 'Safeguard LA’s status as a biodiversity hotspot'), ('c64fce9c-63af-5d8b-a4d5-cde77161a6e8', 'COOL THE CITY', inflection.slugify('COOL THE CITY'), 'KEEP LA COOL', 'Together we can make LA seven degrees cooler');

COMMIT;
