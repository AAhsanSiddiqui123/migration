-- Deploy: schemas/dashboard_public/tables/user_contacts/indexes/user_contacts_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table
-- requires: schemas/dashboard_public/tables/user_contacts/columns/user_id/column

BEGIN;
CREATE INDEX user_contacts_user_id_idx ON "dashboard_public".user_contacts (user_id);
COMMIT;
