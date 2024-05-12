-- Deploy schemas/dashboard_public/tables/emails/alterations/alter_table_add_social_type to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE dashboard_public.emails
    ADD COLUMN social_type SocialType NULL;

COMMIT;
