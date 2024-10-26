package tree_sitter_conao3_bash_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_conao3_bash "github.com/tree-sitter-conao3-bash/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_conao3_bash.Language())
	if language == nil {
		t.Errorf("Error loading Conao3Bash grammar")
	}
}
