# -*- coding: utf-8 -*-

# Copyright 2020 Julian Betz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Post-generation script to be run after the execution of all other cookiecutter
# processes.


import os
import shutil


if __name__ == "__main__":
    if os.stat("LICENSE").st_size == 0:
        os.remove("LICENSE")
    if os.stat(".travis.yml").st_size == 0:
        os.remove(".travis.yml")
    shutil.rmtree("templates")
