# Copyright 2022 NEC Corporation#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import json
import os
import requests

file_name = "./event_collection_settings.json"

# def fetch_settings():


def create_file(settings):
    with open(file_name, "x") as f:
        update = json.dump(settings, f)


def remove_file():
    os.remove(file_name)


def get_settings():
    try:
        with open(file_name, "r") as f:
            settings = json.load(f)
            return settings
    except FileNotFoundError:
        return False