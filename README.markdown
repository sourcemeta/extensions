# JSON Schema Extensions Registry

A growing collection of officially recognised vocabulary extensions to JSON
Schema for common use cases not covered by the core JSON Schema specification.

## Available Extensions

| Extension | Description | Version | Vocabulary URI |
|-----------|-------------|---------|----------------|
| [Database](./specs/database/v1.markdown) | Keywords for describing database objects and extended types | 1 | `https://json-schema.org/extension/database/v1` |

## JSON Schema Version Compatibility

The vocabulary definitions themselves are JSON Schema version agnostic. The
keywords and their semantics can be used with any version of JSON Schema.

However, this repository only distributes meta-schemas targeting the latest
stable version of the JSON Schema specification. If you need meta-schemas for
older JSON Schema versions, you are welcome to use tooling to downgrade them
for your specific needs.
