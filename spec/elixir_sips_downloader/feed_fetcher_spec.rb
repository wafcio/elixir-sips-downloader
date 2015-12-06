describe ElixirSipsDownloader::FeedFetcher do
  subject(:feed_fetcher) do
    ElixirSipsDownloader::FeedFetcher.new agent, email, password
  end

  let(:agent)    { instance_double Mechanize }
  let(:email)    { 'person@example.com' }
  let(:password) { 'chuncky bacon' }

  describe '#fetch' do
    subject(:fetched_feed) { feed_fetcher.fetch }

    let(:feed_string)  { instance_double String }
    let(:feed)         { instance_double RSS::Rss }
    let(:feed_page)    { instance_double(Mechanize::Page, body: feed_string) }
    let(:nokogiri_xml) { instance_double Nokogiri::XML::Document, to_xml: feed_string }


    it 'fetches feed' do
      expect(agent).to receive(:add_auth)
                       .with(
                         ElixirSipsDownloader::Config.urls[:feed],
                         email,
                         password
                       )

      expect(agent).to receive(:get)
                       .with(ElixirSipsDownloader::Config.urls[:feed])
                       .and_return(feed_page)

      expect(Nokogiri).to receive(:XML).with(feed_string).and_return(nokogiri_xml)

      expect(RSS::Parser).to receive(:parse).with(feed_string).and_return(feed)

      expect(fetched_feed).to eq(feed)
    end
  end
end
