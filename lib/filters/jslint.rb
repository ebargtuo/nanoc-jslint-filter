# encoding: utf-8

class JSLintFilter < Nanoc::Filter
  requires 'execjslint'

  identifier :jslint
  type :text

  def run(content, params={})

    result = JSLint.run(content)

    puts "jslint: #{item.identifier.chop}.#{item[:extension]}", result.error_messages unless result.error_messages.empty?

    # Don't raise an exception by default since JSLint warns a lot.
    if params[:strict]
        raise RuntimeError, "jslint: fatal error" unless result.valid?
    end

    # A textual filter should return the content (in our case unchanged).
    content
  end
end