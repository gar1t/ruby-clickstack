plugin_name = ruby-plugin
publish_repo = dev
publish_url = s3://cloudbees-clickstack/$(publish_repo)/

pkg_files = control functions LICENSE setup

include plugin.mk