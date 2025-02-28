package main

import "snippetbox.dawnnguyen-vn.net/internal/models"

type templateData struct {
	Snippet  *models.Snippet
	Snippets []*models.Snippet
}
