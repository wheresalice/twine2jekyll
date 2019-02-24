require 'twine2jekyll/version'

module Twine2jekyll
  class Error < StandardError; end
  def self.markdownify(content)
    r = /\[\[([^\]]+)\]\]/
    content.gsub!(r, '[\1](\1)')
    content = "---\nlayout: page\n---\n" + content
    content
  end

  def self.generate_layout(filename)
    content = <<EOF
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
</head>
<body>
<section>
{{ content }}
</section>
</body>
</html>
EOF
    File.write(filename, content)
  end
end
