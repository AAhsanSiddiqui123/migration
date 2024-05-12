-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/alterations/add_foreign_key_data_tag_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;


ALTER TABLE dashboard_public.data_tag_language_variations
    ADD CONSTRAINT fk_dashboard_public_data_tag_language_variations_data_tag_id
    FOREIGN KEY (data_tag_id)
    REFERENCES dashboard_public.data_tags (id)
    ON DELETE CASCADE;


COMMIT;
