-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.data_tag_language_variations (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.data_tag_language_variations IS 'Data Tag Language Variations table.';

COMMENT ON COLUMN dashboard_public.data_tag_language_variations.id IS 'The primary unique identifier for the data_tag_language_variations table.';

COMMIT;
