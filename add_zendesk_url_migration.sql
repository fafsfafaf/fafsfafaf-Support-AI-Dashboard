-- Migration: Add zendesk_url field to tickets table
-- This field stores the direct URL to the ticket in Zendesk for quick access

ALTER TABLE tickets 
ADD COLUMN IF NOT EXISTS zendesk_url TEXT;

-- Add comment for documentation
COMMENT ON COLUMN tickets.zendesk_url IS 'Direct URL to the ticket in Zendesk (e.g., https://yourcompany.zendesk.com/agent/tickets/12345)';

-- Optional: Add index for faster lookups if needed
-- CREATE INDEX IF NOT EXISTS idx_tickets_zendesk_url ON tickets(zendesk_url);
