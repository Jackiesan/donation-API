# Box It Up Donation API

This RESTful API was constructed with Rails.  The purpose of this API is to quickly serve information about Seattle charities accepting dontations.

## Functionality

This API comes pre-packaged with most of the functionality that you will require. The following endpoints are implemented.

### Categories

```
GET /categories
```

List all product categories. 

```
GET /categories/:id/organizations
```

List of organizations accepting specific category ID.

### Organizations

```
GET /organizations
```

List all charity organizations.

```
GET /organizations/:id/categories
```

List of categories organization is accepting.

```
GET /orgs?ein=<ein identification number>
```

Return organization with matching EIN.




