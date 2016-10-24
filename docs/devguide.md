Developer Guide
---------------

### Making your first patch

0. Make sure you've signed the CLA
1. Clone the repo

    ```shell
    git clone http://github.com/tableau/document-api-python
    ```

2. Run the tests to make sure everything is peachy

    ```shell
    python setup.py test
    ```

3. Set up the feature, fix, or documentation branch.  
It is recommended to use the format [issue#]-[type]-[description] (e.g. 13-fix-connection-bug)

    ```shell
    git checkout -b 13-feature-new-stuff
    ```

4. Code and Commit!  
    Here's a quick checklist for ensuring a good diff:
    - The diff touches the minimal amount of files possible while still fufilling the purpose of the diff
    - The diff uses Unix line endings
    - The diff adheres to our PEP8 style guides. If you've cloned the repo you can run `pycodestyle .`
5. Add Tests  
6. Update Documentation  
    Our documentation is written in markdown and built with [Mkdocs](http://www.mkdocs.org). More information on how to update and build the docs can be found [here](#updating-documentation)
7. Run the tests again and make sure they pass!
8. Submit to your fork
9. Submit a PR
10. Wait for a review, and address any feedback.

### Updating Documentation

### Running Tests
