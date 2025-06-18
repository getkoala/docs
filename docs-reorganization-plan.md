# Documentation Reorganization Plan

## Overview

This document outlines the reorganization of Koala's documentation to create a better information hierarchy that follows a logical user onboarding flow and properly separates guides from reference documentation.

## New Information Architecture

### 1. **Getting Started** (Unchanged)
- `what-is-koala` - Foundation concept
- `how-koala-works` - High-level overview  
- `quick-start` - Fast implementation path

**Rationale**: Keeps the existing strong foundation for new users.

### 2. **Implementation** (Consolidated from "Guides for Developers" + "JavaScript SDK")
- `sdk/installation` - Core installation guide
- `developer-guides/install-on-nextjs` - Framework-specific guide
- `developer-guides/sending-identify` - Critical identity setup
- `developer-guides/server-side` - Alternative implementation
- `developer-guides/using-npm` - Package manager approach
- `developer-guides/custom-proxy-setup` - Advanced networking

**Rationale**: Consolidates all implementation-related content in one logical flow. Developers can find everything they need for setup without jumping between sections.

### 3. **API Reference** (New section for reference docs)
- `sdk/identify` - Method reference
- `sdk/track` - Method reference  
- `sdk/autotracking` - Method reference

**Rationale**: Clear separation of reference documentation from guides. Developers implementing features can quickly find method signatures and parameters.

### 4. **Using Koala** (Renamed from "Product Manual")
- `get-started/identifying-users` - Bridge from implementation to usage
- `product-manual/intent-signals` - Core concept
- `admin-guides/first-intent-signals` - Getting started workflow
- `admin-guides/advanced-intent-signals` - Advanced workflows
- `product-manual/audiences` - Feature guide
- `product-manual/slack-alerts` - Feature guide
- `product-manual/koala-plays` - Feature guide
- `product-manual/ai-agents` - Feature guide
- `product-manual/content-reports` - Feature guide
- `product-manual/intent-scores` - Feature guide
- `product-manual/koala-weekly` - Feature guide

**Rationale**: Groups all user-facing feature documentation together in a logical workflow progression. Moves from core concepts to specific features.

### 5. **Integrations** (Streamlined)
All product integrations consolidated into one flat list for easy discovery.

### 6. **Data Sources** (Separated from Integrations)
- Technical data ingestion methods
- Distinguishes between "connecting tools" vs "sending data"

### 7. **Automations** (Unchanged)
Workflow automation features remain grouped together.

### 8. **Advanced Configuration** (New admin section)
- `admin-guides/how-to-drive-more-known-users`
- `admin-guides/larger-sales-teams` 
- `admin-guides/saml-sso`
- `developer-guides/gdpr-endpoint`
- `identity-layer/intro`
- `identity-layer/identify-email-recipients`

**Rationale**: Groups enterprise and advanced admin features together.

### 9. **For Sales Teams** (Renamed from "Guides for Sellers")
- End-user documentation for sales reps

## Key Improvements

### 1. **Clear User Journey**
```
What is Koala? → How does it work? → Quick setup → 
Full implementation → API reference (as needed) → 
Using features → Integrations → Advanced config
```

### 2. **Reference vs Guide Separation**
- **Guides**: Step-by-step workflows, concepts, best practices
- **Reference**: Method signatures, parameters, technical specs

### 3. **Developer Experience**
- Implementation guides colocated with installation
- API reference easily accessible but separate
- Framework-specific guides in logical order

### 4. **Feature Discovery**
- Core concepts (intent signals) before specific features
- Logical progression from basic to advanced usage

## Content Recommendations

### Missing Content to Consider
1. **Troubleshooting Guide** - Common issues and solutions
2. **Best Practices Guide** - Implementation and usage recommendations  
3. **Migration Guide** - For users switching from other tools
4. **Performance Guide** - Optimization recommendations
5. **Security Guide** - Data privacy and security practices

### Content to Merge
1. **Consider consolidating** `first-intent-signals` and `advanced-intent-signals` into a single comprehensive guide with beginner and advanced sections
2. **Merge** some of the smaller integration docs that follow similar patterns

### Content to Split
1. **Split** `sending-identify` into:
   - Conceptual guide (why identity matters)
   - Implementation guide (how to implement)
2. **Consider splitting** large integration docs (like HubSpot) into:
   - Quick setup
   - Advanced configuration

### Content Gaps
1. **SDK Migration Guide** - For users upgrading SDK versions
2. **Error Handling Guide** - How to handle SDK errors
3. **Testing Guide** - How to test Koala implementation
4. **Analytics Setup Guide** - Best practices for tracking setup

## Implementation Notes

### Redirects Needed
- Old "Guides for Developers" links → "Implementation" 
- Old "JavaScript SDK" links → "API Reference"
- Old "Product Manual" links → "Using Koala"

### URL Structure
Consider if current URL structure (`/docs/category/page`) supports the new hierarchy well, or if updates are needed.

### Cross-References
Update internal links throughout docs to reflect new structure and improve discoverability between related sections.

## Next Steps

1. **Review** this reorganization with stakeholders
2. **Update** internal cross-references between docs
3. **Add** missing content identified in recommendations
4. **Test** user flows through the new structure
5. **Monitor** analytics to ensure improved user experience

## Success Metrics

- Reduced time-to-first-success for new implementations
- Decreased support tickets about basic setup
- Improved user engagement with advanced features
- Better developer experience ratings