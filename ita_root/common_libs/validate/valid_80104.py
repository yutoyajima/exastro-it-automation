# Copyright 2023 NEC Corporation#
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


def external_valid_menu_before(objdbca, objtable, option):
    retBool = True
    msg = ''
    orchestra_id = 4  # Terraform-Cloud/EP オーケストレータID

    # バックヤード起動フラグ設定

    # 入力値取得
    # entry_parameter = option.get('entry_parameter').get('parameter')
    # current_parameter = option.get('current_parameter').get('parameter')
    cmd_type = option.get("cmd_type")

    if cmd_type == "Register":
        option["entry_parameter"]["parameter"]["orchestrator"] = orchestra_id

    return retBool, msg, option,