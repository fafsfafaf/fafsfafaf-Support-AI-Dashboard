-- Test Tickets for Dashboard Real-time Updates
-- Date: November 23, 2025
-- Replace 'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18' with the actual merchant_id (e.g., 'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18')

-- The dashboard uses these tags:
-- 'ai_resolved_final' = AI successfully resolved the ticket
-- 'ai_needs_human' = AI escalated to human (needs human intervention)
-- 'ai_pending_resolution' = AI is still working on it

-- Example 1: AI Resolved Ticket
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-001',
    'email',
    'closed',
    'Where is my order?',
    'customer1@example.com',
    'Shipping Delay',
    'neutral',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-23 08:00:00',
    '2025-11-23 08:10:00',
    '2025-11-23 08:10:00',
    '2025-11-23 08:00:00',
    '2025-11-23 08:10:00'
);

-- Example 2: AI Escalated Ticket (needs human)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    ai_pending_at,
    ai_escalated_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-002',
    'email',
    'pending',
    'I want a full refund immediately!',
    'angry@customer.com',
    'Return Request',
    'negative',
    true,
    ARRAY['ai_needs_human'],
    '2025-11-23 09:00:00',
    '2025-11-23 09:05:00',
    '2025-11-23 09:00:00',
    '2025-11-23 09:05:00'
);

-- Example 3: AI Pending Ticket
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    ai_pending_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-003',
    'email',
    'open',
    'Question about product compatibility',
    'customer3@example.com',
    'Product Question',
    'neutral',
    true,
    ARRAY['ai_pending_resolution'],
    '2025-11-23 09:30:00',
    '2025-11-23 09:30:00'
);

-- Example 4: Another AI Resolved Ticket
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-004',
    'email',
    'closed',
    'How do I track my package?',
    'customer4@example.com',
    'Shipping Delay',
    'positive',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-23 07:00:00',
    '2025-11-23 07:15:00',
    '2025-11-23 07:15:00',
    '2025-11-23 07:00:00',
    '2025-11-23 07:15:00'
);

-- Example 5: Another Escalated Ticket
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    ai_pending_at,
    ai_escalated_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-005',
    'email',
    'pending',
    'Payment failed but money was charged',
    'customer5@example.com',
    'Payment Issue',
    'negative',
    true,
    ARRAY['ai_needs_human'],
    '2025-11-23 09:15:00',
    '2025-11-23 09:20:00',
    '2025-11-23 09:15:00',
    '2025-11-23 09:20:00'
);

-- Example 6: Mix - ticket that was pending, then resolved
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-006',
    'email',
    'closed',
    'Can I change my delivery address?',
    'customer6@example.com',
    'Account Help',
    'neutral',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-23 06:00:00',
    '2025-11-23 06:30:00',
    '2025-11-23 06:30:00',
    '2025-11-23 06:00:00',
    '2025-11-23 06:30:00'
);

-- ============================================
-- TICKETS FOR NOVEMBER 22, 2025
-- ============================================

-- Example 7: AI Resolved Ticket (Nov 22)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-007',
    'email',
    'closed',
    'Can I cancel my order?',
    'customer7@example.com',
    'Account Help',
    'neutral',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-22 10:00:00',
    '2025-11-22 10:15:00',
    '2025-11-22 10:15:00',
    '2025-11-22 10:00:00',
    '2025-11-22 10:15:00'
);

-- Example 8: AI Escalated Ticket (Nov 22)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    ai_pending_at,
    ai_escalated_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-008',
    'email',
    'pending',
    'Product arrived damaged - need replacement',
    'customer8@example.com',
    'Return Request',
    'negative',
    true,
    ARRAY['ai_needs_human'],
    '2025-11-22 14:30:00',
    '2025-11-22 14:35:00',
    '2025-11-22 14:30:00',
    '2025-11-22 14:35:00'
);

-- Example 9: AI Resolved Ticket (Nov 22)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-009',
    'email',
    'closed',
    'What are your business hours?',
    'customer9@example.com',
    'Product Question',
    'positive',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-22 16:00:00',
    '2025-11-22 16:05:00',
    '2025-11-22 16:05:00',
    '2025-11-22 16:00:00',
    '2025-11-22 16:05:00'
);

-- Example 10: AI Pending Ticket (Nov 22)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    ai_pending_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-010',
    'email',
    'open',
    'Do you ship internationally?',
    'customer10@example.com',
    'Shipping Delay',
    'neutral',
    true,
    ARRAY['ai_pending_resolution'],
    '2025-11-22 18:00:00',
    '2025-11-22 18:00:00'
);

-- ============================================
-- TICKETS FOR NOVEMBER 21, 2025
-- ============================================

-- Example 11: AI Resolved Ticket (Nov 21)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-011',
    'email',
    'closed',
    'How do I reset my password?',
    'customer11@example.com',
    'Account Help',
    'neutral',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-21 09:00:00',
    '2025-11-21 09:10:00',
    '2025-11-21 09:10:00',
    '2025-11-21 09:00:00',
    '2025-11-21 09:10:00'
);

-- Example 12: AI Escalated Ticket (Nov 21)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    ai_pending_at,
    ai_escalated_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-012',
    'email',
    'pending',
    'Charged twice for the same order!',
    'customer12@example.com',
    'Payment Issue',
    'negative',
    true,
    ARRAY['ai_needs_human'],
    '2025-11-21 11:30:00',
    '2025-11-21 11:35:00',
    '2025-11-21 11:30:00',
    '2025-11-21 11:35:00'
);

-- Example 13: AI Resolved Ticket (Nov 21)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-013',
    'email',
    'closed',
    'What is your return policy?',
    'customer13@example.com',
    'Return Request',
    'neutral',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-21 13:00:00',
    '2025-11-21 13:08:00',
    '2025-11-21 13:08:00',
    '2025-11-21 13:00:00',
    '2025-11-21 13:08:00'
);

-- Example 14: AI Resolved Ticket (Nov 21)
INSERT INTO tickets (
    merchant_id,
    external_ticket_id,
    source,
    status,
    subject,
    customer_email,
    topic,
    sentiment,
    ai_handled,
    tags,
    created_at,
    first_response_at,
    resolved_at,
    ai_pending_at,
    ai_resolved_at
) VALUES (
    'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18',
    'TEST-014',
    'email',
    'closed',
    'Size chart for clothing?',
    'customer14@example.com',
    'Product Question',
    'positive',
    true,
    ARRAY['ai_resolved_final'],
    '2025-11-21 15:30:00',
    '2025-11-21 15:40:00',
    '2025-11-21 15:40:00',
    '2025-11-21 15:30:00',
    '2025-11-21 15:40:00'
);

