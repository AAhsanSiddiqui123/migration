-- Deploy: schemas/dashboard_public/tables/notifications/constraints/notifications_recipient_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/notifications/columns/recipient_id/column

BEGIN;

ALTER TABLE "dashboard_public".notifications 
    ADD CONSTRAINT notifications_recipient_id_fkey 
    FOREIGN KEY (recipient_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
