#!/bin/bash

# Koala Documentation Migration Script
# This script demonstrates how to reorganize the documentation files
# according to the new information architecture

echo "Starting Koala documentation migration..."

# Create new directory structure
echo "Creating new directory structure..."
mkdir -p getting-started
mkdir -p implementation-guide/{installation,identity,integrations,advanced}
mkdir -p using-koala/{sales-teams,marketing-teams,customer-success,admins}
mkdir -p automation-ai/auto-outbound
mkdir -p reference/{api,sdk,integrations/{crm,analytics,engagement,data}}
mkdir -p resources

# Move and rename Getting Started files
echo "Migrating Getting Started section..."
cp get-started/what-is-koala.mdx getting-started/
cp get-started/how-koala-works.mdx getting-started/
cp get-started/quick-start.mdx getting-started/
# Note: core-concepts.mdx is new and already created

# Move Implementation Guide files
echo "Migrating Implementation Guide section..."

# Installation methods
cp sdk/installation.mdx implementation-guide/installation/javascript-sdk.mdx
cp developer-guides/server-side.mdx implementation-guide/installation/server-side.mdx
cp developer-guides/using-npm.mdx implementation-guide/installation/npm-package.mdx
# Note: tag-manager.mdx and overview.mdx are new files to be created

# Identity & User Tracking
cp identity-layer/intro.mdx implementation-guide/identity/understanding-identity.mdx
cp developer-guides/sending-identify.mdx implementation-guide/identity/identifying-users.mdx
cp sdk/track.mdx implementation-guide/identity/tracking-events.mdx
cp identity-layer/identify-email-recipients.mdx implementation-guide/identity/email-recipients.mdx

# Advanced Setup
cp developer-guides/custom-proxy-setup.mdx implementation-guide/advanced/custom-proxy.mdx
cp developer-guides/gdpr-endpoint.mdx implementation-guide/advanced/gdpr-compliance.mdx
cp developer-guides/install-on-nextjs.mdx implementation-guide/advanced/nextjs-integration.mdx

# Move Using Koala files
echo "Migrating Using Koala section..."

# Sales Teams
cp rep-guides/explore-koalau.mdx using-koala/sales-teams/getting-started.mdx
cp product-manual/intent-signals.mdx using-koala/sales-teams/understanding-intent-signals.mdx
cp product-manual/koala-plays.mdx using-koala/sales-teams/koala-plays.mdx
cp product-manual/audiences.mdx using-koala/sales-teams/working-with-audiences.mdx
# Note: best-practices.mdx is new

# Marketing Teams
cp product-manual/content-reports.mdx using-koala/marketing-teams/
cp product-manual/intent-scores.mdx using-koala/marketing-teams/intent-scoring.mdx
# Note: campaign-attribution.mdx is new

# Customer Success
# Note: All CS files are new and need to be created

# Admins
cp admin-guides/larger-sales-teams.mdx using-koala/admins/scaling-large-teams.mdx
cp admin-guides/saml-sso.mdx using-koala/admins/
# Note: team-management.mdx and security-compliance.mdx are new

# Move Automation & AI files
echo "Migrating Automation & AI section..."
cp automations/intro.mdx automation-ai/getting-started.mdx
cp automations/slack-alerts.mdx automation-ai/
cp automations/actions.mdx automation-ai/
cp automations/credits.mdx automation-ai/credits-billing.mdx
cp product-manual/ai-agents.mdx automation-ai/

# Auto-Outbound
cp automations/auto-outbound/intro.mdx automation-ai/auto-outbound/overview.mdx
# Group CRM integrations
echo "# CRM Integrations" > automation-ai/auto-outbound/crm-integrations.mdx
cat automations/auto-outbound/salesforce.mdx >> automation-ai/auto-outbound/crm-integrations.mdx
cat automations/auto-outbound/hubspot.mdx >> automation-ai/auto-outbound/crm-integrations.mdx

# Group Sales Engagement tools
echo "# Sales Engagement Tools" > automation-ai/auto-outbound/sales-engagement.mdx
cat automations/auto-outbound/outreach.mdx >> automation-ai/auto-outbound/sales-engagement.mdx
cat automations/auto-outbound/apollo.mdx >> automation-ai/auto-outbound/sales-engagement.mdx
cat automations/auto-outbound/clay.mdx >> automation-ai/auto-outbound/sales-engagement.mdx

cp automations/auto-outbound/webhooks.mdx automation-ai/auto-outbound/webhooks-apis.mdx

# Move Reference files
echo "Migrating Reference section..."

# SDK Reference
cp sdk/identify.mdx reference/sdk/javascript.mdx
cp sdk/autotracking.mdx reference/sdk/methods.mdx
# Note: server-side.mdx reference is new

# Integration Catalog - organize by type
echo "Organizing integrations by category..."

# CRM integrations
cp integrations/salesforce.mdx reference/integrations/crm/
cp integrations/hubspot.mdx reference/integrations/crm/

# Analytics integrations
cp integrations/segment.mdx reference/integrations/analytics/
cp integrations/posthog.mdx reference/integrations/analytics/mixpanel.mdx

# Engagement integrations
cp integrations/outreach.mdx reference/integrations/engagement/
cp integrations/salesloft.mdx reference/integrations/engagement/

# Data integrations
cp integrations/snowflake.mdx reference/integrations/data/
cp integrations/bigquery.mdx reference/integrations/data/

# Create integration catalog index
echo "Creating integration catalog..."
cat > reference/integrations/all-integrations.mdx << 'EOF'
---
title: "Integration Catalog"
description: "Complete list of all Koala integrations"
---

## CRM & Sales Tools
- [Salesforce](/reference/integrations/crm/salesforce)
- [HubSpot](/reference/integrations/crm/hubspot)
- [Pipedrive](/reference/integrations/crm/pipedrive)

## Analytics & Product Data
- [Segment](/reference/integrations/analytics/segment)
- [Mixpanel](/reference/integrations/analytics/mixpanel)
- [Amplitude](/reference/integrations/analytics/amplitude)

## Sales Engagement
- [Outreach](/reference/integrations/engagement/outreach)
- [Salesloft](/reference/integrations/engagement/salesloft)
- [Apollo](/reference/integrations/engagement/apollo)

## Data Warehouses
- [Snowflake](/reference/integrations/data/snowflake)
- [BigQuery](/reference/integrations/data/bigquery)
- [Redshift](/reference/integrations/data/redshift)

## Communication
- [Slack](/reference/integrations/communication/slack)
- [Microsoft Teams](/reference/integrations/communication/teams)
- [Email](/reference/integrations/communication/email)

## Community & Social
- [LinkedIn](/reference/integrations/social/linkedin)
- [GitHub](/reference/integrations/social/github)
- [Discord](/reference/integrations/social/discord)
EOF

# Create Resources section placeholders
echo "Creating Resources section..."
touch resources/best-practices.mdx
touch resources/use-case-library.mdx
touch resources/video-tutorials.mdx
touch resources/faq.mdx
touch resources/glossary.mdx

# Update redirects in mint.json
echo "Updating mint.json with redirects..."
# This would be done by replacing the current mint.json with mint-updated.json

echo "Migration complete! Next steps:"
echo "1. Review the new structure"
echo "2. Create missing content files"
echo "3. Update internal links"
echo "4. Replace mint.json with mint-updated.json"
echo "5. Test all redirects"
echo "6. Deploy changes"