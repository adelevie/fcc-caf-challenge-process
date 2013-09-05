## Background

(Caution: Beware of acronyms)

As Part of the Universal Service Fund/Intercarrier (USF/ICC) Compensation Transformation Order, the Federal Communications Commission (FCC) has been working on implementing the Connect America Fund (CAF).

As part of CAF, The FCC will be providing support dollars to Internet Service Providers (price cap carriers) on a  basis in exchange for guarantees related to the services that they will provide in certain areas. It has been the policy of the FCC to ensure that support or subsidies only flow to areas that do not have an unsubsizied competitor.

In order to accomplish this policy objective, the FCC has relied on the National Broadband Map to determine which census tracts already have such an "unsubsidized competitor". Price cap carriers may not receive support for serving these areas.

On August 28, 2013, the [FCC released a `.xlsx`](http://apps.fcc.gov/ecfs/document/view?id=7520940223) file containing a list of census blocks:

> Each census block listing includes the fifteen digit Federal Information Process Standards code for the block, the relevant state, the name of the carrier that submitted the block, and an indication of whether that carrier is challenging the block in question.

## The Data

Files:

- `DOC-323008A1.xslx`: A copy of the original file provided by the FCC.
- `DOC-323008A1.csv`: A CSV of the original file, converted in Open Office.
- `DOC-323008A1.json`: A JSON file of the same data, created in `parse.rb`.
- `carriers.json`: A JSON list of the carriers seeking support, created in `parse.rb`.
- `parse.rb`: Parses the CSV and created the two JSON files.
- `pivot.rb`: Provides a small "playground" for analyzing the data and creating [pivot tables in Ruby](https://github.com/hopsoft/goldmine).
- `Gemfile` and `Gemfile.lock`: Used for `parse.rb`.

### `DOC-323008A1.json`

Schema:

- `fips`: Fifteen digit Federal Information Process Standards code for the block
- `state`: Two-letter state abbreviation
- `carrier`: The name of the price cap carrier seeking support
- `challenge`: A boolean value (`true` or `false`) indicating whether or not that carrier is challenging the block in question.

Sample row:

```javascript
{
  "fips":"150010210101007",
  "state":"HI","carrier":
  "Hawaiian Telecom",
  "challenge":false
}
```

### Using `pivot.rb`

1. Clone this repository and `cd` into it.
2. Run `bundle`.
3. Run `ruby pivot.rb`
4. You'll have a [Pry](http://pryrepl.org/) session ready to go.

### License(s) (or lack thereof)

As a work of the United States Government, this `DOC-323008A1.xslx` is in the public domain within the United States. Additionally, we waive copyright and related rights in the work worldwide through the CC0 1.0 Universal public domain dedication (which can be found at http://creativecommons.org/publicdomain/zero/1.0/).

To the furthest extent possible, works derived from `DOC-323008A1.xslx`, including `DOC-323008A1.csv`, `DOC-323008A1.json`, and `carriers.json` are also in the public domain within the United States. Additionally, we waive copyright and related rights in the work worldwide through the CC0 1.0 Universal public domain dedication (which can be found at http://creativecommons.org/publicdomain/zero/1.0/).

All other files in this repository are subject to the MIT License.
