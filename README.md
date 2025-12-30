# tree-sitter-conao3-bash

A [tree-sitter](https://tree-sitter.github.io/tree-sitter/) grammar for Conao3Bash.

## Overview

This package provides a tree-sitter parser for the Conao3Bash language, enabling fast and accurate syntax highlighting, code folding, and structural analysis in supported editors and tools.

## Installation

### Node.js

```bash
npm install tree-sitter-conao3-bash
```

### Rust

Add to your `Cargo.toml`:

```toml
[dependencies]
tree-sitter-conao3-bash = "0.1"
```

### Python

```bash
pip install tree-sitter-conao3-bash
```

### Go

```bash
go get github.com/conao3/tree-sitter-conao3-bash
```

## Usage

### Node.js

```javascript
const Parser = require('tree-sitter');
const Conao3Bash = require('tree-sitter-conao3-bash');

const parser = new Parser();
parser.setLanguage(Conao3Bash);

const sourceCode = '(+ 1 2)';
const tree = parser.parse(sourceCode);

console.log(tree.rootNode.toString());
```

### Rust

```rust
use tree_sitter::Parser;

fn main() {
    let mut parser = Parser::new();
    parser.set_language(&tree_sitter_conao3_bash::LANGUAGE.into()).unwrap();

    let source_code = "(+ 1 2)";
    let tree = parser.parse(source_code, None).unwrap();

    println!("{}", tree.root_node().to_sexp());
}
```

## Development

### Prerequisites

- Node.js (v14 or later)
- tree-sitter CLI

### Setup

```bash
npm install
```

### Generate Parser

```bash
npx tree-sitter generate
```

### Run Tests

```bash
npx tree-sitter test
```

## Language Bindings

This grammar provides bindings for the following languages:

- C
- Go
- Node.js
- Python
- Rust
- Swift

## License

Apache-2.0

## Author

Naoya Yamashita (conao3@gmail.com)
