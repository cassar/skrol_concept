# Skroll Language App

This is the Skroll Language App for language acquisition.

# Issues

1. Find out how to test for Sentences table and layout and links so we can develope languages section, investigate sample app integration tests.

2. Don't know why the split method is causing a break if it is working correctly.  

  1) Error:
    StaticPagesControllerTest#test_should_get_phonetic_alphabet:
    NoMethodError: undefined method `split' for nil:NilClass
    app/helpers/static_pages_helper.rb:45:in `phonetic_sentence_translate'
    app/controllers/static_pages_controller.rb:13:in `block in english'
    app/controllers/static_pages_controller.rb:11:in `english'
    test/controllers/static_pages_controller_test.rb:11:in `block in <class:StaticPagesControllerTest>'

