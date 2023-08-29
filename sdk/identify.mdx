---
title: "Identify visitors"
description: "Learn how to identify visitors with the Koala SDK."
---

Koala allows you to identify your visitors with their email. This enables Koala to associate the visitor with a specific company, track them on different platforms, and connect events from before and after they log in.

Identifying visitors can be done with the `identify` method in Koala's JavaScript SDK. By using this method, you can enhance your ability to understand visitor and company intent throughout Koala.

## Anonymous visitors

Every visitor to your website is automatically assigned a unique anonymous ID by the Koala JavaScript SDK. You can use the `identify` method to provide additional properties about the visitor even before you know their email address. This information can help you better understand traits about your visitors.

In order to track visitors across different devices, use the `identify` method to associate events with a logged-in user instead of just the device they are using.


## Identifying a visitor

When a visitor signs up for your product for the first time, or logs in again, you can use the `identify` method to associate their email address with their anonymous ID. This allows Koala to associate events from before and after they log in and Koala can associate the visitor with a specific company.

You should use the `identify` method whenever a visitor:
- Signs up for your product
- Logs in
- Provides their email address in a form
- Loads a page as a logged-in user

```js
ko.identify('jane.doe@example.com')
```

<Note>
  Using Google Sign In or other login methods? Check out more details below: [Identifying with Google Sign In](#identifying-with-google-sign-in-passwordless-magic-links-or-others)
</Note>

## Setting visitor traits

You can use the `traits` (2nd parameter) to supply additional details about the anonymous or known visitor. This can include any relevant information that helps you understand your visitors better. You can use this data to filter and segment your visitors in Koala. Some examples of visitor traits are:

- `name`: The visitor's full name
- `title`: The visitor's job title
- `role`: The visitor's role
- and whatever else is important to your business

Here is an example of using the `identify` method to set visitor traits:

```js
ko.identify('jane.doe@example.com', {
  name: 'Jane Doe',
  title: 'Product Manager'
})
```

We recommend sending traits along with every `identify` call to make sure your visitor's profile is up to date.

## Setting account traits

In addition to capturing visitor traits, you can also specify _account-level_ traits. This is any data about the company or organization you want Koala to know about. You can use account traits to set up filters and lists in Koala.

Here is an example of using the `identify` method to set account traits:

```js
ko.identify('jane.doe@example.com', {
  $account: {
    name: 'Acme Inc.',
    domain: 'example.com',
    plan: 'Enterprise'
  }
})
```

When you specify the `$account.domain`, Koala will automatically associate that company with the visitor, if not already associated. 

If `domain` is not a unique value for your account-level data, for instance if you have multiple Teams or Workspaces that all link back to the same `domain`, you can specify the `group_id` to distinguish them. It's recommended to always include a `group_id` that is a unique id for the group of data.

<Info>You can pass account traits as camelCase or snake_case. Koala will treat them the same. Use whatever is most comfortable or familiar for your environment/language.</Info>

```js
ko.identify('jane.doe@example.com', {
  $account: {
    group_id: '<replace-with-unique-id-for-acme-inc>',
    name: 'Acme Inc.',
    domain: 'example.com',
    plan: 'Enterprise'
  }
})
```

You can link multiple sets of `group_id` traits to the same domain, but you cannot do it in a single `identify` call:

```js
// ✅ Allowed
ko.identify('jane.doe@example.com', {
  $account: {
    group_id: 'acme-production-id',
    name: 'Acme Inc.',
    domain: 'example.com',
    plan: 'Enterprise'
  }
})
ko.identify('jane.doe@example.com', {
  $account: {
    group_id: 'acme-test-environment-id',
    name: 'Acme Inc.',
    domain: 'example.com',
    plan: 'Free'
  }
})
```

Unlike some product analytics tools that have a `group` concept, we do not support capturing `group_id`s for events/pageviews. Instead, they are only used for collecting sets of traits you want to associate with a given account (company/domain).

## Identifying with Google Sign In, Passwordless Magic Links (or others)

Typically, the Koala pixel autocaptures emails from form submissions, which works great for traditional login forms. However, for more advanced login methods, like Google Sign-In, GitHub Sign-In, or Single Sign-On (SSO), manual intervention is required. 

If you use these types of sign-in methods, you'll need to manually call `ko.identify` _after_ the user has successfully logged in. We recommend installing the Koala pixel on the landing page of your logged-in site, and then calling `ko.identify` from there with the user's email. You can also provide any other relevant traits you want to see or use in Koala.

```js
ko.identify('jane.doe@example.com', {
  name: 'Jane Doe', 
  title: 'Product Manager'
})
```

<Note>
  If you cannot manually call `ko.identify` from the client-side of your logged-in site (after successful login/signup), it is possible to identify users server-side, but a bit more complex. We strongly recommend installing the Koala pixel and calling `ko.identify` on page load of your logged-in site, but if this is not possible you can read more about [Identifying server-side](/developer-guides/server-side#identifying-visitors).
</Note>

## Reset after logout

When a user logs out on your frontend, you should call `ko.reset()`. This will prevent future events from that device from being linked with that user. This is especially important when a device is shared by multiple users.
