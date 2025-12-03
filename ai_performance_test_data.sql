-- AI Performance Test Data für Merchant e62ec7f1-a9b6-4ca7-80ab-f57031d35a18
-- Erstellt 20 realistische Tickets mit variierenden AI-Metriken

-- Lösche alte Testdaten (optional)
-- DELETE FROM tickets WHERE merchant_id = 'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18' AND external_ticket_id LIKE 'TEST-%';

-- Füge 20 Test-Tickets ein
INSERT INTO tickets (
  merchant_id,
  external_ticket_id,
  source,
  status,
  subject,
  customer_email,
  ai_handled,
  ai_escalated_to_human,
  created_at,
  ai_confidence_score,
  ai_response_time_seconds,
  ai_tokens_used,
  ai_cost,
  ai_model_used,
  tags
) VALUES
-- Hohe Confidence Tickets (0.85-0.95)
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-001', 'zendesk', 'solved', 'Wo ist meine Bestellung?', 'kunde1@example.com', true, false, NOW() - INTERVAL '6 days', 0.92, 25, 120, 0.0036, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-002', 'zendesk', 'solved', 'Tracking-Nummer bitte', 'kunde2@example.com', true, false, NOW() - INTERVAL '6 days', 0.89, 18, 95, 0.0029, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-003', 'zendesk', 'solved', 'Lieferzeit nach Deutschland', 'kunde3@example.com', true, false, NOW() - INTERVAL '5 days', 0.94, 22, 110, 0.0033, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-004', 'zendesk', 'solved', 'Rechnung anfordern', 'kunde4@example.com', true, false, NOW() - INTERVAL '5 days', 0.88, 15, 85, 0.0026, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-005', 'zendesk', 'solved', 'Produktverfügbarkeit', 'kunde5@example.com', true, false, NOW() - INTERVAL '4 days', 0.91, 20, 100, 0.0030, 'gpt-4.1-mini', ARRAY[]::text[]),

-- Mittlere Confidence Tickets (0.65-0.80)
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-006', 'zendesk', 'open', 'Rückerstattung möglich?', 'kunde6@example.com', true, false, NOW() - INTERVAL '4 days', 0.75, 35, 150, 0.0045, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-007', 'zendesk', 'open', 'Größe ändern', 'kunde7@example.com', true, false, NOW() - INTERVAL '3 days', 0.72, 28, 130, 0.0039, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-008', 'zendesk', 'pending', 'Defektes Produkt', 'kunde8@example.com', true, false, NOW() - INTERVAL '3 days', 0.68, 42, 180, 0.0054, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-009', 'zendesk', 'open', 'Versandkosten zu hoch', 'kunde9@example.com', true, false, NOW() - INTERVAL '2 days', 0.70, 38, 160, 0.0048, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-010', 'zendesk', 'pending', 'Adresse ändern', 'kunde10@example.com', true, false, NOW() - INTERVAL '2 days', 0.77, 30, 140, 0.0042, 'gpt-4.1-mini', ARRAY[]::text[]),

-- Niedrige Confidence Tickets (0.50-0.65) - Komplexere Fälle MIT ai_needs_human Tag
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-011', 'zendesk', 'open', 'Beschwerde über Qualität', 'kunde11@example.com', true, true, NOW() - INTERVAL '2 days', 0.58, 55, 220, 0.0066, 'gpt-4.1-mini', ARRAY['ai_needs_human']::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-012', 'zendesk', 'open', 'Mehrfache Abbuchung', 'kunde12@example.com', true, true, NOW() - INTERVAL '1 day', 0.52, 48, 200, 0.0060, 'gpt-4.1-mini', ARRAY['ai_needs_human']::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-013', 'zendesk', 'pending', 'Garantiefall', 'kunde13@example.com', true, false, NOW() - INTERVAL '1 day', 0.62, 45, 190, 0.0057, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-014', 'zendesk', 'open', 'Rechtliche Frage', 'kunde14@example.com', true, true, NOW() - INTERVAL '1 day', 0.55, 50, 210, 0.0063, 'gpt-4.1-mini', ARRAY['ai_needs_human']::text[]),

-- Aktuelle Tickets (heute)
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-015', 'zendesk', 'open', 'Bestellstatus prüfen', 'kunde15@example.com', true, false, NOW() - INTERVAL '12 hours', 0.86, 24, 115, 0.0035, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-016', 'zendesk', 'open', 'Lieferung verfolgen', 'kunde16@example.com', true, false, NOW() - INTERVAL '10 hours', 0.90, 19, 105, 0.0032, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-017', 'zendesk', 'pending', 'Farbe nicht verfügbar', 'kunde17@example.com', true, false, NOW() - INTERVAL '8 hours', 0.73, 32, 145, 0.0044, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-018', 'zendesk', 'open', 'Versandzeit nach Österreich', 'kunde18@example.com', true, false, NOW() - INTERVAL '6 hours', 0.88, 21, 108, 0.0032, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-019', 'zendesk', 'solved', 'Gutscheincode einlösen', 'kunde19@example.com', true, false, NOW() - INTERVAL '4 hours', 0.85, 17, 92, 0.0028, 'gpt-4.1-mini', ARRAY[]::text[]),
('e62ec7f1-a9b6-4ca7-80ab-f57031d35a18', 'TEST-020', 'zendesk', 'open', 'Produktempfehlung', 'kunde20@example.com', true, false, NOW() - INTERVAL '2 hours', 0.79, 26, 125, 0.0038, 'gpt-4.1-mini', ARRAY[]::text[]);

-- Überprüfe die eingefügten Daten
SELECT 
  external_ticket_id,
  subject,
  ai_confidence_score,
  ai_response_time_seconds,
  ai_tokens_used,
  ai_cost,
  created_at
FROM tickets 
WHERE merchant_id = 'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18' 
  AND external_ticket_id LIKE 'TEST-%'
ORDER BY created_at DESC;

-- Statistik-Check
SELECT 
  COUNT(*) as total_tickets,
  ROUND(AVG(ai_confidence_score)::numeric, 2) as avg_confidence,
  ROUND(AVG(ai_response_time_seconds)::numeric, 0) as avg_response_time,
  SUM(ai_tokens_used) as total_tokens,
  ROUND(SUM(ai_cost)::numeric, 4) as total_cost
FROM tickets 
WHERE merchant_id = 'e62ec7f1-a9b6-4ca7-80ab-f57031d35a18' 
  AND external_ticket_id LIKE 'TEST-%';
