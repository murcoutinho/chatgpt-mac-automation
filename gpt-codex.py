#!/usr/bin/env python3

import sys
import os
import openai
import json

def main():
    # Load your API key from an environment variable or secret management service
    openai.api_key = "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"
    if len(sys.argv) > 1:
        question = sys.argv[1]
        response = openai.Completion.create(
            model="code-davinci-002",
            prompt=question,
            temperature=0,
            max_tokens=512,
            top_p=1.0,
            frequency_penalty=0.0,
            presence_penalty=0.0,
            stop=["###"]
            )
        text = json.loads(json.dumps(response))['choices'][0]['text']
        print(text)
    else:
        print("No question was provided.")

if __name__ == '__main__':
    main()

# Create a function called 'nameImporter' to add a first and last name to the database
