-- Deploy schemas/dashboard_public/tables/form_question_language_variations/alterations/add_foreign_key_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;


ALTER TABLE dashboard_public.form_question_language_variations
    ADD CONSTRAINT fk_dashboard_public_form_question_language_variations_owner_id
    FOREIGN KEY (owner_id)
    REFERENCES dashboard_public.users (id)
    ON DELETE CASCADE;


COMMIT;
