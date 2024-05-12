-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/indexes/data_tag_language_variations_data_tag_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table

BEGIN;

CREATE INDEX data_tag_language_variations_data_tag_id_idx ON dashboard_public.data_tag_language_variations (
 data_tag_id
);

COMMIT;
