

function _gh_nitul1991_ssh --description "Enable ssh for nitul1991 on Github"
    ssh-add -K ~/.ssh/github_ed25519_mac_mini && ssh-agent -s &
end
