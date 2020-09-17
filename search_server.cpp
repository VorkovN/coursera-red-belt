#include "search_server.h"
#include "iterator_range.h"

#include <algorithm>
#include <iterator>
#include <sstream>
#include <iostream>


vector<string> SplitIntoWords(const string &line) {
    istringstream words_input(line);
    return {istream_iterator<string>(words_input), istream_iterator<string>()};
}

SearchServer::SearchServer(istream &document_input) {
    UpdateDocumentBase(document_input);
}

void SearchServer::UpdateDocumentBase(istream &document_input) {
    InvertedIndex new_index;

    for (string current_document; getline(document_input, current_document);) {
        new_index.Add(current_document);
    }

    index = move(new_index);
}

void SearchServer::AddQueriesStream(istream &query_input, ostream &search_results_output) {


    for (string current_query; getline(query_input, current_query);) {
        const auto words = SplitIntoWords(current_query);

        vector<size_t> docid_count(50000, 0);
        set<size_t> docids;
        for (const auto &word : words) {
            for (const auto&[docid, hit_count] : index.Lookup(word)) {
                docid_count[docid] += hit_count;
                docids.insert(docid);
            }
        }

        int results_count = 5;
        vector<pair<size_t, size_t>> search_results(5, make_pair(0, 0));
        for (int i = 0; i < 5; ++i) {
            pair<size_t, size_t> &result = search_results[i];
            int kostylJ = 0;
            for (auto& doc: docids) {
                size_t &count = docid_count[doc];
                if (result.second < count) {
                    result = {doc, count};
                    kostylJ = doc;
                }
            }
            docid_count[kostylJ] = 0;
            if (result.second == 0) {
                results_count = i;
                break;
            }
        }


        search_results_output << current_query << ':';
        for (const auto&[docid, hitcount] : Head(search_results, results_count)) {
            search_results_output << " {"
                                  << "docid: " << docid << ", "
                                  << "hitcount: " << hitcount << '}';
        }
        search_results_output << endl;
    }
}

void InvertedIndex::Add(const string &document) {
    docs.push_back(document);

    const size_t docid = docs.size() - 1;
    for (const auto &word : SplitIntoWords(document)) {
        index[word][docid]++;
    }
}

map<size_t, size_t> InvertedIndex::Lookup(const string &word) const {
    auto it = index.find(word);
    if (it != index.end())
        return it->second;
    return {};

}