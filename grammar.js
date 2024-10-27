/**
 * @file Conao3Bash grammar for tree-sitter
 * @author Naoya Yamashita <conao3@gmail.com>
 * @license Apache-2.0
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "conao3_bash",

  rules: {
    source_file: $ => repeat($._form),

    _form: $ => choice(
      $.list,
      $.vector,
      $.map,
      $.set,

      $.string,
      $.number,
      $.symbol,
      $.character,
      $.nil,
      $.boolean,
      $.keyword,
    ),

    list: $ => seq("(", repeat($._form), ")"),
    vector: $ => seq("[", repeat($._form), "]"),
    map: $ => seq("{", repeat(seq($._form, $._form)), "}"),
    set: $ => seq("#{", repeat($._form), "}"),

    string: $ => /"[^"]*"/,
    number: $ => token(seq(/[+-]?/, choice(/\d+/, /\d*\.\d+/))),
    symbol: $ => /\w+/,
    character: $ => /\\./,
    nil: $ => "nil",
    boolean: $ => choice("true", "false"),
    keyword: $ => /:\w+/,
  },
});
