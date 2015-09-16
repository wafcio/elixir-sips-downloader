# The contract for Downloadables.
class ElixirSipsDownloader::Downloadable
  # Should be implemented by children.
  def download(_basepath, _agent)
    fail NotImplementedError
  end
end
