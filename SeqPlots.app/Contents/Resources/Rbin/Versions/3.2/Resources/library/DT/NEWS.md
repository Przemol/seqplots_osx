# CHANGES IN DT VERSION 0.2

NEW FEATURES

- The `selection` argument of `datatable()` can be used to specify a vector of row indices to be pre-selected (thanks, @maxmoro, #89).

- Column filters may be disabled individually using the `searchable` settings of columns, e.g. http://rstudio.github.io/DT/009-searchable.html (thanks, @GitChub, #101).

- `formatCurrency()` will round numbers to 2 decimal places by default, and it is configurable via the new argument `digits` (thanks, @mebaran, #100).

- In Shiny, `input$tableId_cell_clicked` gives the row and column indices of the currently clicked cell as well as its value as a list of the form `list(row = row_index, col = column_index, value = cell_value)`.

- Added a new argument `valueColumns` to `formatStyle()` so we can style a column based on the values of a different column (thanks, @zizaozi, #115). See http://rstudio.github.io/DT/010-style.html for examples.

- You can enable column selection by `datatable(..., selection = list(target = 'column'))` now. The indices of selected columns are available to Shiny as `input$tableId_columns_selected` (thanks, @DarioS, #117).

- Row and column selections can be enabled simultaneously using `datatable(..., selection = list(target = 'row+column')`. Column selection is done via clicking on the table footer.

- Cell selection can be enabled via `datatable(..., selection = list(target = 'cell'))`. See http://rstudio.github.io/DT/shiny.html for more info.

- Added a `width` argument to `datatable()` (thanks, @taiyun).

- Added a `plugins` argument to `datatable()` to support **DataTables** plugins. See http://rstudio.github.io/plugins/ for more information.

- Added a function `dataTableProxy()` to create a proxy object that can be used to manipulate a table instance after it has been rendered in a Shiny app. Currently supported methods include `selectRows()`, `selectColumns()` (#126), and `addRow()` (#129).

- Added a function `selectCells()` to select table cells.

- When all values in a numeric column are missing (`NA`), the column filter will be disabled (http://stackoverflow.com/q/31323807/559676).

- Added an argument `dec.mark` to `formatCurrency()` to customize the character for the decimal point (thanks, @frajuegies, #128).

- Added an argument `before` to `formatCurrency()` to determine whether to place the currency symbol before or after the data values (thanks, @jrdnmdhl, #220).

- Added a `target` argument to `formatStyle()` to decide whether to style the cell or the full row (thanks, @peterlomas, #108).

- Added a `formatSignif()` function to format numbers to a specified number of significant digits (thanks, @shabbychef, #216).

MAJOR CHANGES

- In the previous version, row names were used as row indices in the server-side processing mode, but numeric row indices were used in the client-side mode. Now we always use numeric row indices in both modes for the sake of consistency. These input values in Shiny will always be integers: `input$tableId_rows_current`, `input$tableId_rows_all`, and `input$tableId_rows_selected`.

- `formatCurrency()` puts the currency symbol after the minus sign now, e.g. previously you might see `$-20` but now it is displayed as `-$20` (#220).

BUG FIXES

- Row selections are not preserved when column filters are enabled and clicked (thanks, @The-Dub, #97).

- Single row selection does not work for server-side tables (http://stackoverflow.com/q/30700143/559676).

- Missing dates are not rendered correctly with `formatDate()` (thanks, @studerus, #112)

- Missing values are mistakenly treated as 0 in `formatStyle()` (thanks, @studerus, #116)

- The thousands separator (e.g. a comma) in `formatCurrency()` should not be applied to the digits after the decimal point (thanks, @johnbaums, #116).

- The `class` argument does not work when a custom table `container` is used in `datatable()` (thanks, @DarioS, #138).

- The column filters for numeric columns (sliders) do not work well when the columns contain very small values or values with a large number of decimal places (thanks, @DarioS, #150).

- Searching for the ampersand `&` in the table does not work in Shiny.

- Searching for `+` in columns does not work in Shiny (thanks, @vnijs, #214).

- Fixed a bug that triggers a DataTables warning dialog box in the browser (thanks, @zross, https://github.com/WHOequity/who-heat/issues/229 and https://github.com/rstudio/shiny/issues/561)

# CHANGES IN DT VERSION 0.1

- Initial CRAN release.
