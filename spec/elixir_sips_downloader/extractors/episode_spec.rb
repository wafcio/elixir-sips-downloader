describe ElixirSipsDownloader::Extractors::Episode do
  subject(:episode_extractor) do
    ElixirSipsDownloader::Extractors::Episode.new files_extractor
  end

  let(:files_extractor) do
    instance_double(ElixirSipsDownloader::Extractors::Files, extract: files)
  end

  let(:files) do
    Set[
      ElixirSipsDownloader::Downloadables::File.new(
        'some-episode-file.html',
        'http://example.com/some-episode-file.html'),
      ElixirSipsDownloader::Downloadables::File.new(
        'some-episode-file.mp4',
        'http://example.com/some-episode-file.mp4'),
      ElixirSipsDownloader::Downloadables::File.new(
        'some-episode-file.rb',
        'http://example.com/some-episode-file.rb'),
    ]
  end

  it 'is an Extractor' do
    expect(episode_extractor).to be_a ElixirSipsDownloader::Extractor
  end

  describe '#extract' do
    subject(:episode) { episode_extractor.extract item }

    let(:item) do
      RSS::Parser.parse(File.open('spec/fixtures/feed.xml')).items.first
    end

    it 'uses Extractors::Files' do
      expect(files_extractor).to receive(:extract).with(item.description)
                                                  .and_return(files)
      episode_extractor.extract item
    end

    it 'returns an Episode' do
      expect(episode).to eq(
        ElixirSipsDownloader::Downloadables::Episode.new(
          '129 Some episode',
          'http://example.com/some-episode',
          files
        )
      )
    end

    it 'decodes HTML entities in title' do
      item.title = '120 class &lt;&lt; self'

      expect(episode.title).to eq('120 class << self')
    end
  end
end
