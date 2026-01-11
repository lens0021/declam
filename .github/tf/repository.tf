import {
  id = "declam"
  to = github_repository.this
}

resource "github_repository" "this" {
  allow_auto_merge                        = false
  allow_merge_commit                      = false
  allow_rebase_merge                      = true
  allow_squash_merge                      = false
  allow_update_branch                     = true
  archived                                = false
  archive_on_destroy                      = true
  auto_init                               = false
  delete_branch_on_merge                  = true
  description                             = ""
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = false
  has_wiki                                = false
  homepage_url                            = ""
  name                                    = "declam"
  squash_merge_commit_message             = "COMMIT_MESSAGES"
  squash_merge_commit_title               = "COMMIT_OR_PR_TITLE"
  topics                                  = []
  visibility                              = "public"
  vulnerability_alerts                    = false
  web_commit_signoff_required             = false

  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}
