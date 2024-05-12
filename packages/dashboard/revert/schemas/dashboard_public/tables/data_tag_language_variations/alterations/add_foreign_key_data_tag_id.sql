-- Revert schemas/dashboard_public/tables/data_tag_language_variations/alterations/add_foreign_key_data_tag_id from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    DROP CONSTRAINT fk_dashboard_public_data_tag_language_variations_data_tag_id;

COMMIT;
