# Sensu::Extensions::OnlyCheckOutput

This mutator extension provides the Sensu Core built-in mutator `only_check_output`.

This mutator will return the check output from an event.

## Configuration

The `only_check_output` mutator is included in every install of Sensu.
To apply the mutator to handler, use the `"mutator"` handler
definition attribute.

For example:


``` json
{
  "handlers": {
    "graphite": {
      "...": "...",
      "mutator": "only_check_output"
    }
  }
}
```
