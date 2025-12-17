# JSON Schema Extensions Registry

A growing collection of officially recognised vocabulary extensions to JSON
Schema for common use cases not covered by the core JSON Schema specification.

## Available Extensions

| Extension | Description | Version | Partners       |
|-----------|-------------|---------|----------------|
| [Database](./specs/database/v1.markdown) | Keywords for describing database objects and extended types | 1 | <a href="https://www.oracle.com"><img src="./assets/oracle.svg" width="80"></a> |
| [Web of Things](./specs/wot/v1.markdown) | Keywords for describing an abstraction of a physical or virtual entity that provides interactions to and participates in the Web of Things | 1 | <a href="https://www.w3.org"><img src="./assets/w3c.svg" width="50"></a> <a href="https://www.siemens.com"><img src="./assets/siemens.svg" width="80"></a> |

## JSON Schema Version Compatibility

The vocabulary definitions themselves are JSON Schema version agnostic. The
keywords and their semantics can be used with any version of JSON Schema.

However, this repository only distributes meta-schemas targeting the latest
stable version of the JSON Schema specification. If you need meta-schemas for
older JSON Schema versions, you are welcome to use tooling to downgrade them
for your specific needs.
