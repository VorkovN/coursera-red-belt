#include "search_server.h"
#include "iterator_range.h"

#include <algorithm>
#include <iterator>
#include <sstream>
#include <iostream>
#include <numeric>


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

    const auto& documents = index.GetDocument();
    vector<size_t> docid_count(documents.size());
    vector <int64_t> docids(documents.size());
    for (string current_query; getline(query_input, current_query);) {
        const auto words = SplitIntoWords(current_query);



        for (const auto &word : words) {
            for (const auto&[docid, hit_count] : index.Lookup(word)) {
                docid_count[docid] += hit_count;

            }
        }

        iota(docids.begin(), docids.end(), 0);
        {
            partial_sort(
                    begin(docids),
                    Head(docids, 5).end(),
                    end(docids),
                    [&docid_count](int64_t lhs, int64_t rhs) {
                        return pair(docid_count[lhs], -lhs) > pair(docid_count[rhs], -rhs);
                    }
            );
        }


        search_results_output << current_query << ':';
        for (size_t docid : Head(docids, 5)) {
            const size_t hit_count = docid_count[docid];
            if (hit_count == 0) {
                break;
            }

            search_results_output << " {"
                                  << "docid: " << docid << ", "
                                  << "hitcount: " << hit_count << '}';
        }
        search_results_output << '\n';
        fill(docid_count.begin(), docid_count.end(), 0);
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