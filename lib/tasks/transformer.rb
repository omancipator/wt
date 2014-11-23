require 'uglifier'
class Transformer
  def compress(string)
    if Rails.env.development?
      output, sourcemap = Uglifier.new.compile_with_map(string)

      # write the sourcemap to a file somewhere under public

      sourcemap_comment = "//@ sourceMappingURL=#{sourcemap_path}}\n"

      return output + sourcemap_comment
    else
      Uglifier.compile(string)
    end
  end
end