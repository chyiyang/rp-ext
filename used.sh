#!/usr/bin/env bash

WORK_PATH=${1-.}

if [ ! -e "${WORK_PATH}/ext-manager.sh" ]; then
  echo "请在 redpill-load 下执行该脚本, 或者传入 redpill-load 路径"
  exit 1
fi

sed -i 's/mrp_validate_platform_id()/mrp_validate_platform_id_bak()/'                                                                                                                         ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_validate_platform_id_bak()/i\mrp_validate_platform_id()'                                                                                                                         ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_validate_platform_id_bak()/i\{'                                                                                                                                                  ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_validate_platform_id_bak()/i\  return 0'                                                                                                                                         ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_validate_platform_id_bak()/i\}'                                                                                                                                                  ${WORK_PATH}/ext-manager.sh

sed -i 's/mrp_fetch_new_ext_recipe()/mrp_fetch_new_ext_recipe_bak()/'                                                                                                                         ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\mrp_fetch_new_ext_recipe()'                                                                                                                         ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\{'                                                                                                                                                  ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  pr_dbg "Fetching new recipe for extension %s and platform %s" "${1}" "${2}"'                                                                      ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  if ! mrp_validate_platform_id "${2}"; then '                                                                                                      ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    pr_err "Platform ID %s is not valid" "${2}"'                                                                                                    ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    return 1'                                                                                                                                       ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  fi'                                                                                                                                               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  local index_file;'                                                                                                                                ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  index_file=$(mrp_get_existing_index_file "${1}")'                                                                                                 ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  if [ $? -ne 0 ]; then'                                                                                                                            ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    pr_err "Failed to load index file for extension %s - see errors above for details" "${1}"'                                                      ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    return 1'                                                                                                                                       ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  fi'                                                                                                                                               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  local recipe_url;'                                                                                                                                ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  recipe_url=$(brp_json_get_field "${index_file}" "releases.\\\"${2}\\\"" 1)'                                                                       ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  if [[ $? -ne 0 ]] || [[ "${recipe_url}" == "null" ]]; then'                                                                                       ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    pr_warn "Failed to get recipe for %s try fallback to \"${BRP_PLATFORM_KERNELVERSION}\"" "${2}"'                                                 ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    recipe_url=$(brp_json_get_field "${index_file}" "releases.\\\"${BRP_PLATFORM_KERNELVERSION}\\\"" 1)'                                            ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    if [[ $? -ne 0 ]] || [[ "${recipe_url}" == "null" ]]; then'                                                                                     ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\      pr_warn "Failed to get recipe for %s try fallback to \"_\"" "${2}"'                                                                           ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\      recipe_url=$(brp_json_get_field "${index_file}" "releases.\\\"_\\\"" 1)'                                                                      ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\      if [[ $? -ne 0 ]] || [[ "${recipe_url}" == "null" ]]; then'                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        pr_err "The extension %s was found. However, the extension index has no recipe for %s platform. It may not be" "${1}" "${2}"'               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        pr_err "supported on that platform, or author did not updated it for that platform yet. You can try running"'                               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        pr_err "\"%s update\" to refresh indexes for all extensions manually. Below are the currently known information about" "${MRP_SRC_NAME}"'   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        pr_err "the extension stored locally:"'                                                                                                     ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        mrp_show_ext_info "${1}"'                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\        return 1'                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\      fi'                                                                                                                                           ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\    fi'                                                                                                                                             ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  fi'                                                                                                                                               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  local mrp_tmp_rcp="${RPT_EXTS_DIR}/_ext_new_rcp.tmp_json"'                                                                                        ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  rm "${mrp_tmp_rcp}" &> /dev/null'                                                                                                                 ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  rpt_download_remote "${recipe_url}" "${mrp_tmp_rcp}" 1'                                                                                           ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  brp_json_validate "${mrp_tmp_rcp}" # validate JSON *file*, not its format/semantic'                                                               ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\'                                                                                                                                                   ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\  echo "${mrp_tmp_rcp}"'                                                                                                                            ${WORK_PATH}/ext-manager.sh
sed -i '/mrp_fetch_new_ext_recipe_bak()/i\}'                                                                                                                                                  ${WORK_PATH}/ext-manager.sh

exit 0