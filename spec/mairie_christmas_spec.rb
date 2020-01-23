require_relative '../lib/mairie_christmas'


describe " get the townhall email" do
    it "should return the email when we put the url" do
      expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to eq("mairie.avernes@orange.fr")
    end
end