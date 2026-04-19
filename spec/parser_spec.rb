require "parser"

describe Parser do
  describe ".parse" do
    context "given a string" do
      it "attempts to parse the HTTP request standard and returns a model containing the HTTP method and path" do
        expect(Parser.parse("GET /file HTTP1.1")).to eq({method: "GET", path: "/file"})
      end
    end
  end
end
