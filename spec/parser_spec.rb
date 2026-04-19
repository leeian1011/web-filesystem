require "parser"

describe Parser do
  describe ".parse" do
    context "given a string" do
      it "attempts to parse the HTTP request standard and returns a model containing the HTTP method and path" do
        expect(Parser.parse("GET /file HTTP1.1")).to eq({method: "GET", path: "/file"})
        expect(Parser.parse("POST /file/test.rb HTTP1.1")).to eq({method: "POST", path: "/file/test.rb"})
        expect(Parser.parse("PUT /directory/new_dir HTTP1.1")).to eq({method: "PUT", path: "/directory/new_dir"})
        expect(Parser.parse("DELETE /directory/this_file HTTP1.1")).to eq({method: "DELETE", path: "/directory/this_file"})
      end
    end
  end
end
